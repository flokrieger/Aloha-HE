`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// this module converts the input from integer representation to floating-point representation
// the integer input is element of the mod ring with prime q (any prime with at most 54 bit works)
// this is optimized for double precision and only supports that
// latency: 2cc
(* keep_hierarchy = `KEEP_HIERARCHY *)
module IntToFlPDouble #(
    parameter LOGQ = 54
  )
  (
    input clk,
    input [LOGQ-1:0] q,
    input [`EXPONENT_BITS:0] scale_power,

    input [LOGQ-1:0] in,
    output [`OVERALL_BITS-1:0] result
  );
  `ifdef SINGLE_PRECISION
    assert(0); // not implemented yet
  `endif

  logic [LOGQ-1:0] floor_q_half;
  assign floor_q_half = {1'd0, q[LOGQ-1:1]};
  logic sign;
  assign sign = in > floor_q_half;

  logic [LOGQ-2:0] in_selected;
  assign in_selected = sign ? q - in : in;

  logic [`EXPONENT_BITS:0] scale_power_precomp_DP;
  always_ff @(posedge clk)
    scale_power_precomp_DP <= scale_power + `EXPONENT_BIAS + `SIGNIFICANT_BITS;

  /////// Pipeline stage ///////////
  logic [LOGQ-2:0] in_selected_1DP;
  logic sign_1DP;
  always_ff @(posedge clk) begin
    in_selected_1DP <= in_selected;
    sign_1DP <= sign;
  end

  logic [$clog2(LOGQ-1)-1:0] shift_value;
  logic input_is_zero;
  LeadingZeroCount #(.BITWIDTH(LOGQ-1)) leading_zero_count (
      .in(in_selected_1DP),
      .out(shift_value),
      .input_is_zero(input_is_zero)
    );
  
  /////// Pipeline stage ///////////
  logic [`SIGNIFICANT_BITS-1:0] in_selected_2DP;
  logic sign_2DP;
  logic [$clog2(LOGQ-1)-1:0] shift_value_2DP;
  logic input_is_zero_2DP;
  always_ff @(posedge clk) begin
    in_selected_2DP <= in_selected_1DP;
    sign_2DP <= sign_1DP;
    shift_value_2DP <= shift_value;
    input_is_zero_2DP <= input_is_zero;
  end

  logic [`SIGNIFICANT_BITS-1:0] significant;
  assign significant = in_selected_2DP << shift_value_2DP;
  logic [`EXPONENT_BITS-1:0] exponent;
  assign exponent = input_is_zero_2DP ? 'd0 : scale_power_precomp_DP - shift_value_2DP;

  assign result = {sign_2DP, exponent, significant};
  
endmodule
