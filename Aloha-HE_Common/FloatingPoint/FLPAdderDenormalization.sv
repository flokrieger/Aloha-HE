`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// performs the first half of FlP addition operand switch and denormalization
// input: unbuffered
// output: buffered
(* keep_hierarchy = `KEEP_HIERARCHY *)
module FLPAdderDenormalization #(DO_SUBSTRACTION = 0) (
    input clk,
    input start,
    input [`OVERALL_BITS-1:0] a,
    input [`OVERALL_BITS-1:0] b,

    output logic sign_result_2DP, data_valid_2DP, bit_shifted_out_2DP, denorm_underflow_2DP, signs_equal_2DP,
    output logic [`EXPONENT_BITS-1:0] exponent_b_2DP,
    output logic [`SIGNIFICANT_BITS:0] significant_b_2DP,
    output logic signed [`SIGNIFICANT_BITS:0] denorm_significant_a_2DP,
    output switched_operands_2DP
  );

  logic sign_a, sign_b;
  assign sign_a = a[`OVERALL_BITS-1];
  assign sign_b = DO_SUBSTRACTION ? ~b[`OVERALL_BITS-1] : b[`OVERALL_BITS-1];

  logic [`EXPONENT_BITS-1:0] exponent_a, exponent_b;
  assign exponent_a = a[`SIGNIFICANT_BITS+`EXPONENT_BITS-1:`SIGNIFICANT_BITS];
  assign exponent_b = b[`SIGNIFICANT_BITS+`EXPONENT_BITS-1:`SIGNIFICANT_BITS];
  
  logic [`SIGNIFICANT_BITS:0] significant_a, significant_b;
  logic implicit_bit_a, implicit_bit_b;
  assign implicit_bit_a = exponent_a != `EXPONENT_BITS'd0;
  assign implicit_bit_b = exponent_b != `EXPONENT_BITS'd0;
  assign significant_a = {implicit_bit_a, a[`SIGNIFICANT_BITS-1:0]};
  assign significant_b = {implicit_bit_b, b[`SIGNIFICANT_BITS-1:0]};
  
  logic signs_equal;
  assign signs_equal = sign_a == sign_b;

  // swap operands if necessary s.t. a is always the smaller operand
  logic a_smaller_b, switched_operands;
  assign a_smaller_b = a[`OVERALL_BITS-2:0] < b[`OVERALL_BITS-2:0];
  assign switched_operands = ~a_smaller_b;

  logic [`EXPONENT_BITS:0] diff_exponent;
  assign diff_exponent = exponent_b - exponent_a;

  ////////////// Pipeline stage /////////////////////////
  logic sign_result_1DP, signs_equal_1DP, data_valid_1DP, switched_operands_1DP;
  logic [`EXPONENT_BITS-1:0] diff_exponent_1DP, exponent_b_1DP;
  logic [`SIGNIFICANT_BITS:0] significant_a_1DP, significant_b_1DP;
  always_ff @(posedge clk) begin
    data_valid_1DP <= start;
    signs_equal_1DP <= signs_equal;
    switched_operands_1DP <= switched_operands;

    sign_result_1DP   <= switched_operands ? sign_a : sign_b;
    diff_exponent_1DP <= switched_operands ? -diff_exponent : diff_exponent[`EXPONENT_BITS-1:0];
    exponent_b_1DP    <= switched_operands ? exponent_a : exponent_b;
    significant_a_1DP <= switched_operands ? significant_b : significant_a;
    significant_b_1DP <= switched_operands ? significant_a : significant_b;
  end

  logic denorm_underflow;
  assign denorm_underflow = (diff_exponent_1DP > `SIGNIFICANT_BITS);

  logic [$clog2(`SIGNIFICANT_BITS+1)-1:0] denorm_shift_value;
  assign denorm_shift_value = diff_exponent_1DP[$clog2(`SIGNIFICANT_BITS+1)-1:0];

  logic bit_shifted_out;
  assign bit_shifted_out = denorm_shift_value == 6'd1 && !denorm_underflow ? significant_a_1DP[0] : 1'd0;

  logic [`SIGNIFICANT_BITS:0] denorm_significant_a;
  `ifdef SINGLE_PRECISION
    RShift23 rshft_23(.in(significant_a_1DP), .shift(denorm_shift_value), .result(denorm_significant_a));
  `else
    assign denorm_significant_a = significant_a_1DP >> denorm_shift_value;
  `endif

  ////////////// Pipeline stage /////////////////////////
  logic sign_result_internal_2DP, data_valid_internal_2DP, bit_shifted_out_internal_2DP, denorm_underflow_internal_2DP, signs_equal_internal_2DP, switched_operands_internal_2DP;
  logic [`EXPONENT_BITS-1:0] exponent_b_internal_2DP;
  logic [`SIGNIFICANT_BITS:0] significant_b_internal_2DP;
  logic signed [`SIGNIFICANT_BITS:0] denorm_significant_a_internal_2DP;
  always_ff @(posedge clk) begin
    data_valid_internal_2DP <= data_valid_1DP;
    sign_result_internal_2DP <= sign_result_1DP;
    signs_equal_internal_2DP <= signs_equal_1DP;

    switched_operands_internal_2DP <= switched_operands_1DP;
    denorm_underflow_internal_2DP <= denorm_underflow;
    bit_shifted_out_internal_2DP <= bit_shifted_out;

    exponent_b_internal_2DP <= exponent_b_1DP;
    denorm_significant_a_internal_2DP <= denorm_significant_a;
    significant_b_internal_2DP <= significant_b_1DP;
  end

  assign sign_result_2DP = sign_result_internal_2DP;
  assign data_valid_2DP = data_valid_internal_2DP;
  assign bit_shifted_out_2DP = bit_shifted_out_internal_2DP;
  assign denorm_underflow_2DP = denorm_underflow_internal_2DP;
  assign signs_equal_2DP = signs_equal_internal_2DP;
  assign exponent_b_2DP = exponent_b_internal_2DP;
  assign significant_b_2DP = significant_b_internal_2DP;
  assign denorm_significant_a_2DP = denorm_significant_a_internal_2DP;
  assign switched_operands_2DP = switched_operands_internal_2DP;

endmodule