`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module RNS #(
    parameter N = 8192,    // polynomial degree
    parameter LOGN = 13,   // bit-size of polynomial coeficient addressing 
    parameter LOGQ = 54,   // maximum bit-size of one modulus
    parameter LOGI = 4,    // 2*4 = 16 supported different moduli

    parameter W = 24,      // word-size of WL-Montgomery reduction in bits
    parameter L = 3,       // number of stages in WL-Montgomery reduction
    parameter M = 17,      // number of non-zero bits in modulus

    parameter ROM_BASE_ADDR = 0 // base address with metadata needed in this module
  )
  (
    input clk,
    input rst,
    input [LOGI-1:0] modulus_select,
    input [`EXPONENT_BITS:0] scale,

    input [3:0] current_k,
    input [M-1:0] qm,

    // fft bram:
    output [LOGN-1:0] bram_rd_addr,
    input [`OVERALL_BITS-1:0] bram_rd_data,

    // message write bram:
    output [LOGN-1:0] bram_wr_addr,
    output [LOGQ-1:0] bram_wr_data,
    output bram_wea,

    // error polynomials brams:
    output [LOGN-1:0] e0_bram_rd_addr,
    input [5:0] e0_bram_rd_data,
    output [LOGN-1:0] e1_bram_rd_addr,
    input [5:0] e1_bram_rd_data,
    output [LOGN-1:0] v_bram_rd_addr,
    input [1:0] v_bram_rd_data,

    output [LOGN-1:0] v_bram_wr_addr,
    output [LOGQ-1:0] v_bram_wr_data,
    output v_bram_wea,
    output [LOGN-1:0] e1_bram_wr_addr,
    output [LOGQ-1:0] e1_bram_wr_data,
    output e1_bram_wea,

    // auxiliary rom:
    output [LOGI+3-1:0] rom_addr,
    input [2*`OVERALL_BITS-1:0] rom_data,

    // connection to UnifiedTransformation to reuse reduction and multiplier
    output [107:0] significant,
    output [23:0] significant_low,
    output [LOGQ-1:0] mult_factor,
    input [LOGQ-1:0] mult_result,

    output done
  );

  localparam BRAM_RD_LAT = 2;
  localparam ModMul_LAT = 15;
  localparam MontRed_LAT = 11 + 2; // +2 bc of two additional registers in the UnifiedTwFctGen module
  localparam ModAdd_LAT = 2;

  localparam ENTRIES_PER_MODULUS = 4;
  logic [$clog2(ENTRIES_PER_MODULUS)-1:0] rom_offset;
  assign rom_addr = ROM_BASE_ADDR + {modulus_select, rom_offset[$clog2(ENTRIES_PER_MODULUS)-1:1]};
  logic rom_offset_lsb_delayed;
  DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) rom_addr_delay (.clk(clk), .in(rom_offset[0]), .out(rom_offset_lsb_delayed));

  logic [`EXPONENT_BITS:0] scale_power_DP;
  logic [LOGQ-1:0] q;
  logic [3:0] current_k_DP;
  logic [M-1:0] q_m_DP;
  always @(posedge clk) begin
    if(rst) begin
      scale_power_DP <= scale;
      q_m_DP <= qm;
      current_k_DP <= current_k;
    end
  end
  assign q = {(13'h1fff >> (8-current_k_DP)) , q_m_DP , {(W-1){1'd0}} , 1'd1};

  //////////// address generation //////////
  logic [LOGN-1:0] read_addr_DP;
  logic done_internal;
  always_ff @(posedge clk) begin
    if(rst)
      read_addr_DP <= 0;
    else if(~done_internal)
      read_addr_DP <= read_addr_DP + 1;
  end
  assign bram_rd_addr = read_addr_DP;
  assign done_internal = read_addr_DP == 'h1fff;
  DelayRegisterReset #(.BITWIDTH(1), .CYCLE_COUNT(ModMul_LAT+MontRed_LAT+BRAM_RD_LAT+ModMul_LAT+3)) done_delay (.clk(clk), .rst(rst), .in(done_internal), .out(done));


  /////// Mantissa and Exponent split-up ////////
  logic [`SIGNIFICANT_BITS:0] significant_in;
  logic [`EXPONENT_BITS-1:0] exponent_in;
  logic sign_in;
  assign significant_in = {1'd1, bram_rd_data[`SIGNIFICANT_BITS-1:0]};
  assign exponent_in = bram_rd_data[`OVERALL_BITS-2:`SIGNIFICANT_BITS];
  assign sign_in = bram_rd_data[`OVERALL_BITS-1];

  logic [`EXPONENT_BITS:0] e_unbiased;
  assign e_unbiased = exponent_in + scale_power_DP;

  logic [5:0] left_shift_values [3:0];
  assign left_shift_values[0] = e_unbiased;
  assign left_shift_values[1] = e_unbiased-40;
  assign left_shift_values[2] = e_unbiased-80;
  assign left_shift_values[3] = e_unbiased-120;
  logic [`EXPONENT_BITS:0] right_shift_value;
  assign right_shift_value = -e_unbiased-1;

  logic [1:0] multiplier_sel;
  assign multiplier_sel = e_unbiased < 40 || e_unbiased[`EXPONENT_BITS] == 1 ? 2'd0 :
                          e_unbiased < 80 ? 2'd1 :
                          e_unbiased < 120 ? 2'd2 : 2'd3;

  /////// Pipeline stage ///////
  logic [5:0] left_shift_value_1DP;
  logic [`SIGNIFICANT_BITS:0] significant_in_1DP;
  logic e_unbiased_is_negative_1DP;
  logic [1:0] multiplier_sel_1DP;
  logic right_shift_ovf_1DP;
  logic [`SIGNIFICANT_BITS:0] significant_right_shifted_1DP;
  always_ff @(posedge clk) begin
    left_shift_value_1DP <= left_shift_values[multiplier_sel];
    significant_in_1DP <= significant_in;
    e_unbiased_is_negative_1DP <= e_unbiased[`EXPONENT_BITS];
    multiplier_sel_1DP <= multiplier_sel;
    right_shift_ovf_1DP <= right_shift_value >= 53;
    significant_right_shifted_1DP <= significant_in >> right_shift_value[5:0];
  end

  logic [91:0] significant_shifted;
  logic bit_shifted_out;
  always_comb begin
    if(e_unbiased_is_negative_1DP) begin
      significant_shifted[`SIGNIFICANT_BITS-1:0] = right_shift_ovf_1DP ? 'd0 : (significant_right_shifted_1DP >> 1);
      significant_shifted[91:`SIGNIFICANT_BITS] = 'd0;
      bit_shifted_out = right_shift_ovf_1DP ? 'd0 : significant_right_shifted_1DP[0];
    end else begin
      significant_shifted = significant_in_1DP << left_shift_value_1DP;
      bit_shifted_out = 0;
    end
  end

  ////////// Pipeline stage /////////////
  logic [91:0] significant_shifted_1DP, significant_shifted_2DP;
  logic [1:0] multiplier_sel_nDP;
  logic ovf_1DP;
  always_ff @(posedge clk) begin
    {ovf_1DP, significant_shifted_1DP[W-1:0]} <= significant_shifted[W-1:0] + bit_shifted_out;
    significant_shifted_1DP[91:W] <= significant_shifted[91:W];
    significant_shifted_2DP[W-1:0] <= significant_shifted_1DP[W-1:0];
    significant_shifted_2DP[91:`SIGNIFICANT_BITS] <= significant_shifted_1DP[91:`SIGNIFICANT_BITS]; // this is not affected by addition
    significant_shifted_2DP[`SIGNIFICANT_BITS-1:W] <= significant_shifted_1DP[`SIGNIFICANT_BITS-1:W] + ovf_1DP;
  end

  DelayRegister #(.BITWIDTH(2), .CYCLE_COUNT(MontRed_LAT-BRAM_RD_LAT+1)) multiplier_sel_delay (.clk(clk), .in(multiplier_sel_1DP), .out(multiplier_sel_nDP));
  assign rom_offset = multiplier_sel_nDP;

  logic [LOGQ-1:0] multiplier_ina;
  assign multiplier_ina = rom_offset_lsb_delayed ? rom_data[2*LOGQ-1:LOGQ] : rom_data[LOGQ-1:0];
  
  // connection to montgomery reduction units and modmult inside UnifiedTransform
  assign significant = {16'd0, significant_shifted_2DP};
  assign significant_low = significant_shifted_1DP[W-1:0];
  assign mult_factor = multiplier_ina;

  logic sign_delayed;
  DelayRegister #(.BITWIDTH(1), .CYCLE_COUNT(ModMul_LAT+MontRed_LAT+2)) sign_delay (.clk(clk), .in(sign_in), .out(sign_delayed));
  logic [LOGQ-1:0] m_reduced, m_reduced_DP, e0_value_DP;
  assign m_reduced = sign_delayed && mult_result != 'd0 ? q-mult_result : mult_result;

  ////////// Pipeline stage /////////////
  always_ff @(posedge clk) begin
    m_reduced_DP <= m_reduced;
    e0_value_DP <= e0_bram_rd_data[5] == 1'd0 ? {49'd0, e0_bram_rd_data[4:0]} : q - e0_bram_rd_data[4:0];
  end

  ModAdd #(.K(LOGQ)) e0_adder (
    .clk(clk),
    .ina(m_reduced_DP),
    .inb(e0_value_DP),
    .q(q),
    .out(bram_wr_data)
  );

  logic valid;
  DelayRegisterReset #(.BITWIDTH(1), .CYCLE_COUNT(ModMul_LAT+MontRed_LAT+BRAM_RD_LAT+ModAdd_LAT+3)) valid_delay (.clk(clk), .rst(rst), .in(~rst), .out(valid));
  assign bram_wea = valid;

  logic [LOGN-1:0] write_addr;
  DelayRegister #(.BITWIDTH(LOGN), .CYCLE_COUNT(ModMul_LAT+MontRed_LAT+2)) e0_rd_addr_delay (.clk(clk), .in(read_addr_DP), .out(e0_bram_rd_addr));
  DelayRegister #(.BITWIDTH(LOGN), .CYCLE_COUNT(ModMul_LAT+MontRed_LAT+BRAM_RD_LAT+ModAdd_LAT+3)) write_addr_delay (.clk(clk), .in(read_addr_DP), .out(write_addr));
  assign bram_wr_addr = write_addr;

  // modular reduction of the error polynomials v and e1:
  logic [LOGN-1:0] e1_v_wr_addr, e1_v_rd_addr;
  logic e1_v_wea;
  RNSErrorPolys #(
    .N(N),
    .LOGN(LOGN),
    .LOGQ(LOGQ)
  ) rns_error_polys (
    .clk(clk),
    .rst(rst),
    .q(q),
    .read_addr_DP(read_addr_DP),
    .done_internal(done_internal),

    .error_bram_rd_addr(e1_v_rd_addr),
    .v_bram_rd_data(v_bram_rd_data),
    .e1_bram_rd_data(e1_bram_rd_data),

    .error_bram_wr_addr(e1_v_wr_addr),
    .v_bram_wr_data(v_bram_wr_data),
    .e1_bram_wr_data(e1_bram_wr_data),
    .error_bram_wea(e1_v_wea)
  );
  assign v_bram_wea = e1_v_wea;
  assign e1_bram_wea = e1_v_wea;
  assign v_bram_wr_addr = e1_v_wr_addr;
  assign e1_bram_wr_addr = e1_v_wr_addr;
  assign v_bram_rd_addr = e1_v_rd_addr;
  assign e1_bram_rd_addr = e1_v_rd_addr;


endmodule
