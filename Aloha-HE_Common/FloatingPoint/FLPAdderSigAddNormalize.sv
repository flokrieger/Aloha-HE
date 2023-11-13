`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// performs the second half of FlP addition containing significant addition and renormalization
// input: unbuffered
// output: buffered
(* keep_hierarchy = `KEEP_HIERARCHY *)
module FLPAdderSigAddNormalize(
    input logic clk,
    input logic sign_result_2DP, data_valid_2DP, bit_shifted_out_2DP, denorm_underflow_2DP, signs_equal_2DP,
    input logic [`EXPONENT_BITS-1:0] exponent_b_2DP,
    input logic [`SIGNIFICANT_BITS:0] significant_b_2DP,
    input logic signed [`SIGNIFICANT_BITS:0] denorm_significant_a_2DP,

    output logic [`OVERALL_BITS-1:0] result,
    output logic done
  );

  logic [`SIGNIFICANT_BITS+1:0] signed_significant_a;
  assign signed_significant_a = denorm_underflow_2DP  ? {2'b0, `SIGNIFICANT_BITS'd0}
                                : signs_equal_2DP     ? {1'b0, denorm_significant_a_2DP} 
                                : bit_shifted_out_2DP ? {1'b1, ~denorm_significant_a_2DP}
                                : -{1'b0, denorm_significant_a_2DP};

  ////////////// Pipeline stage /////////////////////////
  logic sign_result_2aDP, data_valid_2aDP, bit_shifted_out_2aDP;
  logic [`EXPONENT_BITS-1:0] exponent_b_2aDP;
  logic [`SIGNIFICANT_BITS:0] significant_b_2aDP;
  logic [`SIGNIFICANT_BITS+1:0] signed_significant_a_2aDP;
  always_ff @(posedge clk) begin
    data_valid_2aDP <= data_valid_2DP;
    sign_result_2aDP <= sign_result_2DP;

    bit_shifted_out_2aDP <= bit_shifted_out_2DP;

    exponent_b_2aDP <= exponent_b_2DP;
    significant_b_2aDP <= significant_b_2DP;
    signed_significant_a_2aDP <= signed_significant_a;
  end

  logic [`SIGNIFICANT_BITS+1:0] significants_added;
  assign significants_added = signed_significant_a_2aDP + significant_b_2aDP;

  ////////////// Pipeline stage /////////////////////////
  logic sign_result_3DP, data_valid_3DP, bit_shifted_out_3DP;
  logic [`EXPONENT_BITS-1:0] exponent_b_3DP;
  logic [`SIGNIFICANT_BITS+1:0] significants_added_3DP;
  always_ff @(posedge clk) begin
    data_valid_3DP <= data_valid_2aDP;
    sign_result_3DP <= sign_result_2aDP;

    bit_shifted_out_3DP <= bit_shifted_out_2aDP;

    exponent_b_3DP <= exponent_b_2aDP;
    significants_added_3DP <= significants_added;
  end

  logic carry_bit, significant_is_zero;
  assign carry_bit = significants_added_3DP[`SIGNIFICANT_BITS+1];

  logic [$clog2(`SIGNIFICANT_BITS+1)-1:0] leading_zeros;
  LeadingZeroCount #(.BITWIDTH(`SIGNIFICANT_BITS+1)) leading_zero_cnt(.in(significants_added_3DP[`SIGNIFICANT_BITS:0]),
                                                                      .out(leading_zeros), 
                                                                      .input_is_zero(significant_is_zero));
  
  logic [`SIGNIFICANT_BITS-1:0] significant_tmp_result;
  assign significant_tmp_result = carry_bit ? significants_added_3DP[`SIGNIFICANT_BITS:1]
                                            : significants_added_3DP[`SIGNIFICANT_BITS-1:0];

  ////////////// Pipeline stage /////////////////////////
  logic sign_result_4DP, data_valid_4DP, bit_shifted_out_4DP;
  logic [`EXPONENT_BITS-1:0] exponent_b_4DP;
  logic carry_bit_4DP, significant_is_zero_4DP;
  logic [`SIGNIFICANT_BITS-1:0] significant_tmp_result_4DP;
  logic [$clog2(`SIGNIFICANT_BITS+1)-1:0] leading_zeros_4DP;
  always_ff @(posedge clk) begin
    data_valid_4DP <= data_valid_3DP;
    sign_result_4DP <= sign_result_3DP;

    bit_shifted_out_4DP <= bit_shifted_out_3DP;
    carry_bit_4DP <= carry_bit;
    significant_is_zero_4DP <= significant_is_zero;

    exponent_b_4DP <= exponent_b_3DP;
    significant_tmp_result_4DP <= significant_tmp_result;
    leading_zeros_4DP <= leading_zeros;
  end

  logic [`EXPONENT_BITS:0] exponent_minus_leading_zeros;
  assign exponent_minus_leading_zeros = exponent_b_4DP - {3'd0, leading_zeros_4DP};
  logic exponent_negative;
  assign exponent_negative = exponent_minus_leading_zeros[`EXPONENT_BITS];
  logic [$clog2(`SIGNIFICANT_BITS+1):0] norm_shift_value;
  assign norm_shift_value = (exponent_negative ? exponent_b_4DP[$clog2(`SIGNIFICANT_BITS+1)-1:0]
                                               : leading_zeros_4DP) - 1'd1;

  
  
  ////////////// Pipeline stage /////////////////////////
  logic sign_result_5DP, data_valid_5DP, bit_shifted_out_5DP;
  logic [`SIGNIFICANT_BITS-1:0] significant_tmp_result_5DP;
  logic [$clog2(`SIGNIFICANT_BITS+1)-1:0] norm_shift_value_5DP;
  logic leftshift_needed_5DP, carry_bit_5DP, exponent_result_is_zero_5DP, norm_shift_value_msb_5DP;
  logic [`EXPONENT_BITS-1:0] exponent_b_5DP;
  logic [`EXPONENT_BITS-1:0] exponent_minus_leading_zeros_5DP;
  always_ff @(posedge clk) begin
    data_valid_5DP <= data_valid_4DP;
    sign_result_5DP <= sign_result_4DP;

    bit_shifted_out_5DP <= bit_shifted_out_4DP;
    leftshift_needed_5DP <= !carry_bit_4DP && !significant_is_zero_4DP && !exponent_negative && norm_shift_value[$clog2(`SIGNIFICANT_BITS+1)] == 1'd0;

    significant_tmp_result_5DP <= significant_tmp_result_4DP;
    norm_shift_value_5DP <= norm_shift_value[$clog2(`SIGNIFICANT_BITS+1)-1:0];
    carry_bit_5DP <= carry_bit_4DP;
    exponent_b_5DP <= exponent_b_4DP;
    exponent_result_is_zero_5DP <= significant_is_zero_4DP || exponent_negative;
    norm_shift_value_msb_5DP <= norm_shift_value[$clog2(`SIGNIFICANT_BITS+1)] == 1'd0;
    exponent_minus_leading_zeros_5DP <= exponent_minus_leading_zeros[`EXPONENT_BITS-1:0];
  end

  logic [`EXPONENT_BITS-1:0] exponent_result;
  always_comb begin
    if (carry_bit_5DP) 
      exponent_result = exponent_b_5DP + 1'd1;
    else if (exponent_result_is_zero_5DP)
      exponent_result = `EXPONENT_BITS'd0;
    else if (norm_shift_value_msb_5DP)
      exponent_result = exponent_minus_leading_zeros_5DP;
    else
      exponent_result = exponent_b_5DP;
  end

  logic [`SIGNIFICANT_BITS-1:0] significant_shifted_one;
  assign significant_shifted_one = {significant_tmp_result_5DP[`SIGNIFICANT_BITS-2:0], bit_shifted_out_5DP};

  logic [`SIGNIFICANT_BITS-1:0] significant_result, significant_shifted;
  `ifdef SINGLE_PRECISION
    LShift22 lshft_22(.in(significant_shifted_one), .shift(norm_shift_value_5DP), .result(significant_shifted));
  `else
    assign significant_shifted = significant_shifted_one << norm_shift_value_5DP;
  `endif
  assign significant_result = leftshift_needed_5DP ? significant_shifted : significant_tmp_result_5DP;
  
  ////////////// final pipeline stage /////////////////////////
  logic sign_result_6DP, data_valid_6DP;
  logic [`EXPONENT_BITS-1:0] exponent_result_6DP;
  logic [`SIGNIFICANT_BITS-1:0] significant_result_6DP;
  always_ff @(posedge clk) begin
    data_valid_6DP <= data_valid_5DP;
    sign_result_6DP <= sign_result_5DP;

    exponent_result_6DP <= exponent_result;
    significant_result_6DP <= significant_result;
  end

  assign result = {sign_result_6DP, exponent_result_6DP,  exponent_result_6DP != `EXPONENT_BITS'd0 ? significant_result_6DP : `SIGNIFICANT_BITS'd0};
  assign done = data_valid_6DP;
endmodule