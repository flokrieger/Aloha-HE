`timescale 1ns / 1ps

// latency is 5 + 10 = 15 cc
(* keep_hierarchy = `KEEP_HIERARCHY *)
module ModMul #(
    parameter K = 54,
    parameter W = 24,
    parameter M = 17
  )
  (
    input clk,
    input [K-1:0] ina,
    input [K-1:0] inb,
    input [M-1:0] q_m,
    input [3:0] current_k,

    output [K-1:0] out,

    // Integer Multiplier interface
    output [53:0] mult_a,
    output [53:0] mult_b,
    input [107:0] int_mult_result,
    input [23:0] int_mult_result_low
  );

  assign mult_a = ina;
  assign mult_b = inb;

  MontRed #(
    .K(54)
  ) reduction (
    .clk(clk),
    .in(int_mult_result),
    .in_low(int_mult_result_low),
    .q_m(q_m),
    .current_k(current_k),
    .result(out)
  );

endmodule
