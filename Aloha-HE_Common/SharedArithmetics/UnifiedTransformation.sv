`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// This module computes the FFT and NTT 
// It also instantiates the shared arithmetic unit containing
// Shared int multiplier and Montgomery reduction units
(* keep_hierarchy = `KEEP_HIERARCHY *) 
module UnifiedTransformation #(
    FFT_ON_THE_FLY_GENERATION = 1, // If turned on  -> FFT BF iterate over the polynomial in BR-order
                                   // If turned off -> normal order
    ADDR_WIDTH_ROM = 9,
    M = 17,
    LOGQ_MAX = 54,
    N = 8192,
    ADDR_WIDTH = $clog2(N)-1
  )
  (
    input clk,
    input rst,
    input is_dif,
    input is_fft,

    // debug i/o
    input [ADDR_WIDTH:0] base_address_debug,
    input [ADDR_WIDTH:0] gap_debug,
    output [ADDR_WIDTH:0] base_address_debug_out,
    output [ADDR_WIDTH:0] gap_debug_out,
    output stall_debug,
    output stage_done_debug,

    // modulus info for NTT
    input [3:0] current_k,
    input [M-1:0] qm,
    input [2:0] constants_sel,

    // fft bram bank 0:
    output [2*`OVERALL_BITS-1:0] data_to_bram_0_fft,
    input [2*`OVERALL_BITS-1:0] data_from_bram_0_fft,
    output [$clog2(N)-2:0] read_addr_0_fft,
    output [$clog2(N)-2:0] write_addr_0_fft,
    output wea_0_fft,

    // fft bram bank 1:
    output [2*`OVERALL_BITS-1:0] data_to_bram_1_fft,
    input [2*`OVERALL_BITS-1:0] data_from_bram_1_fft,
    output [$clog2(N)-2:0] read_addr_1_fft,
    output [$clog2(N)-2:0] write_addr_1_fft,
    output wea_1_fft,

    // ntt bram bank 0:
    output [LOGQ_MAX-1:0] data_to_bram_0_ntt,
    input [LOGQ_MAX-1:0] data_from_bram_0_ntt,
    output [$clog2(N)-2:0] read_addr_0_ntt,
    output [$clog2(N)-2:0] write_addr_0_ntt,
    output wea_0_ntt,

    // ntt bram bank 1:
    output [LOGQ_MAX-1:0] data_to_bram_1_ntt,
    input [LOGQ_MAX-1:0] data_from_bram_1_ntt,
    output [$clog2(N)-2:0] read_addr_1_ntt,
    output [$clog2(N)-2:0] write_addr_1_ntt,
    output wea_1_ntt,

    // ntt bram bank 2:
    output [LOGQ_MAX-1:0] data_to_bram_2_ntt,
    input [LOGQ_MAX-1:0] data_from_bram_2_ntt,
    output [$clog2(N)-2:0] read_addr_2_ntt,
    output [$clog2(N)-2:0] write_addr_2_ntt,
    output wea_2_ntt,

    // ntt bram bank 3:
    output [LOGQ_MAX-1:0] data_to_bram_3_ntt,
    input [LOGQ_MAX-1:0] data_from_bram_3_ntt,
    output [$clog2(N)-2:0] read_addr_3_ntt,
    output [$clog2(N)-2:0] write_addr_3_ntt,
    output wea_3_ntt,

    // ntt bram bank 4:
    output [LOGQ_MAX-1:0] data_to_bram_4_ntt,
    input [LOGQ_MAX-1:0] data_from_bram_4_ntt,
    output [$clog2(N)-2:0] read_addr_4_ntt,
    output [$clog2(N)-2:0] write_addr_4_ntt,
    output wea_4_ntt,

    // ntt bram bank 5:
    output [LOGQ_MAX-1:0] data_to_bram_5_ntt,
    input [LOGQ_MAX-1:0] data_from_bram_5_ntt,
    output [$clog2(N)-2:0] read_addr_5_ntt,
    output [$clog2(N)-2:0] write_addr_5_ntt,
    output wea_5_ntt,

    // twiddle factor rom:
    output [ADDR_WIDTH_ROM-1:0] tw_rom_addr,
    input [2*`OVERALL_BITS-1:0] tw_rom_data,

    // connection for PWM module using NTT BF 0,2
    input rst_pwm, // if 0: NTT BF is granted to PWM module
    input [LOGQ_MAX-1:0] pwm_bf0_ina,
    input [LOGQ_MAX-1:0] pwm_bf0_inb,
    input [LOGQ_MAX-1:0] pwm_bf0_tw,
    output [LOGQ_MAX-1:0] pwm_bf0_result,
    input [LOGQ_MAX-1:0] pwm_bf2_ina,
    input [LOGQ_MAX-1:0] pwm_bf2_inb,
    input [LOGQ_MAX-1:0] pwm_bf2_tw,
    output [LOGQ_MAX-1:0] pwm_bf2_result,

    // connection to RNS module using NTT TwFctGen and NTT BF 1
    input [107:0] rns_significant,
    input [23:0] rns_significant_low,
    input [LOGQ_MAX-1:0] rns_mult_factor,
    output [LOGQ_MAX-1:0] rns_mult_result,

    output done
  );
  
  localparam ADDER_LAT = `DELAY_FLP_ADDER;
  localparam MULT_LAT = `DELAY_COMPLEX_MULT;
  localparam BRAM_RD_LAT = 2;
  localparam MOD_ADDER_LAT = 2;

  //////// Control logic ///////
  logic rst_ctrl_ld_st;
  logic [ADDR_WIDTH:0] base_address, base_address_fft;
  logic [ADDR_WIDTH:0] gap;
  assign base_address_debug_out = base_address;
  assign gap_debug_out = gap;

  logic rst_tw_fct_gen, ctrl_done, stall;
  logic [`OVERALL_BITS-1:0] tw_real, tw_imag;

  assign stall_debug = stall;
  logic [$clog2(MULT_LAT)-1:0] stall_counter;
  assign stall = is_dif ? (stall_counter < MULT_LAT) && (base_address == 'h1ffe) && (gap == 1) : 
                          (stall_counter < MULT_LAT+1) && (base_address == 'h0) && (gap == 1);
  always_ff @(posedge clk) begin
    if (rst_ctrl_ld_st || ~stall)
      stall_counter = 0;
    else
      stall_counter = stall_counter + 1;
  end

  logic [ADDR_WIDTH:0] m_DP, m_DN, offset_br, i_DP, i_DN;
  logic [ADDR_WIDTH-1:0] j_DP,j_DN;
  logic m_loop_done, i_loop_done, j_loop_done;
  always_ff @(posedge clk) begin
    if(rst_ctrl_ld_st) begin 
      m_DP <= is_dif ? N>>1 : 1;
      i_DP <= 0;
      j_DP <= 0;
      base_address <= 0;
    end else if(~stall) begin
      m_DP <= i_loop_done ? m_DN : m_DP;
      i_DP <= j_loop_done ? i_DN : i_DP;
      j_DP <= j_DN;
      base_address <= j_loop_done ? offset_br : base_address + 1;
    end
  end

  assign m_DN = is_dif ? m_DP >> 1 : m_DP << 1;
  assign m_loop_done = m_DN == 0 && i_loop_done;

  assign i_loop_done = i_DP + 1 == m_DP && j_loop_done;
  assign i_DN = i_loop_done ? 0 : i_DP + 1;
  assign j_loop_done = j_DP + 1 == gap;
  assign j_DN = j_loop_done ? 0 : j_DP + 1;

  

  BitReverse #(.BITWIDTH(ADDR_WIDTH+1)) gap_br (.in(m_DP), .out(gap));
  BitReverse #(.BITWIDTH(ADDR_WIDTH+1)) offset_bitReverse (.in(i_DN), .out(offset_br));

  if (FFT_ON_THE_FLY_GENERATION == 0) begin
    
    logic [ADDR_WIDTH:0] offset, offset_br_fft;
    always_ff @(posedge clk)begin
      if(rst_ctrl_ld_st || i_loop_done || stall)
        offset <= 'd0;
      else if(j_loop_done)
        offset <= offset_br_fft;
    end
    assign offset_br_fft = rst_ctrl_ld_st || i_loop_done || stall ? 'd0 : offset + (gap << 1);

    always_ff @(posedge clk) begin
      if(rst_ctrl_ld_st) begin 
        base_address_fft <= 0;
      end else if(~stall) begin
        base_address_fft <= j_loop_done ? offset_br_fft : base_address_fft + 1;
      end
    end
  end
  

  logic done_dif_fft, done_dif_ntt, done_dit;
  DelayRegisterReset #(.BITWIDTH(1), .CYCLE_COUNT(25)) done_delayed (.clk(clk), .rst(rst_ctrl_ld_st), .in(m_loop_done), .out(done_dif_fft));
  DelayRegisterReset #(.BITWIDTH(1), .CYCLE_COUNT(2)) done_delayed2 (.clk(clk), .rst(rst_ctrl_ld_st), .in(done_dif_fft), .out(done_dif_ntt));
  DelayRegisterReset #(.BITWIDTH(1), .CYCLE_COUNT(1)) done_delayed1 (.clk(clk), .rst(rst_ctrl_ld_st), .in(done_dif_fft), .out(done_dit));
  assign done = is_dif ? (is_fft ? done_dif_fft : done_dif_ntt) : done_dit;

  assign ctrl_done = m_loop_done;
  assign stage_done_debug = i_loop_done;

  logic rst_2DP, rst_ntt_2DP, rst_ld_st_1DP;
  DelayRegister #(.BITWIDTH(1), .CYCLE_COUNT(ADDER_LAT+1)) rst_tw_fct_gen_delayed2 (.clk(clk), .in(rst), .out(rst_2DP));
  DelayRegister #(.BITWIDTH(1), .CYCLE_COUNT(MOD_ADDER_LAT)) rst_tw_fct_gen_ntt_delayed2 (.clk(clk), .in(rst), .out(rst_ntt_2DP));
  DelayRegister #(.BITWIDTH(1), .CYCLE_COUNT(1)) rst_ld_st_ntt_delayed (.clk(clk), .in(rst), .out(rst_ld_st_1DP));
  assign rst_tw_fct_gen = is_fft ? (is_dif ? rst_2DP : rst) :
                                   (is_dif ? rst_ntt_2DP : rst);
  assign rst_ctrl_ld_st = ~is_fft & ~is_dif ? rst_ld_st_1DP : rst;


  //////// Integer Multiplier Pool ///////
  logic [53:0] int_mult_a_fft [0:3];
  logic [53:0] int_mult_b_fft [0:3];
  logic [53:0] int_mult_a_ntt [0:3];
  logic [53:0] int_mult_b_ntt [0:3];
  logic [107:0] int_mult_result [0:3];
  logic [23:0] int_mult_result_low [0:3];
  IntMultPool mult_pool(
    .clk(clk),
    .grant_to_fft(is_fft & ~rst),

    .a_fft(int_mult_a_fft),
    .b_fft(int_mult_b_fft),
    .a_ntt(int_mult_a_ntt),
    .b_ntt(int_mult_b_ntt),
    .result(int_mult_result),
    .result_low(int_mult_result_low)
  );

  //////// Twiddle factor generation/storage ///////
  logic [`OVERALL_BITS-1:0] tw_real_gen, tw_imag_gen;
  logic [LOGQ_MAX-1:0] tw_ntt;
  UnifiedTwFctGen #(.N(N), .ADDR_WIDTH_ROM(ADDR_WIDTH_ROM), .FFT_ON_THE_FLY_GENERATION(FFT_ON_THE_FLY_GENERATION)) unif_tw_fct_gen
  (
    .clk(clk),
    .rst(rst_tw_fct_gen),
    .is_DIF(is_dif), // DIF: fFFT & iNTT; DIT: iFFT & fNTT
    .is_FFT(is_fft),
    .current_k(current_k),
    .qm(qm),
    .constants_sel(constants_sel),
    .tw_real(tw_real_gen),
    .tw_imag(tw_imag_gen),
    .tw_ntt(tw_ntt),
    .rom_addr(tw_rom_addr),
    .rom_data(tw_rom_data),

    .mult_a(int_mult_a_ntt[3]),
    .mult_b(int_mult_b_ntt[3]),
    .int_mult_result(rst ? rns_significant : int_mult_result[3]), // if unified transform is in reset, grant to RNS
    .int_mult_result_low(rst ? rns_significant_low : int_mult_result_low[3])
  );

  if (FFT_ON_THE_FLY_GENERATION) begin
    assign tw_real = tw_real_gen;
    assign tw_imag = tw_imag_gen;
  end else begin
    FFTTwFctStorage tw_fct_storage 
    (
      .clk(clk),
      .rst(rst_tw_fct_gen),
      .is_forward_fft(is_dif),
      .m(m_DP),
      .i(i_DP),
      .i_loop_done(i_loop_done),
      .tw_real(tw_real),
      .tw_imag(tw_imag)
    );
  end

  //////// FFT unified Butterfly ///////
  logic [`OVERALL_BITS-1:0] a_in_real, a_in_imag, b_in_real, b_in_imag;
  logic [`OVERALL_BITS-1:0] a_out_real, a_out_imag, b_out_real, b_out_imag;

  FFTButterfly fft_butterfly(
    .clk(clk),
    .use_ct(~is_dif),
    .a_in_real(a_in_real),
    .a_in_imag(a_in_imag),
    .b_in_real(b_in_real),
    .b_in_imag(b_in_imag),
    .tw_real(tw_real),
    .tw_imag(tw_imag),
    .a_out_real(a_out_real),
    .a_out_imag(a_out_imag),
    .b_out_real(b_out_real),
    .b_out_imag(b_out_imag),
    // unused:
    .start(),
    .done(),

    .mult_a(int_mult_a_fft),
    .mult_b(int_mult_b_fft),
    .int_mult_result(int_mult_result)
  );

  //////// NTT unified Butterfly ///////
  logic [LOGQ_MAX-1:0] a_in_ntt_0, b_in_ntt_0, a_in_ntt_1, b_in_ntt_1, a_in_ntt_2, b_in_ntt_2;
  logic [LOGQ_MAX-1:0] a_out_ntt_0, b_out_ntt_0, a_out_ntt_1, b_out_ntt_1, a_out_ntt_2, b_out_ntt_2;

  NTTButterfly ntt_butterfly_0(
    .clk(clk),
    .use_ct(rst_pwm ? ~is_dif : 1'd1),
    .ina(rst_pwm ? a_in_ntt_0 : pwm_bf0_ina),
    .inb(rst_pwm ? b_in_ntt_0 : pwm_bf0_inb),
    .twiddle_factor(rst_pwm ? tw_ntt : pwm_bf0_tw),
    .current_k(current_k),
    .q_m(qm),
    .outa(a_out_ntt_0),
    .outb(b_out_ntt_0),
    .out_mul(),

    .mult_a(int_mult_a_ntt[0]),
    .mult_b(int_mult_b_ntt[0]),
    .int_mult_result(int_mult_result[0]),
    .int_mult_result_low(int_mult_result_low[0])
  );
  assign pwm_bf0_result = a_out_ntt_0;

  NTTButterfly ntt_butterfly_1(
    .clk(clk),
    .use_ct(~is_dif || rst),
    .ina(a_in_ntt_1),
    .inb(rst ? rns_mult_factor : b_in_ntt_1),// if unified transform is in reset, grant to RNS
    .twiddle_factor(tw_ntt),
    .current_k(current_k),
    .q_m(qm),
    .outa(a_out_ntt_1),
    .outb(b_out_ntt_1),
    .out_mul(rns_mult_result),

    .mult_a(int_mult_a_ntt[1]),
    .mult_b(int_mult_b_ntt[1]),
    .int_mult_result(int_mult_result[1]),
    .int_mult_result_low(int_mult_result_low[1])
  );

  NTTButterfly ntt_butterfly_2(
    .clk(clk),
    .use_ct(rst_pwm ? ~is_dif : 1'd1),
    .ina(rst_pwm ? a_in_ntt_2 : pwm_bf2_ina),
    .inb(rst_pwm ? b_in_ntt_2 : pwm_bf2_inb),
    .twiddle_factor(rst_pwm ? tw_ntt : pwm_bf2_tw),
    .current_k(current_k),
    .q_m(qm),
    .outa(a_out_ntt_2),
    .outb(b_out_ntt_2),
    .out_mul(),

    .mult_a(int_mult_a_ntt[2]),
    .mult_b(int_mult_b_ntt[2]),
    .int_mult_result(int_mult_result[2]),
    .int_mult_result_low(int_mult_result_low[2])
  );
  assign pwm_bf2_result = a_out_ntt_2;
  

  //////////// Load logic: ///////////////////
  logic valid_a, valid_b;
  logic dest_bank_a, dest_bank_b;
  logic [ADDR_WIDTH-1:0] dest_addr_a, dest_addr_b;
  
  logic [ADDR_WIDTH-1:0] read_addr_0, read_addr_1;
  assign read_addr_0_fft = read_addr_0;
  assign read_addr_0_ntt = read_addr_0;
  assign read_addr_1_fft = read_addr_1;
  assign read_addr_1_ntt = read_addr_1;
  assign read_addr_2_ntt = read_addr_0;
  assign read_addr_3_ntt = read_addr_1;
  assign read_addr_4_ntt = read_addr_0;
  assign read_addr_5_ntt = read_addr_1;
  assign a_in_ntt_0 = a_in_imag[LOGQ_MAX-1:0];
  assign b_in_ntt_0 = b_in_imag[LOGQ_MAX-1:0];
  UnifiedLoadLogic #(
    .ADDER_LAT(ADDER_LAT),
    .MULT_LAT(MULT_LAT),
    .ADDR_WIDTH(ADDR_WIDTH),
    .LOGQ(LOGQ_MAX)
  ) load_logic (
    .clk(clk),
    .rst(rst_ctrl_ld_st), 
    .is_dif(is_dif),
    .is_fft(is_fft),

    .base_address(is_fft && FFT_ON_THE_FLY_GENERATION == 0 ? base_address_fft : base_address),
    .gap(gap),
    .ctrl_done(ctrl_done),
    .ctrl_stall(stall),

    .read_addr_0(read_addr_0),
    .read_addr_1(read_addr_1),
    .data_from_bram_0(is_fft ? data_from_bram_0_fft : {74'dX, data_from_bram_0_ntt}),
    .data_from_bram_1(is_fft ? data_from_bram_1_fft : {74'dX, data_from_bram_1_ntt}),
    .data_from_bram_2(data_from_bram_2_ntt),
    .data_from_bram_3(data_from_bram_3_ntt),
    .data_from_bram_4(data_from_bram_4_ntt),
    .data_from_bram_5(data_from_bram_5_ntt),
    
    // FFT and NTT 0 Butterfly
    .a_real(a_in_real), 
    .a_imag(a_in_imag), 
    .b_real(b_in_real),
    .b_imag(b_in_imag),
    // NTT 1 Butterfly
    .a_in_1(a_in_ntt_1),
    .b_in_1(b_in_ntt_1),
    // NTT 2 Butterfly
    .a_in_2(a_in_ntt_2),
    .b_in_2(b_in_ntt_2),

    .a_is_valid(valid_a),
    .b_is_valid(valid_b),
    .dest_bank_a(dest_bank_a),
    .dest_bank_b(dest_bank_b),
    .dest_addr_a(dest_addr_a),
    .dest_addr_b(dest_addr_b) 
  );



  //////////// Store logic: ///////////////////
  logic wea_0, wea_1;
  logic [ADDR_WIDTH-1:0] write_addr_0, write_addr_1;
  logic [2*`OVERALL_BITS-1:0] data_to_bram_0, data_to_bram_1;
  assign wea_0_fft =  is_fft & wea_0;
  assign wea_1_fft =  is_fft & wea_1;
  assign wea_0_ntt = ~is_fft & wea_0;
  assign wea_1_ntt = ~is_fft & wea_1;
  assign wea_2_ntt = wea_0_ntt;
  assign wea_3_ntt = wea_1_ntt;
  assign wea_4_ntt = wea_0_ntt;
  assign wea_5_ntt = wea_1_ntt;
  assign write_addr_0_fft = write_addr_0;
  assign write_addr_1_fft = write_addr_1;
  assign write_addr_0_ntt = write_addr_0;
  assign write_addr_1_ntt = write_addr_1;
  assign write_addr_2_ntt = write_addr_0;
  assign write_addr_3_ntt = write_addr_1;
  assign write_addr_4_ntt = write_addr_0;
  assign write_addr_5_ntt = write_addr_1;
  assign data_to_bram_0_fft = data_to_bram_0;
  assign data_to_bram_1_fft = data_to_bram_1;
  assign data_to_bram_0_ntt = data_to_bram_0[LOGQ_MAX-1:0];
  assign data_to_bram_1_ntt = data_to_bram_1[LOGQ_MAX-1:0];
  UnifiedStoreLogic #(
    .ADDER_LAT(ADDER_LAT),
    .MULT_LAT(MULT_LAT),
    .ADDR_WIDTH(ADDR_WIDTH),
    .LOGQ(LOGQ_MAX)
  ) store_logic (
    .clk(clk),
    .rst(rst_ctrl_ld_st), 
    .is_dif(is_dif),
    .is_fft(is_fft),

    .dest_bank_a(dest_bank_a),
    .dest_bank_b(dest_bank_b),
    .valid_a(valid_a),
    .valid_b(valid_b),
    .dest_addr_a(dest_addr_a),
    .dest_addr_b(dest_addr_b),

    .data_to_bram_0(data_to_bram_0),
    .write_addr_0(write_addr_0),
    .wea_0(wea_0),
    .data_to_bram_1(data_to_bram_1),
    .write_addr_1(write_addr_1),
    .wea_1(wea_1),

    .data_to_bram_2(data_to_bram_2_ntt),
    .data_to_bram_3(data_to_bram_3_ntt),
    .data_to_bram_4(data_to_bram_4_ntt),
    .data_to_bram_5(data_to_bram_5_ntt),

    // NTT 1 Butterfly
    .a_out_1(a_out_ntt_1),
    .b_out_1(b_out_ntt_1),
    // NTT 2 Butterfly
    .a_out_2(a_out_ntt_2),
    .b_out_2(b_out_ntt_2),
    // FFT and NTT 0 Butterfly
    .a_out_real(a_out_real), 
    .a_out_imag(is_fft ? a_out_imag : {10'dX, a_out_ntt_0}), 
    .b_out_real(b_out_real),
    .b_out_imag(is_fft ? b_out_imag : {10'dX, b_out_ntt_0})
  );
endmodule



