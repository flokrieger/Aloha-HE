`timescale 1ns / 1ps

// input: unbuffered
// output: buffered
// latency: 2cc
(* keep_hierarchy = `KEEP_HIERARCHY *)
module ModAdd #(
    parameter K = 54
  )
  (
    input clk,
    input [K-1:0] ina,
    input [K-1:0] inb,
    input [K-1:0] q,
    output [K-1:0] out
  );

  logic [K:0] integer_addition, integer_addition_1DP;
  assign integer_addition = ina + inb;
  always_ff @(posedge clk) begin
    integer_addition_1DP <= integer_addition;
  end

  logic [K:0] corrected;
  assign corrected = integer_addition_1DP - q;

  logic [K-1:0] result_2DP;
  always_ff @(posedge clk) begin
    result_2DP <= corrected[K] ? integer_addition_1DP[K-1:0] : corrected[K-1:0];
  end
  assign out = result_2DP;
endmodule
