`timescale 1ns / 1ps

// this module performs the word-level montgomery reduction for the selected parameter set
// delay is 2*3 + 1*4 + 1 = 11 cc; can get reduced to 10cc when applied after integer multiplier
(* keep_hierarchy = `KEEP_HIERARCHY *)
module MontRed #(
    parameter K = 54, // bit size of modulus
    parameter W = 24,
    parameter M = 17
  )
  (
    input clk,
    input [2*K-1:0] in,
    input [W-1:0] in_low, // expected to be valid one cycle before rest of integer multiplication result
    input [M-1:0] q_m,
    input [3:0] current_k,

    output [K-1:0] result
  );


  logic [2*K-W:0] T_stage1;
  MontRed_Stage #(
    .K(K), .M(M), .W(W),
    .T_BITS(2*K), .FIRST_STAGE(1)
  ) stage1 (
    .clk(clk),
    .in({in[2*K-1:W], in_low}),
    .q_m(q_m),
    .current_k(current_k),
    .T_result(T_stage1)
  );

  logic [2*K-2*W+1:0] T_stage2;
  MontRed_Stage #(
    .K(K), .M(M), .W(W),
    .T_BITS(2*K-W+1)
  ) stage2 (
    .clk(clk),
    .in(T_stage1),
    .q_m(q_m),
    .current_k(current_k),
    .T_result(T_stage2)
  );

  logic [K:0] T_stage3;
  MontRed_Stage #(
    .K(K), .M(M), .W(W),
    .T_BITS(2*K-2*W+2),
    .OUTPUT_SIZE(K+1)
  ) stage3 (
    .clk(clk),
    .in(T_stage2),
    .q_m(q_m),
    .current_k(current_k),
    .T_result(T_stage3)
  );

  logic [K:0] cond_subtraction;
  logic [K-1:0] q;
  assign q = {(13'h1fff >> (8-current_k)) , q_m , {(W-1){1'd0}} , 1'd1};
  assign cond_subtraction = T_stage3 - q;
  logic [K-1:0] result_DP;
  always_ff @(posedge clk)
    result_DP <= cond_subtraction[K] ? T_stage3[K-1:0] : cond_subtraction[K-1:0];

  assign result = result_DP;

endmodule
