`timescale 1ns / 1ps

// input: unbuffered
// output: buffered
// latency: 2cc
(* keep_hierarchy = `KEEP_HIERARCHY *)
module ModSub #(
    parameter K = 54
  )
  (
    input clk,
    input [K-1:0] ina,
    input [K-1:0] inb,
    input [K-1:0] q,
    output [K-1:0] out
  );

  logic [K:0] integer_subtraction, integer_subtraction_1DP;
  assign integer_subtraction = ina - inb;
  always_ff @(posedge clk) begin
    integer_subtraction_1DP <= integer_subtraction;
  end

  logic [K-1:0] corrected, result_2DP;
  assign corrected = integer_subtraction_1DP + q;
  always_ff @(posedge clk) begin
    result_2DP <= integer_subtraction_1DP[K] ? corrected : integer_subtraction_1DP[K-1:0];
  end
  assign out = result_2DP;
endmodule
