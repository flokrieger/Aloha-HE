`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// performs GS-FFT butterfly operation
//  a_in_real + j*a_in_imag ----\-/|+|-- a_out_real + j*a_out_imag
//                               X
//  b_in_real + j*b_in_imag ----/-\|-|--|x|- b_out_real + j*b_out_imag
// load and store logic needs to make sure to deliver inputs / twiddle factors and consume results in right point in time
// input: unbuffered
// output: buffered
(* keep_hierarchy = `KEEP_HIERARCHY *)
module FFTButterfly(
    input clk,
    input start,
    input use_ct,
    input [`OVERALL_BITS-1:0] a_in_real,
    input [`OVERALL_BITS-1:0] a_in_imag,
    input [`OVERALL_BITS-1:0] b_in_real,
    input [`OVERALL_BITS-1:0] b_in_imag,

    input [`OVERALL_BITS-1:0] tw_real,
    input [`OVERALL_BITS-1:0] tw_imag,

    output [`OVERALL_BITS-1:0] a_out_real,
    output [`OVERALL_BITS-1:0] a_out_imag,
    output [`OVERALL_BITS-1:0] b_out_real,
    output [`OVERALL_BITS-1:0] b_out_imag,

    output done,

    // integer multiplier interface:
    output [53:0] mult_a [0:3],
    output [53:0] mult_b [0:3],
    input [107:0] int_mult_result [0:3]
  );

  /////////////////////// Add stage //////////////////////

  logic [`OVERALL_BITS-1:0] a_m_b_real_1DP, a_m_b_imag_1DP, mul_out_real_1DP, mul_out_imag_1DP;
  logic [`OVERALL_BITS-1:0] a_m_b_real, a_m_b_imag;
  logic add_done;

  FFTButterflyAddStage add_stage(
    .clk(clk),
    .start(start),
    .a_real(a_in_real),
    .a_imag(a_in_imag),
    .b_real(mul_out_real_1DP),
    .b_imag(mul_out_imag_1DP),

    .a_p_b_real(a_out_real),
    .a_p_b_imag(a_out_imag),
    .a_m_b_real(a_m_b_real),
    .a_m_b_imag(a_m_b_imag),

    .done(add_done)
  );

  ///////////////////// Mult stage ///////////////////////////
  logic [`OVERALL_BITS-1:0] mul_out_real, mul_out_imag;
  logic add_done_1DP, add_done_2DP;
  always_ff @(posedge clk)begin
    a_m_b_real_1DP <= use_ct ? b_in_real : a_m_b_real;
    a_m_b_imag_1DP <= use_ct ? b_in_imag : a_m_b_imag;
    mul_out_real_1DP <= use_ct ? mul_out_real : b_in_real;
    mul_out_imag_1DP <= use_ct ? mul_out_imag : b_in_imag;
    add_done_1DP <= add_done;
    add_done_2DP <= add_done_1DP;
  end

  ComplexMultiplier tw_factor_mult(
    .clk(clk),
    .start(add_done_2DP),
    .a_real(a_m_b_real_1DP),
    .a_imag(a_m_b_imag_1DP),
    .b_real(tw_real),
    .b_imag(tw_imag),

    .a_x_b_real(mul_out_real),
    .a_x_b_imag(mul_out_imag),

    .done(done),

    .mult_a(mult_a),
    .mult_b(mult_b),
    .int_mult_result(int_mult_result)
  );

  assign b_out_real = use_ct ? a_m_b_real : mul_out_real;
  assign b_out_imag = use_ct ? a_m_b_imag : mul_out_imag;

endmodule