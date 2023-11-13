`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// performs a complex multiplication
// i.e.: (a_real + j*a_imag) * (b_real + j*b_imag) = 
//       = (a_real*b_real - a_imag*b_imag) + j(a_imag*b_real + a_real*b_imag)
// input: unbuffered
// output: buffered
(* keep_hierarchy = `KEEP_HIERARCHY *)
module ComplexMultiplier(
    input clk,
    input start,
    input [`OVERALL_BITS-1:0] a_real,
    input [`OVERALL_BITS-1:0] a_imag,
    input [`OVERALL_BITS-1:0] b_real,
    input [`OVERALL_BITS-1:0] b_imag,

    output [`OVERALL_BITS-1:0] a_x_b_real,
    output [`OVERALL_BITS-1:0] a_x_b_imag,

    output done,

    // shared integer multiplier interface:
    output [53:0] mult_a [0:3],
    output [53:0] mult_b [0:3],
    input [107:0] int_mult_result [0:3]
  );

  logic mult_done;
  logic [`OVERALL_BITS-1:0] ar_x_br, ar_x_bi, ai_x_br, ai_x_bi;

  FLPMultiplier mult_ar_x_br(
    .clk(clk),
    .start(start),
    .a(a_real),
    .b(b_real),
    .result(ar_x_br),
    .done(mult_done),

    .mult_a(mult_a[0]),
    .mult_b(mult_b[0]),
    .int_mult_result(int_mult_result[0])
  );
  FLPMultiplier mult_ar_x_bi(
    .clk(clk),
    .a(a_real),
    .b(b_imag),
    .result(ar_x_bi),
    .start(), 
    .done(),

    .mult_a(mult_a[1]),
    .mult_b(mult_b[1]),
    .int_mult_result(int_mult_result[1])
  );
  FLPMultiplier mult_ai_x_br(
    .clk(clk),
    .a(a_imag),
    .b(b_real),
    .result(ai_x_br),
    .start(), 
    .done(),

    .mult_a(mult_a[2]),
    .mult_b(mult_b[2]),
    .int_mult_result(int_mult_result[2])
  );
  FLPMultiplier mult_ai_x_bi(
    .clk(clk),
    .a(a_imag),
    .b(b_imag),
    .result(ai_x_bi),
    .start(), 
    .done(),

    .mult_a(mult_a[3]),
    .mult_b(mult_b[3]),
    .int_mult_result(int_mult_result[3])
  );

  FLPAdder #(.DO_SUBSTRACTION(1)) adder_real_result(
    .clk(clk),
    .start(mult_done),
    .a(ar_x_br),
    .b(ai_x_bi),
    .result(a_x_b_real),
    .done(done)
  );

  FLPAdder #(.DO_SUBSTRACTION(0)) adder_imag_result(
    .clk(clk),
    .a(ar_x_bi),
    .b(ai_x_br),
    .result(a_x_b_imag),
    .start(), 
    .done()
  );

endmodule