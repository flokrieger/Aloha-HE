`timescale 1ns / 1ps

module ComputeCoreWrapper(clk, 
                    // AXI registers for controlling the co-processor
                    control_low_word, control_high_word, 
                    dina_ext_low_word, dina_ext_high_word, 
                    dout_ext_low_word, dout_ext_high_word, 
                    status,
                    // DMA interface: 
                    dma_bram_byte_wea, 
                    dma_bram_abs_addr, 
                    dma_bram_dina, 
                    dma_bram_doutb, 
                    dma_bram_en);
input clk;
input [31:0] control_low_word, control_high_word;
input [31:0] dina_ext_low_word, dina_ext_high_word;

output [31:0] dout_ext_low_word, dout_ext_high_word;
output [31:0] status;

input [7:0] dma_bram_byte_wea;
input [17:0] dma_bram_abs_addr;
input [63:0] dma_bram_dina;
output [63:0] dma_bram_doutb;
input dma_bram_en;

wire [63:0] dina_ext = {dina_ext_high_word,dina_ext_low_word};
wire [63:0] dout_ext;
reg [31:0] status;
wire rst_core;

wire [13:0] address_ext;
wire [2:0] bram_sel;
wire wea_ext, grant_ext, wea_ext_core, wea_ext_ISA;

wire [39:0] command_in;
wire command_we;

wire rst_ISA, start_ISA;
wire done_ins_computation; 
wire done_all_computation; // This becomes 1 when the cryptoprocessor has finished executing all instructions.

wire [31:0] status_wire;
wire [30:0] cycle_count;

assign address_ext = control_low_word[13:0];
assign wea_ext = control_low_word[14];
assign grant_ext = control_low_word[16];
assign bram_sel = control_low_word[31:29];

assign status_wire = {cycle_count[29:0], 1'd0, done_all_computation};
assign {dout_ext_high_word,dout_ext_low_word} = dout_ext;
assign wea_ext_core = (wea_ext==1'b1 & control_low_word[15]==1'b0) ? 1'b1 : 1'b0;

always @(posedge clk)
    status <= status_wire;
    
ComputeCore CORE(
    .clk(clk), 
    .rst(rst_core), 
    .address_ext(address_ext), 
    .bram_sel(bram_sel), 
    .dina_ext(dina_ext), 
    .doutb_ext(dout_ext),
    .wea_ext(wea_ext_core),
		.command_in(command_in), 
    .command_we(command_we),
		.done_ins_computation(done_ins_computation),
		.grant_ext_io(grant_ext),
    .dma_bram_byte_wea(dma_bram_byte_wea), 
    .dma_bram_abs_addr(dma_bram_abs_addr), 
    .dina_dma(dma_bram_dina), 
    .doutb_dma(dma_bram_doutb), 
    .dma_bram_en(dma_bram_en));


assign rst_core = control_high_word[0];
assign rst_ISA = control_high_word[0];
assign start_ISA = control_high_word[1];
assign wea_ext_ISA = (wea_ext==1'b1 & control_low_word[15]==1'b1) ? 1'b1 : 1'b0;

ISA_control ISA_CTRL(clk, rst_ISA, start_ISA, done_ins_computation,
                  address_ext[3:0], dina_ext[41:0], wea_ext_ISA,
									command_in,	command_we,
									done_all_computation,
									cycle_count);

endmodule
