`timescale 1ns / 1ps
`include "CommonDefinitions.vh"


module ComputeCore(clk, rst, 
          address_ext, bram_sel, dina_ext, doutb_ext, wea_ext, // send64() and receive64() testing interface to software
					command_in, command_we,                              // current instruction to execute
					done_ins_computation,                                // instruction computation finished
					grant_ext_io,                                        // grant BRAM access to send64/receive64 or to DMA
          dma_bram_byte_wea, dma_bram_abs_addr, dina_dma, doutb_dma, dma_bram_en // DMA interface
					);

//////////////////////////// Config Start //////////////////////////////////
// Set this to 1 for generating FFT twiddle factors on the fly
// Set this to 0 for using stored FFT twiddle factors
localparam FFT_ON_THE_FLY_GENERATION = 0;

// Set this to 1 to instantiate read and write logic for each BRAM.
// This is used for testing purposes. All tests for intermediate results
// needs this to be set to 1.
localparam PROVIDE_DEBUG_IO = 1;
//////////////////////////// Config End ////////////////////////////////////


//////////////////////// Constants in our design ///////////////////////////
localparam BRAM_RD_LAT = 2;

localparam N = 8192;
localparam LOGN = 13;
localparam FLP_WORDSIZE = `OVERALL_BITS;

localparam LOGQ = 54; // max bit-width of moduli
localparam W = 24;    // word size
localparam M = 17;    // bit-width of q_m


//////////////////// BRAM IDs: They must match with software ///////////////
// BRAM names according to paper are in comments
localparam FFT_BRAM_ID        = 3'd0; // "Complex BRAM"
localparam NTT_MSG_BRAM_ID    = 3'd1; // "Modular Ring BRAM 0"
localparam NTT_E1_BRAM_ID     = 3'd2; // "Modular Ring BRAM 1"
localparam NTT_V_BRAM_ID      = 3'd3; // "Modular Ring BRAM 2"
localparam ERROR_BRAM_ID      = 3'd4; // "Error Poly BRAM"
localparam NTT_KEY_BRAM_ID    = 3'd5; // "Modular Ring BRAM 3"
localparam FFT_BRAM_EXPAND_ID = 3'd6; // Complex BRAM with expand when writing to it
localparam FFT_IM_BRAM_ID     = 3'd7; // "Imag BRAM" (imaginary parts of complex BRAM)

// BRAM IDs for DMA:
localparam DMA_MSG_BRAM_ID = 2'd0;
localparam DMA_KEY_BRAM_ID = 2'd1;
localparam DMA_V_BRAM_ID   = 2'd2;
localparam DMA_FFT_BRAM_ID = 2'd3;



input clk, rst; 
input [13:0] address_ext;
input [2:0] bram_sel;
input [63:0] dina_ext;
input wea_ext;

input [39:0] command_in;
input command_we, grant_ext_io;
output [63:0] doutb_ext;
output done_ins_computation; // This becomes 1 when the instruction has finished. 

input [7:0] dma_bram_byte_wea;
input [17:0] dma_bram_abs_addr;
input [63:0] dina_dma;
output [63:0] doutb_dma;
input dma_bram_en;

// DMA signals:
wire wea_dma;
assign wea_dma = (dma_bram_byte_wea == 8'hff) && dma_bram_en;
wire [1:0] dma_bram_sel;
assign dma_bram_sel = dma_bram_abs_addr[17:16];
wire [LOGN-1:0] dma_rdwr_addr;
assign dma_rdwr_addr = dma_bram_abs_addr[15:3];
wire grant_ext;
assign grant_ext = PROVIDE_DEBUG_IO ? grant_ext_io : 1'd0;


// command register:
reg [39:0] command_reg;
wire [2:0] opcode;
wire [9:0] OP1, OP2, OP3;
wire [6:0] OP4;

always @(posedge clk) begin
  if(rst)
    command_reg <= 40'd0;
	else if(command_we)
		command_reg <= command_in;
	else
	  command_reg <= command_reg;	
end

// reset signals and instruction decoding:
assign {OP4, OP3, OP2, OP1, opcode} = command_reg;	

wire transform_rst, transformation_done;
wire rns_rst, rns_done;
wire i2f_rst, i2f_done;
wire pwm_rst, pwm_done;
wire prj_rst, prj_done;
assign prj_rst       = opcode==3'd5 ? 1'b0 : 1'b1;
assign pwm_rst       = opcode==3'd4 ? 1'b0 : 1'b1;
assign i2f_rst       = opcode==3'd3 ? 1'b0 : 1'b1;
assign rns_rst       = opcode==3'd2 ? 1'b0 : 1'b1;
assign transform_rst = opcode==3'd1 ? 1'b0 : 1'b1;
// transform parameters general:
wire do_fft, is_dif;
assign is_dif = OP1[0];
assign do_fft = OP1[1];
// transform parameters ntt & i2f:
wire [3:0] current_k;
wire [M-1:0] qm;
wire [2:0] constants_sel;
assign current_k = OP1[5:2];
assign constants_sel = OP1[8:6];
assign qm = {OP3[6:0], OP2};
// rns parameters:
wire [3:0] modulus_select;
assign modulus_select = OP1[9:6];
wire [`EXPONENT_BITS:0] scale;
assign scale = {OP4, OP1[1:0], OP3[9:7]};
// i2f parameter:
wire [`EXPONENT_BITS:0] scale_i2f;
assign scale_i2f = {{3{scale[8]}}, scale[8:0]};
// random sampling signals:
wire random_sampling_rst;
wire random_sampling_done;
wire [63:0] random_sampling_seed;
wire sample_errors; // true: sample e0, e1, v; false: sample pk1
assign random_sampling_rst = (do_fft && is_dif) || (~do_fft && ~is_dif) ? transform_rst : 1'd1;
assign random_sampling_seed = dina_ext;
assign sample_errors = do_fft;

assign done_ins_computation = transformation_done | rns_done | i2f_done | pwm_done | prj_done;

/******************** HW-SW interfaces ***************/

// Interface to Software for send64 and receive64 functions
// This is for testing only and will not be used when PROVIDE_DEBUG_IO == 0
wire [13:0] ext_rdwr_addr; 
assign ext_rdwr_addr = address_ext;

wire fft_ext_wea;
assign fft_ext_wea = wea_ext && ext_rdwr_addr[0] == 1 && (bram_sel == FFT_BRAM_ID || bram_sel == FFT_BRAM_EXPAND_ID);
wire do_expand;
assign do_expand = bram_sel == FFT_BRAM_EXPAND_ID;
wire fft_im_ext_wea;
assign fft_im_ext_wea = wea_ext && bram_sel == FFT_IM_BRAM_ID;

wire ntt_m_ext_wea_bank0, ntt_m_ext_wea_bank1;
assign ntt_m_ext_wea_bank0 = wea_ext && ext_rdwr_addr[0] == 0 && bram_sel == NTT_MSG_BRAM_ID;
assign ntt_m_ext_wea_bank1 = wea_ext && ext_rdwr_addr[0] == 1 && bram_sel == NTT_MSG_BRAM_ID;

wire ntt_v_ext_wea_bank0, ntt_v_ext_wea_bank1;
assign ntt_v_ext_wea_bank0 = wea_ext && ext_rdwr_addr[0] == 0 && bram_sel == NTT_V_BRAM_ID;
assign ntt_v_ext_wea_bank1 = wea_ext && ext_rdwr_addr[0] == 1 && bram_sel == NTT_V_BRAM_ID;

wire ntt_e1_ext_wea_bank0, ntt_e1_ext_wea_bank1;
assign ntt_e1_ext_wea_bank0 = wea_ext && ext_rdwr_addr[0] == 0 && bram_sel == NTT_E1_BRAM_ID;
assign ntt_e1_ext_wea_bank1 = wea_ext && ext_rdwr_addr[0] == 1 && bram_sel == NTT_E1_BRAM_ID;

wire ntt_key_ext_wea_bank0, ntt_key_ext_wea_bank1;
assign ntt_key_ext_wea_bank0 = wea_ext && ext_rdwr_addr[0] == 0 && bram_sel == NTT_KEY_BRAM_ID;
assign ntt_key_ext_wea_bank1 = wea_ext && ext_rdwr_addr[0] == 1 && bram_sel == NTT_KEY_BRAM_ID;

reg [FLP_WORDSIZE-1:0] real_part;
always @(posedge clk) begin
  if(wea_ext && ext_rdwr_addr[0] == 0)
    real_part <= dina_ext;
end

// Interface to DMA:
wire fft_dma_wea;
assign fft_dma_wea = wea_dma && dma_rdwr_addr[0] == 1 && dma_bram_sel == DMA_FFT_BRAM_ID;

wire ntt_m_dma_wea_bank0, ntt_m_dma_wea_bank1;
assign ntt_m_dma_wea_bank0 = wea_dma && dma_rdwr_addr[0] == 0 && dma_bram_sel == DMA_MSG_BRAM_ID;
assign ntt_m_dma_wea_bank1 = wea_dma && dma_rdwr_addr[0] == 1 && dma_bram_sel == DMA_MSG_BRAM_ID;

wire ntt_key_dma_wea_bank0, ntt_key_dma_wea_bank1;
assign ntt_key_dma_wea_bank0 = wea_dma && dma_rdwr_addr[0] == 0 && dma_bram_sel == DMA_KEY_BRAM_ID;
assign ntt_key_dma_wea_bank1 = wea_dma && dma_rdwr_addr[0] == 1 && dma_bram_sel == DMA_KEY_BRAM_ID;

wire ntt_v_dma_wea_bank0, ntt_v_ext_dma_bank1;
assign ntt_v_dma_wea_bank0 = wea_dma && dma_rdwr_addr[0] == 0 && dma_bram_sel == DMA_V_BRAM_ID;
assign ntt_v_dma_wea_bank1 = wea_dma && dma_rdwr_addr[0] == 1 && dma_bram_sel == DMA_V_BRAM_ID;

reg [FLP_WORDSIZE-1:0] real_part_dma;
always @(posedge clk) begin
  if(wea_dma && dma_rdwr_addr[0] == 0)
    real_part_dma <= dina_dma;
end


/******************** BRAMs and Local Data Bus ***************/


// FFT BRAMs: "Complex BRAM" and "Imag BRAM"
wire [LOGN-2:0] fft_write_addr_bank0, fft_write_addr_bank1;
wire [LOGN-2:0] ext_write_addr_bank0, ext_write_addr_bank1;
wire [LOGN-2:0] i2f_write_addr_bank0, i2f_write_addr_bank1;
wire [LOGN-2:0] fft_read_addr_bank0, fft_read_addr_bank1;
wire [2*FLP_WORDSIZE-1:0] fft_wr_data_bank0, fft_wr_data_bank1;
wire [2*FLP_WORDSIZE-1:0] ext_wr_data_bank0, ext_wr_data_bank1;
wire [2*FLP_WORDSIZE-1:0] i2f_wr_data_bank0, i2f_wr_data_bank1;
wire [2*FLP_WORDSIZE-1:0] fft_rd_data_bank0, fft_rd_data_bank1;
wire fft_wea_bank0, fft_wea_bank1;
wire i2f_wea_bank0, i2f_wea_bank1;
wire fft_ext_wea_bank0, fft_ext_wea_bank1;

wire [LOGN-1:0] pwm_b_rd_addr;
wire [LOGN-1:0] rns_read_addr;
wire [FLP_WORDSIZE-1:0] rns_read_data;
wire [LOGQ-1:0] fft_im_rd_data;

wire [LOGN-2:0] prj_write_addr, prj_read_addr;
wire [2*FLP_WORDSIZE-1:0] prj_wr_data;
wire prj_wea_bank0, prj_wea_bank1;

wire [LOGN-1:0] fft_im_wr_addr;
wire [LOGQ-1:0] fft_im_wr_data;
wire fft_im_wea;
SharedFFTBrams #(
    .LOGN(LOGN),
    .LOGQ(LOGQ),
    .FLP_WORDSIZE(FLP_WORDSIZE),
    .BRAM_RD_LAT(BRAM_RD_LAT)
  ) fft_bram (
    .clk(clk),
    .is_fft(~pwm_rst || ~rns_rst || (~transform_rst & ~do_fft) || bram_sel == FFT_IM_BRAM_ID ? 1'd0 : 1'd1),

    // FFT Bank 0: (Complex BRAM)
    .fft_rd_addr_bank0((~transform_rst) ? fft_read_addr_bank0  : (~prj_rst) ? prj_read_addr  : (grant_ext ? ext_rdwr_addr[13:2]  : {1'd1, dma_rdwr_addr[12:2]})),
    .fft_wr_addr_bank0((~transform_rst) ? fft_write_addr_bank0 : (~prj_rst) ? prj_write_addr : (~i2f_rst) ? i2f_write_addr_bank0 : ext_write_addr_bank0), 
    .fft_rd_data_bank0(fft_rd_data_bank0), 
    .fft_wr_data_bank0((~transform_rst) ? fft_wr_data_bank0    : (~prj_rst) ? prj_wr_data    : (~i2f_rst) ? i2f_wr_data_bank0    : ext_wr_data_bank0), 
    .fft_wea_bank0(    (~transform_rst) ? fft_wea_bank0        : (~prj_rst) ? prj_wea_bank0  : (~i2f_rst) ? i2f_wea_bank0        : fft_ext_wea_bank0),
    
    // FFT Bank 1: (Complex BRAM)
    .fft_rd_addr_bank1((~transform_rst) ? fft_read_addr_bank1  : (~prj_rst) ? prj_read_addr  : (grant_ext ? ext_rdwr_addr[13:2]  : {1'd1, dma_rdwr_addr[12:2]})), 
    .fft_wr_addr_bank1((~transform_rst) ? fft_write_addr_bank1 : (~prj_rst) ? prj_write_addr : (~i2f_rst) ? i2f_write_addr_bank1 : ext_write_addr_bank1),
    .fft_rd_data_bank1(fft_rd_data_bank1), 
    .fft_wr_data_bank1((~transform_rst) ? fft_wr_data_bank1    : (~prj_rst) ? prj_wr_data    : (~i2f_rst) ? i2f_wr_data_bank1    : ext_wr_data_bank1),
    .fft_wea_bank1(    (~transform_rst) ? fft_wea_bank1        : (~prj_rst) ? prj_wea_bank1  : (~i2f_rst) ? i2f_wea_bank1        : fft_ext_wea_bank1),

    // RNS port: (Complex BRAM)
    .rns_rd_addr(rns_read_addr),
    .rns_rd_data(rns_read_data), 
    
    // Key port: (Imag BRAM)
    .key_rd_addr((~pwm_rst             || !PROVIDE_DEBUG_IO) ? pwm_b_rd_addr  : ext_rdwr_addr[LOGN-1:0]), 
    .key_wr_addr((~random_sampling_rst || !PROVIDE_DEBUG_IO) ? fft_im_wr_addr : ext_rdwr_addr[LOGN-1:0]),
    .key_rd_data(fft_im_rd_data), 
    .key_wr_data((~random_sampling_rst || !PROVIDE_DEBUG_IO) ? fft_im_wr_data : dina_ext[LOGQ-1:0]),
    .key_wea(    (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? fft_im_wea     : fft_im_ext_wea)
  );

// Expand and Project modules operating on FFT BRAM (Complex BRAM)
Expand #(.LOGN(LOGN)) expand (
    .clk(clk), 
    .rst(rst),
    .do_expand(grant_ext ? do_expand : 1'd1),
    
    .addr_from_sw(grant_ext ? ext_rdwr_addr[13:1]   : {1'd0, dma_rdwr_addr[LOGN-1:1]}),
    .data_from_sw(grant_ext ? {real_part, dina_ext} : {real_part_dma, dina_dma}),
    .wea_from_sw( grant_ext ? fft_ext_wea : fft_dma_wea),

    .wr_addr_bank0(ext_write_addr_bank0),
    .wr_data_bank0(ext_wr_data_bank0),
    .wea_bank0(fft_ext_wea_bank0),
    .wr_addr_bank1(ext_write_addr_bank1),
    .wr_data_bank1(ext_wr_data_bank1),
    .wea_bank1(fft_ext_wea_bank1)
  );

Project #(
    .LOGN(LOGN),
    .FLP_WORDSIZE(FLP_WORDSIZE),
    .BRAM_RD_LAT(BRAM_RD_LAT)
  ) project (
    .clk(clk),
    .rst(prj_rst),

    .fft_rd_addr(prj_read_addr),
    .fft_wr_addr(prj_write_addr),
    .fft_bank0_wea(prj_wea_bank0),
    .fft_bank1_wea(prj_wea_bank1),
    .fft_bank0_rd_data(fft_rd_data_bank0),
    .fft_bank1_rd_data(fft_rd_data_bank1),
    .fft_wr_data(prj_wr_data),

    .done(prj_done)
  );

// NTT BRAMs Message (Modular Ring BRAM 0):
wire [LOGN-2:0] ntt_m_write_addr_bank0, ntt_m_write_addr_bank1;
wire [LOGN-2:0] ntt_m_read_addr_bank0, ntt_m_read_addr_bank1;
wire [LOGN-2:0] rns_m_write_addr_bank0, rns_m_write_addr_bank1;
wire [LOGN-2:0] pwm_m_read_addr_bank0, pwm_m_read_addr_bank1;
wire [LOGN-2:0] pwm_m_write_addr_bank0, pwm_m_write_addr_bank1;
wire [LOGN-2:0] i2f_m_read_addr_bank0, i2f_m_read_addr_bank1;
wire [LOGQ-1:0] ntt_m_wr_data_bank0, ntt_m_wr_data_bank1;
wire [LOGQ-1:0] rns_m_wr_data_bank0, rns_m_wr_data_bank1;
wire [LOGQ-1:0] ntt_m_rd_data_bank0, ntt_m_rd_data_bank1;
wire [LOGQ-1:0] pwm_m_wr_data_bank0, pwm_m_wr_data_bank1;
wire pwm_m_wea_bank0, pwm_m_wea_bank1;
wire ntt_m_wea_bank0, ntt_m_wea_bank1;
wire rns_m_wea_bank0, rns_m_wea_bank1;
NTTPolyBank ntt_msg_bank0(
    .clka(clk), 
    .clkb(clk), 
    .addra(~transform_rst ? ntt_m_write_addr_bank0 : (~rns_rst ? rns_m_write_addr_bank0 : (~pwm_rst ? pwm_m_write_addr_bank0 : (grant_ext ? ext_rdwr_addr[12:1] : dma_rdwr_addr[12:1])))),
    .addrb(~transform_rst ? ntt_m_read_addr_bank0  : (~pwm_rst ? pwm_m_read_addr_bank0  : (~i2f_rst ? i2f_m_read_addr_bank0  : (grant_ext ? ext_rdwr_addr[12:1] : dma_rdwr_addr[12:1])))), 
    .dina( ~transform_rst ? ntt_m_wr_data_bank0    : (~rns_rst ? rns_m_wr_data_bank0    : (~pwm_rst ? pwm_m_wr_data_bank0    : (grant_ext ? dina_ext[LOGQ-1:0]  : dina_dma[LOGQ-1:0])))), 
    .doutb(ntt_m_rd_data_bank0), 
    .wea(  ~transform_rst ? ntt_m_wea_bank0        : (~rns_rst ? rns_m_wea_bank0        : (~pwm_rst ? pwm_m_wea_bank0        : (grant_ext ? ntt_m_ext_wea_bank0 : ntt_m_dma_wea_bank0))))
    );
NTTPolyBank ntt_msg_bank1(
    .clka(clk), 
    .clkb(clk), 
    .addra(~transform_rst ? ntt_m_write_addr_bank1 : (~rns_rst ? rns_m_write_addr_bank1 : (~pwm_rst ? pwm_m_write_addr_bank1 : (grant_ext ? ext_rdwr_addr[12:1] : dma_rdwr_addr[12:1])))), 
    .addrb(~transform_rst ? ntt_m_read_addr_bank1  : (~pwm_rst ? pwm_m_read_addr_bank1  : (~i2f_rst ? i2f_m_read_addr_bank1  : (grant_ext ? ext_rdwr_addr[12:1] : dma_rdwr_addr[12:1])))), 
    .dina( ~transform_rst ? ntt_m_wr_data_bank1    : (~rns_rst ? rns_m_wr_data_bank1    : (~pwm_rst ? pwm_m_wr_data_bank1    : (grant_ext ? dina_ext[LOGQ-1:0]  : dina_dma[LOGQ-1:0])))), 
    .doutb(ntt_m_rd_data_bank1), 
    .wea(  ~transform_rst ? ntt_m_wea_bank1        : (~rns_rst ? rns_m_wea_bank1        : (~pwm_rst ? pwm_m_wea_bank1        : (grant_ext ? ntt_m_ext_wea_bank1 : ntt_m_dma_wea_bank1))))
    );


// NTT BRAMs v (Modular Ring BRAM 2):
wire [LOGN-2:0] ntt_v_write_addr_bank0, ntt_v_write_addr_bank1;
wire [LOGN-2:0] ntt_v_read_addr_bank0, ntt_v_read_addr_bank1;
wire [LOGN-2:0] pwm_v_read_addr_bank0, pwm_v_read_addr_bank1;
wire [LOGN-2:0] rns_v_write_addr_bank0, rns_v_write_addr_bank1;
wire [LOGQ-1:0] ntt_v_wr_data_bank0, ntt_v_wr_data_bank1;
wire [LOGQ-1:0] rns_v_wr_data_bank0, rns_v_wr_data_bank1;
wire [LOGQ-1:0] ntt_v_rd_data_bank0, ntt_v_rd_data_bank1;
wire ntt_v_wea_bank0, ntt_v_wea_bank1;
wire rns_v_wea_bank0, rns_v_wea_bank1;
NTTPolyBank ntt_v_bank0(
    .clka(clk), 
    .clkb(clk), 
    .addra(~transform_rst ? ntt_v_write_addr_bank0 : (~rns_rst ? rns_v_write_addr_bank0 : (grant_ext ? ext_rdwr_addr[12:1] : dma_rdwr_addr[12:1]))),
    .addrb(~transform_rst ? ntt_v_read_addr_bank0  : (~pwm_rst ? pwm_v_read_addr_bank0  : (grant_ext ? ext_rdwr_addr[12:1] : dma_rdwr_addr[12:1]))), 
    .dina( ~transform_rst ? ntt_v_wr_data_bank0    : (~rns_rst ? rns_v_wr_data_bank0    : (grant_ext ? dina_ext[LOGQ-1:0]  : dina_dma[LOGQ-1:0]))), 
    .doutb(ntt_v_rd_data_bank0), 
    .wea(  ~transform_rst ? ntt_v_wea_bank0        : (~rns_rst ? rns_v_wea_bank0        : (grant_ext ? ntt_v_ext_wea_bank0 : ntt_v_dma_wea_bank0)))
    );
NTTPolyBank ntt_v_bank1(
    .clka(clk), 
    .clkb(clk), 
    .addra(~transform_rst ? ntt_v_write_addr_bank1 : (~rns_rst ? rns_v_write_addr_bank1 : (grant_ext ? ext_rdwr_addr[12:1] : dma_rdwr_addr[12:1]))),
    .addrb(~transform_rst ? ntt_v_read_addr_bank1  : (~pwm_rst ? pwm_v_read_addr_bank1  : (grant_ext ? ext_rdwr_addr[12:1] : dma_rdwr_addr[12:1]))), 
    .dina( ~transform_rst ? ntt_v_wr_data_bank1    : (~rns_rst ? rns_v_wr_data_bank1    : (grant_ext ? dina_ext[LOGQ-1:0]  : dina_dma[LOGQ-1:0]))), 
    .doutb(ntt_v_rd_data_bank1), 
    .wea(  ~transform_rst ? ntt_v_wea_bank1        : (~rns_rst ? rns_v_wea_bank1        : (grant_ext ? ntt_v_ext_wea_bank1 : ntt_v_dma_wea_bank1)))
    );


// NTT BRAMs e1 (Modular Ring BRAM 1):
wire [LOGN-2:0] ntt_e1_write_addr_bank0, ntt_e1_write_addr_bank1;
wire [LOGN-2:0] ntt_e1_read_addr_bank0, ntt_e1_read_addr_bank1;
wire [LOGN-2:0] pwm_e1_read_addr_bank0, pwm_e1_read_addr_bank1;
wire [LOGN-2:0] rns_e1_write_addr_bank0, rns_e1_write_addr_bank1;
wire [LOGQ-1:0] ntt_e1_wr_data_bank0, ntt_e1_wr_data_bank1;
wire [LOGQ-1:0] rns_e1_wr_data_bank0, rns_e1_wr_data_bank1;
wire [LOGQ-1:0] ntt_e1_rd_data_bank0, ntt_e1_rd_data_bank1;
wire ntt_e1_wea_bank0, ntt_e1_wea_bank1;
wire rns_e1_wea_bank0, rns_e1_wea_bank1;
NTTPolyBank ntt_e1_bank0(
    .clka(clk), 
    .clkb(clk), 
    .addra(~transform_rst ? ntt_e1_write_addr_bank0 : (~rns_rst || !PROVIDE_DEBUG_IO ? rns_e1_write_addr_bank0 : ext_rdwr_addr[12:1])),
    .addrb(~transform_rst ? ntt_e1_read_addr_bank0  : (~pwm_rst || !PROVIDE_DEBUG_IO ? pwm_e1_read_addr_bank0  : ext_rdwr_addr[12:1])), 
    .dina( ~transform_rst ? ntt_e1_wr_data_bank0    : (~rns_rst || !PROVIDE_DEBUG_IO ? rns_e1_wr_data_bank0    : dina_ext[LOGQ-1:0])), 
    .doutb(ntt_e1_rd_data_bank0), 
    .wea(  ~transform_rst ? ntt_e1_wea_bank0        : (~rns_rst || !PROVIDE_DEBUG_IO ? rns_e1_wea_bank0        : ntt_e1_ext_wea_bank0))
    );
NTTPolyBank ntt_e1_bank1(
    .clka(clk), 
    .clkb(clk), 
    .addra(~transform_rst ? ntt_e1_write_addr_bank1 : (~rns_rst || !PROVIDE_DEBUG_IO ? rns_e1_write_addr_bank1 : ext_rdwr_addr[12:1])),
    .addrb(~transform_rst ? ntt_e1_read_addr_bank1  : (~pwm_rst || !PROVIDE_DEBUG_IO ? pwm_e1_read_addr_bank1  : ext_rdwr_addr[12:1])), 
    .dina( ~transform_rst ? ntt_e1_wr_data_bank1    : (~rns_rst || !PROVIDE_DEBUG_IO ? rns_e1_wr_data_bank1    : dina_ext[LOGQ-1:0])), 
    .doutb(ntt_e1_rd_data_bank1), 
    .wea(  ~transform_rst ? ntt_e1_wea_bank1        : (~rns_rst || !PROVIDE_DEBUG_IO ? rns_e1_wea_bank1        : ntt_e1_ext_wea_bank1))
    );


// NTT BRAMs key (Modular Ring BRAM 3):
wire [LOGN-2:0] pwm_key_read_addr_bank0, pwm_key_read_addr_bank1;
wire [LOGN-2:0] pwm_key_write_addr_bank0, pwm_key_write_addr_bank1;
wire [LOGQ-1:0] ntt_key_rd_data_bank0, ntt_key_rd_data_bank1;
wire [LOGQ-1:0] pwm_key_wr_data_bank0, pwm_key_wr_data_bank1;
wire pwm_key_wea_bank0, pwm_key_wea_bank1;
NTTPolyBank ntt_key_bank0(
    .clka(clk), 
    .clkb(clk), 
    .addra(~pwm_rst ? pwm_key_write_addr_bank0 : (grant_ext ? ext_rdwr_addr[12:1]   : dma_rdwr_addr[12:1])),
    .addrb(~pwm_rst ? pwm_key_read_addr_bank0  : (grant_ext ? ext_rdwr_addr[12:1]   : dma_rdwr_addr[12:1])), 
    .dina( ~pwm_rst ? pwm_key_wr_data_bank0    : (grant_ext ? dina_ext[LOGQ-1:0]    : dina_dma[LOGQ-1:0])), 
    .doutb(ntt_key_rd_data_bank0), 
    .wea(  ~pwm_rst ? pwm_key_wea_bank0        : (grant_ext ? ntt_key_ext_wea_bank0 : ntt_key_dma_wea_bank0))
    );
NTTPolyBank ntt_key_bank1(
    .clka(clk), 
    .clkb(clk), 
    .addra(~pwm_rst ? pwm_key_write_addr_bank1 : (grant_ext ? ext_rdwr_addr[12:1]   : dma_rdwr_addr[12:1])),
    .addrb(~pwm_rst ? pwm_key_read_addr_bank1  : (grant_ext ? ext_rdwr_addr[12:1]   : dma_rdwr_addr[12:1])), 
    .dina( ~pwm_rst ? pwm_key_wr_data_bank1    : (grant_ext ? dina_ext[LOGQ-1:0]    : dina_dma[LOGQ-1:0])), 
    .doutb(ntt_key_rd_data_bank1), 
    .wea(  ~pwm_rst ? pwm_key_wea_bank1        : (grant_ext ? ntt_key_ext_wea_bank1 : ntt_key_dma_wea_bank1))
    );


// Random polynomial BRAMs (Error Poly BRAM):
wire e0_bram_wea,e1_bram_wea,v_bram_wea;
wire [LOGN-1:0] e0_bram_rd_addr,e1_bram_rd_addr,v_bram_rd_addr;
wire [LOGN-1:0] e0_bram_wr_addr,e1_bram_wr_addr,v_bram_wr_addr;
wire [5:0] e0_bram_wr_data,e1_bram_wr_data;
wire [1:0] v_bram_wr_data;
wire [5:0] e0_bram_rd_data,e1_bram_rd_data;
wire [1:0] v_bram_rd_data;
CBDPolyBRAM e0_bram(
  .clka(clk),
  .wea(e0_bram_wea),
  .addra(~random_sampling_rst ? e0_bram_wr_addr : (~rns_rst || !PROVIDE_DEBUG_IO ? e0_bram_rd_addr : ext_rdwr_addr[12:0])),
  .dina(e0_bram_wr_data),
  .douta(e0_bram_rd_data)
  );
CBDPolyBRAM e1_bram(
  .clka(clk),
  .wea(e1_bram_wea),
  .addra(~random_sampling_rst ? e1_bram_wr_addr : (~rns_rst || !PROVIDE_DEBUG_IO ? e1_bram_rd_addr : ext_rdwr_addr[12:0])),
  .dina(e1_bram_wr_data),
  .douta(e1_bram_rd_data)
  );
TernaryPolyBRAM v_bram(
  .clka(clk),
  .wea(v_bram_wea),
  .addra(~random_sampling_rst ? v_bram_wr_addr : (~rns_rst || !PROVIDE_DEBUG_IO ? v_bram_rd_addr : ext_rdwr_addr[12:0])),
  .dina(v_bram_wr_data),
  .douta(v_bram_rd_data)
  );


// Constants ROM:
// contains the "Twiddle factor cache" for FFT and NTT twiddle factor generation and the RNS constants
wire [8:0] transform_tw_rom_addr, rns_constant_rom_addr;
wire [2*FLP_WORDSIZE-1:0] tw_rom_data;
FFTTw_RNS_ROM constants_rom(.clka(clk), .addra((~transform_rst) ? transform_tw_rom_addr : rns_constant_rom_addr), .douta(tw_rom_data));


/******************** Unified Transformation Module ***************/
// Unified Transformation module also contains the Shared Arithmetic Unit
// Transformation module must stay in reset a few cycles before starting computation:
reg transform_rst_1DP,transform_rst_2DP,transform_rst_3DP;
reg is_dif_UnifTrans_DP, is_fft_UnifTrans_DP;
always @(posedge clk) begin
  if(rst) begin
    transform_rst_1DP <= 1;
    transform_rst_2DP <= 1;
    transform_rst_3DP <= 1;
  end else begin
    transform_rst_1DP <= transform_rst;
    transform_rst_2DP <= transform_rst_1DP;
    transform_rst_3DP <= transform_rst_2DP;
  end

  // register for unified Transformation control signals (improves placability)
  is_dif_UnifTrans_DP <= is_dif;
  is_fft_UnifTrans_DP <= do_fft;
end

wire [LOGQ-1:0] pwm_bf0_ina, pwm_bf0_inb, pwm_bf0_tw, pwm_bf0_result, pwm_bf1_ina, pwm_bf1_inb, pwm_bf1_tw, pwm_bf1_result;
wire [107:0] rns_significant;
wire [23:0] rns_significant_low;
wire [LOGQ-1:0] rns_mult_factor, rns_mult_result;
UnifiedTransformation #(
    .FFT_ON_THE_FLY_GENERATION(FFT_ON_THE_FLY_GENERATION),
    .ADDR_WIDTH_ROM(9)
  ) unified_transform (
    .clk(clk),
    .rst(transform_rst_3DP | transform_rst),
    .is_dif(is_dif_UnifTrans_DP),
    .is_fft(is_fft_UnifTrans_DP),

    // debug i/o: not used
    .base_address_debug(),
    .gap_debug(),
    .base_address_debug_out(),
    .gap_debug_out(),
    .stall_debug(),
    .stage_done_debug(),

    // modulus info for NTT
    .current_k(current_k),
    .qm(qm),
    .constants_sel(constants_sel),

    // fft bram bank 0:
    .data_to_bram_0_fft(fft_wr_data_bank0),
    .data_from_bram_0_fft(fft_rd_data_bank0),
    .read_addr_0_fft(fft_read_addr_bank0),
    .write_addr_0_fft(fft_write_addr_bank0),
    .wea_0_fft(fft_wea_bank0),

    // fft bram bank 1:
    .data_to_bram_1_fft(fft_wr_data_bank1),
    .data_from_bram_1_fft(fft_rd_data_bank1),
    .read_addr_1_fft(fft_read_addr_bank1),
    .write_addr_1_fft(fft_write_addr_bank1),
    .wea_1_fft(fft_wea_bank1),

    // ntt bram bank 0:
    .data_to_bram_0_ntt(ntt_m_wr_data_bank0),
    .data_from_bram_0_ntt(ntt_m_rd_data_bank0),
    .read_addr_0_ntt(ntt_m_read_addr_bank0),
    .write_addr_0_ntt(ntt_m_write_addr_bank0),
    .wea_0_ntt(ntt_m_wea_bank0),

    // ntt bram bank 1:
    .data_to_bram_1_ntt(ntt_m_wr_data_bank1),
    .data_from_bram_1_ntt(ntt_m_rd_data_bank1),
    .read_addr_1_ntt(ntt_m_read_addr_bank1),
    .write_addr_1_ntt(ntt_m_write_addr_bank1),
    .wea_1_ntt(ntt_m_wea_bank1),

    // ntt bram bank 2:
    .data_to_bram_2_ntt(ntt_e1_wr_data_bank0),
    .data_from_bram_2_ntt(ntt_e1_rd_data_bank0),
    .read_addr_2_ntt(ntt_e1_read_addr_bank0),
    .write_addr_2_ntt(ntt_e1_write_addr_bank0),
    .wea_2_ntt(ntt_e1_wea_bank0),

    // ntt bram bank 3:
    .data_to_bram_3_ntt(ntt_e1_wr_data_bank1),
    .data_from_bram_3_ntt(ntt_e1_rd_data_bank1),
    .read_addr_3_ntt(ntt_e1_read_addr_bank1),
    .write_addr_3_ntt(ntt_e1_write_addr_bank1),
    .wea_3_ntt(ntt_e1_wea_bank1),

    // ntt bram bank 4:
    .data_to_bram_4_ntt(ntt_v_wr_data_bank0),
    .data_from_bram_4_ntt(ntt_v_rd_data_bank0),
    .read_addr_4_ntt(ntt_v_read_addr_bank0),
    .write_addr_4_ntt(ntt_v_write_addr_bank0),
    .wea_4_ntt(ntt_v_wea_bank0),

    // ntt bram bank 5:
    .data_to_bram_5_ntt(ntt_v_wr_data_bank1),
    .data_from_bram_5_ntt(ntt_v_rd_data_bank1),
    .read_addr_5_ntt(ntt_v_read_addr_bank1),
    .write_addr_5_ntt(ntt_v_write_addr_bank1),
    .wea_5_ntt(ntt_v_wea_bank1),

    // twiddle factor rom:
    .tw_rom_addr(transform_tw_rom_addr),
    .tw_rom_data(tw_rom_data),

    // connection for PWM module (Shared Arithmetic Unit)
    .rst_pwm(pwm_rst),
    .pwm_bf0_ina(pwm_bf0_ina),
    .pwm_bf0_inb(pwm_bf0_inb),
    .pwm_bf0_tw(pwm_bf0_tw),
    .pwm_bf0_result(pwm_bf0_result),
    .pwm_bf2_ina(pwm_bf1_ina),
    .pwm_bf2_inb(pwm_bf1_inb),
    .pwm_bf2_tw(pwm_bf1_tw),
    .pwm_bf2_result(pwm_bf1_result),
    
    // connection to UnifiedTransformation to reuse reduction and multiplier (Shared Arithmetic Unit)
    .rns_significant(rns_significant),
    .rns_significant_low(rns_significant_low),
    .rns_mult_factor(rns_mult_factor),
    .rns_mult_result(rns_mult_result),

    .done(transformation_done)
  );


/******************** RNS Unit ***************/
reg rns_rst_1DP,rns_rst_2DP,rns_rst_3DP;
always @(posedge clk) begin
  if(rst) begin
    rns_rst_1DP <= 1;
    rns_rst_2DP <= 1;
    rns_rst_3DP <= 1;
  end else begin
    rns_rst_1DP <= rns_rst;
    rns_rst_2DP <= rns_rst_1DP;
    rns_rst_3DP <= rns_rst_2DP;
  end
end

wire [LOGN-1:0] rns_write_addr;
wire [LOGQ-1:0] rns_write_data;
wire rns_wea;
assign rns_m_write_addr_bank0 = rns_write_addr[LOGN-1:1];
assign rns_m_write_addr_bank1 = rns_write_addr[LOGN-1:1];
assign rns_m_wr_data_bank0 = rns_write_data;
assign rns_m_wr_data_bank1 = rns_write_data;
assign rns_m_wea_bank0 = rns_wea & ~rns_write_addr[0];
assign rns_m_wea_bank1 = rns_wea &  rns_write_addr[0];
assign rns_constant_rom_addr[8:7] = 'd0;
wire [LOGN-1:0] rns_v_write_addr;
wire [LOGQ-1:0] rns_v_write_data;
wire rns_v_wea;
assign rns_v_write_addr_bank0 = rns_v_write_addr[LOGN-1:1];
assign rns_v_write_addr_bank1 = rns_v_write_addr[LOGN-1:1];
assign rns_v_wr_data_bank0 = rns_v_write_data;
assign rns_v_wr_data_bank1 = rns_v_write_data;
assign rns_v_wea_bank0 = rns_v_wea & ~rns_v_write_addr[0];
assign rns_v_wea_bank1 = rns_v_wea &  rns_v_write_addr[0];
wire [LOGN-1:0] rns_e1_write_addr;
wire [LOGQ-1:0] rns_e1_write_data;
wire rns_e1_wea;
assign rns_e1_write_addr_bank0 = rns_e1_write_addr[LOGN-1:1];
assign rns_e1_write_addr_bank1 = rns_e1_write_addr[LOGN-1:1];
assign rns_e1_wr_data_bank0 = rns_e1_write_data;
assign rns_e1_wr_data_bank1 = rns_e1_write_data;
assign rns_e1_wea_bank0 = rns_e1_wea & ~rns_e1_write_addr[0];
assign rns_e1_wea_bank1 = rns_e1_wea &  rns_e1_write_addr[0];
RNS #(
    .N(N),    // polynomial degree
    .LOGN(LOGN),   // bit-size of polynomial coeficient addressing 
    .LOGQ(LOGQ),   // maximum bit-size of one modulus
    .LOGI(4),    // 2*4 = 16 supported different moduli
    .W(W),      // word-size of WL-Montgomery reduction in bits
    .L(3),       // number of stages in WL-Montgomery reduction
    .M(M),      // number of non-zero bits in modulus
    .ROM_BASE_ADDR(39) // base address with metadata needed in this module
  ) rns (
    .clk(clk),
    .rst(rns_rst_3DP | rns_rst),
    .modulus_select(modulus_select),
    .scale(scale),

    .current_k(current_k),
    .qm(qm),

    // fft bram:
    .bram_rd_addr(rns_read_addr),
    .bram_rd_data(rns_read_data),

    // message bram:
    .bram_wr_addr(rns_write_addr),
    .bram_wr_data(rns_write_data),
    .bram_wea(rns_wea),
    
    // error polynomials brams:
    .e0_bram_rd_addr(e0_bram_rd_addr),
    .e0_bram_rd_data(e0_bram_rd_data),
    .e1_bram_rd_addr(e1_bram_rd_addr),
    .e1_bram_rd_data(e1_bram_rd_data),
    .v_bram_rd_addr(v_bram_rd_addr),
    .v_bram_rd_data(v_bram_rd_data),

    .v_bram_wr_addr(rns_v_write_addr),
    .v_bram_wr_data(rns_v_write_data),
    .v_bram_wea(rns_v_wea),
    .e1_bram_wr_addr(rns_e1_write_addr),
    .e1_bram_wr_data(rns_e1_write_data),
    .e1_bram_wea(rns_e1_wea),

    // auxiliary rom:
    .rom_addr(rns_constant_rom_addr[6:0]),
    .rom_data(tw_rom_data),

    // connection to RNS module using NTT TwFctGen and NTT BF 1
    .significant(rns_significant),
    .significant_low(rns_significant_low),
    .mult_factor(rns_mult_factor),
    .mult_result(rns_mult_result),

    .done(rns_done)
  );

/******************** Point-wise Multiplication Unit ***************/
wire [LOGN-1:0] pwm_a_rd_addr;
assign pwm_v_read_addr_bank0 = pwm_a_rd_addr[LOGN-1:1];
assign pwm_v_read_addr_bank1 = pwm_a_rd_addr[LOGN-1:1]; 
wire pwm_a_bank_sel_delayed;
DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) pwm_a_bank_sel_delay (.clk(clk), .in(pwm_a_rd_addr[0]), .out(pwm_a_bank_sel_delayed));
assign pwm_key_read_addr_bank0 = pwm_b_rd_addr[LOGN-1:1];
assign pwm_key_read_addr_bank1 = pwm_b_rd_addr[LOGN-1:1]; 
wire pwm_b_bank_sel_delayed;
DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) pwm_b_bank_sel_delay (.clk(clk), .in(pwm_b_rd_addr[0]), .out(pwm_b_bank_sel_delayed));
wire [LOGN-1:0] pwm_c_rd_addr;
assign pwm_m_read_addr_bank0 = pwm_c_rd_addr[LOGN-1:1];
assign pwm_m_read_addr_bank1 = pwm_c_rd_addr[LOGN-1:1];
assign pwm_e1_read_addr_bank0 = pwm_c_rd_addr[LOGN-1:1];
assign pwm_e1_read_addr_bank1 = pwm_c_rd_addr[LOGN-1:1];
wire pwm_c_bank_sel_delayed;
DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) pwm_c_bank_sel_delay (.clk(clk), .in(pwm_c_rd_addr[0]), .out(pwm_c_bank_sel_delayed));
wire [LOGN-1:0] pwm_result_wr_addr;
assign pwm_m_write_addr_bank0   = pwm_result_wr_addr[LOGN-1:1];
assign pwm_m_write_addr_bank1   = pwm_result_wr_addr[LOGN-1:1];
assign pwm_key_write_addr_bank0 = pwm_result_wr_addr[LOGN-1:1];
assign pwm_key_write_addr_bank1 = pwm_result_wr_addr[LOGN-1:1];
wire pwm_r_wea;
assign pwm_m_wea_bank0   = pwm_r_wea & ~pwm_result_wr_addr[0];
assign pwm_m_wea_bank1   = pwm_r_wea &  pwm_result_wr_addr[0];
assign pwm_key_wea_bank0 = pwm_r_wea & ~pwm_result_wr_addr[0];
assign pwm_key_wea_bank1 = pwm_r_wea &  pwm_result_wr_addr[0];
wire [LOGQ-1:0] pwm_c0_wr_data, pwm_c1_wr_data;
assign pwm_m_wr_data_bank0   = pwm_c0_wr_data;
assign pwm_m_wr_data_bank1   = pwm_c0_wr_data;
assign pwm_key_wr_data_bank0 = pwm_c1_wr_data;
assign pwm_key_wr_data_bank1 = pwm_c1_wr_data;
PWM #(
    .LOGQ(LOGQ),
    .LOGN(LOGN),
    .W(W),
    .M(M)
  ) pwm (
    .clk(clk),
    .rst(pwm_rst),

    .q_m(qm),
    .current_k(current_k),

    // a bram read port:
    .a_bram_rd_addr(pwm_a_rd_addr),
    .a_bram_rd_data(pwm_a_bank_sel_delayed ? ntt_v_rd_data_bank1 : ntt_v_rd_data_bank0),

    // b bram read port:
    .b_bram_rd_addr(pwm_b_rd_addr),
    .b0_bram_rd_data(pwm_b_bank_sel_delayed ? ntt_key_rd_data_bank1 : ntt_key_rd_data_bank0),
    .b1_bram_rd_data(fft_im_rd_data),

    // c bram read port:
    .c_bram_rd_addr(pwm_c_rd_addr),
    .c0_bram_rd_data(pwm_c_bank_sel_delayed ? ntt_m_rd_data_bank1 : ntt_m_rd_data_bank0),
    .c1_bram_rd_data(pwm_c_bank_sel_delayed ? ntt_e1_rd_data_bank1 : ntt_e1_rd_data_bank0),

    // result bram write port:
    .result_bram_wr_addr(pwm_result_wr_addr),
    .result0_bram_wr_data(pwm_c0_wr_data),
    .result1_bram_wr_data(pwm_c1_wr_data),
    .result_bram_wea(pwm_r_wea),

    // connection for NTT BF
    .pwm_bf0_ina(pwm_bf0_ina),
    .pwm_bf0_inb(pwm_bf0_inb),
    .pwm_bf0_tw(pwm_bf0_tw),
    .pwm_bf0_result(pwm_bf0_result),
    .pwm_bf1_ina(pwm_bf1_ina),
    .pwm_bf1_inb(pwm_bf1_inb),
    .pwm_bf1_tw(pwm_bf1_tw),
    .pwm_bf1_result(pwm_bf1_result),

    .done(pwm_done)
  );

/******************** PRNG and Sampling unit ***************/
wire [LOGN-1:0] sampled_e0_bram_wr_addr,sampled_e1_bram_wr_addr, sampled_v_bram_wr_addr;
wire [5:0] sampled_e0, sampled_e1;
wire [1:0] sampled_v;
wire sampled_e0_wea, sampled_e1_wea, sampled_v_wea;

reg random_sampling_rst_1DP;
always @(posedge clk) begin
  if(rst)
    random_sampling_rst_1DP <= 1;
  else
    random_sampling_rst_1DP <= random_sampling_rst;
end

RandomSampling #(.LOGN(13),.LOGQ(54),.M(17),.W(24)) random_sampling (
    .clk(clk),
    .rst(random_sampling_rst_1DP),
    .sample_errors(sample_errors),

    .seed(random_sampling_seed),
    .current_k(current_k),
    .qm(qm),

    // write interface v
    .wr_addr_v(sampled_v_bram_wr_addr),
    .wr_data_v(sampled_v),
    .wea_v(sampled_v_wea),

    // write interface e0
    .wr_addr_e0(sampled_e0_bram_wr_addr),
    .wr_data_e0(sampled_e0),
    .wea_e0(sampled_e0_wea),

    // write interface e1
    .wr_addr_e1(sampled_e1_bram_wr_addr),
    .wr_data_e1(sampled_e1),
    .wea_e1(sampled_e1_wea),

    // write interface pk1
    .wr_addr_pk1(fft_im_wr_addr),
    .wr_data_pk1(fft_im_wr_data),
    .wea_pk1(fft_im_wea),

    .done(random_sampling_done)
  );

wire ext_error_bram_wea;
assign ext_error_bram_wea = wea_ext && bram_sel == ERROR_BRAM_ID;
assign e0_bram_wea     = (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? sampled_e0_wea          : ext_error_bram_wea;
assign e1_bram_wea     = (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? sampled_e1_wea          : ext_error_bram_wea;
assign v_bram_wea      = (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? sampled_v_wea           : ext_error_bram_wea;
assign e0_bram_wr_data = (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? sampled_e0              : dina_ext[11:6];
assign e1_bram_wr_data = (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? sampled_e1              : dina_ext[5:0];
assign v_bram_wr_data  = (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? sampled_v               : dina_ext[13:12];
assign e0_bram_wr_addr = (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? sampled_e0_bram_wr_addr : ext_rdwr_addr[LOGN-1:0];
assign e1_bram_wr_addr = (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? sampled_e1_bram_wr_addr : ext_rdwr_addr[LOGN-1:0];
assign v_bram_wr_addr  = (~random_sampling_rst || !PROVIDE_DEBUG_IO) ? sampled_v_bram_wr_addr  : ext_rdwr_addr[LOGN-1:0];


/******************** Integer to Floating-Point Unit ***************/
wire [LOGN-1:0] i2f_rd_addr;
assign i2f_m_read_addr_bank0 = i2f_rd_addr[LOGN-1:1];
assign i2f_m_read_addr_bank1 = i2f_rd_addr[LOGN-1:1];
wire i2f_bank_sel_delayed;
DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) i2f_bank_sel_delay (.clk(clk), .in(i2f_rd_addr[0]), .out(i2f_bank_sel_delayed));

wire [LOGN-1:0] i2f_write_addr;
assign i2f_write_addr_bank0 = i2f_write_addr[LOGN-1:1];
assign i2f_write_addr_bank1 = i2f_write_addr[LOGN-1:1];
wire [2*FLP_WORDSIZE-1:0] i2f_write_data;
assign i2f_wr_data_bank0 = i2f_write_data;
assign i2f_wr_data_bank1 = i2f_write_data;
wire i2f_wea;
assign i2f_wea_bank0 = i2f_wea & ~i2f_write_addr[0];
assign i2f_wea_bank1 = i2f_wea &  i2f_write_addr[0];

IntToFlPWrapper #(
    .LOGN(LOGN),
    .LOGQ(LOGQ),
    .W(W),
    .M(M)
  ) int_to_flp (
    .clk(clk),
    .rst(i2f_rst),
    .current_k(current_k),
    .q_m(qm),
    .scale_power(scale_i2f),

    // message read bram:
    .bram_rd_addr(i2f_rd_addr),
    .bram_rd_data(i2f_bank_sel_delayed ? ntt_m_rd_data_bank1 : ntt_m_rd_data_bank0),

    // fft write bram:
    .bram_wr_addr(i2f_write_addr),
    .bram_wr_data(i2f_write_data),
    .bram_wea(i2f_wea),

    .done(i2f_done)
  ); 


/******************** Read logic for Debug and DMA interface ***************/
assign doutb_ext = !PROVIDE_DEBUG_IO ? 64'dX :  
                   bram_sel == FFT_BRAM_ID     ? (ext_rdwr_addr[1] == 0 ? (ext_rdwr_addr[0] == 0 ? fft_rd_data_bank0[2*FLP_WORDSIZE-1:FLP_WORDSIZE] : fft_rd_data_bank0[FLP_WORDSIZE-1:0]) :
                                                                          (ext_rdwr_addr[0] == 0 ? fft_rd_data_bank1[2*FLP_WORDSIZE-1:FLP_WORDSIZE] : fft_rd_data_bank1[FLP_WORDSIZE-1:0])) :
                   bram_sel == NTT_MSG_BRAM_ID ? (ext_rdwr_addr[0] == 0 ? {10'd0, ntt_m_rd_data_bank0}  : {10'd0, ntt_m_rd_data_bank1}) : 
                   bram_sel == NTT_V_BRAM_ID   ? (ext_rdwr_addr[0] == 0 ? {10'd0, ntt_v_rd_data_bank0}  : {10'd0, ntt_v_rd_data_bank1}) : 
                   bram_sel == NTT_E1_BRAM_ID  ? (ext_rdwr_addr[0] == 0 ? {10'd0, ntt_e1_rd_data_bank0} : {10'd0, ntt_e1_rd_data_bank1}) : 
                   bram_sel == NTT_KEY_BRAM_ID ? (ext_rdwr_addr[0] == 0 ? {10'd0, ntt_key_rd_data_bank0} : {10'd0, ntt_key_rd_data_bank1}) : 
                   bram_sel == ERROR_BRAM_ID   ? {50'd0, v_bram_rd_data, e0_bram_rd_data, e1_bram_rd_data} : 
                   bram_sel == FFT_IM_BRAM_ID  ? {10'd0, fft_im_rd_data} :
                   64'd0;

wire dma_rd_bank_sel, dma_rd_bank_sel_fft;
DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(2)) dma_rd_bank_sel_delay (.clk(clk), .in(dma_rdwr_addr[1:0]), .out({dma_rd_bank_sel_fft, dma_rd_bank_sel}));
assign doutb_dma = dma_bram_sel == DMA_FFT_BRAM_ID ? (dma_rd_bank_sel_fft == 0 ? (dma_rd_bank_sel == 0 ? fft_rd_data_bank0[2*FLP_WORDSIZE-1:FLP_WORDSIZE] : fft_rd_data_bank0[FLP_WORDSIZE-1:0]) :
                                                                                 (dma_rd_bank_sel == 0 ? fft_rd_data_bank1[2*FLP_WORDSIZE-1:FLP_WORDSIZE] : fft_rd_data_bank1[FLP_WORDSIZE-1:0])) :
                   dma_bram_sel == DMA_MSG_BRAM_ID ? (dma_rd_bank_sel == 0 ? {10'd0, ntt_m_rd_data_bank0}   : {10'd0, ntt_m_rd_data_bank1}) :  
                   dma_bram_sel == DMA_KEY_BRAM_ID ? (dma_rd_bank_sel == 0 ? {10'd0, ntt_key_rd_data_bank0} : {10'd0, ntt_key_rd_data_bank1}) : 
                   64'dX; // V BRAM is write-only via dma

endmodule