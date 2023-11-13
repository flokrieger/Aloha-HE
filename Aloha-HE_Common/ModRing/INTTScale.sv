`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// performs in*2^(-1) mod q efficiently
// latency: 2cc
(* keep_hierarchy = `KEEP_HIERARCHY *)
module INTTScale #(
    parameter LOGQ = 54,
    parameter W = 24,
    parameter M = 17
  )
  (
    input clk,
    input  [LOGQ-1:0] in,
    input  [LOGQ-1:0] q,
    output [LOGQ-1:0] out
  );

  localparam MODADD_LAT = 2;
    
  logic [LOGQ-1:0] in_shifted_D, in_shifted_2DP;
  assign in_shifted_D = {1'b0, in[LOGQ-1:1]};
  DelayRegister #(.CYCLE_COUNT(MODADD_LAT), .BITWIDTH(LOGQ)) in_shifted_delay (.clk(clk), .in(in_shifted_D), .out(in_shifted_2DP));
  logic take_adder_result;
  DelayRegister #(.CYCLE_COUNT(MODADD_LAT), .BITWIDTH(1)) sel_delay (.clk(clk), .in(in[0]), .out(take_adder_result));
  
  logic [LOGQ-1:0] mod_inv_2;
  assign mod_inv_2 = {1'd0, q[LOGQ-1:2], 1'd1}; // 2^(-1) mod q = (q+1)/2

  logic [LOGQ-1:0] adder_out_D;
  ModAdd #(.K(LOGQ)) adder (
    .clk(clk),
    .ina(in_shifted_D),
    .inb(mod_inv_2),
    .q(q),
    .out(adder_out_D)
  );

  assign out = take_adder_result ? adder_out_D : in_shifted_2DP;

endmodule
