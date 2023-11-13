`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// This is the implementation of the IEEE-754 adder without subnormal
// number support
// input: unbuffered
// output: buffered
(* keep_hierarchy = `KEEP_HIERARCHY *)
module FLPAdder #(DO_SUBSTRACTION = 0) (
    input clk,
    input start,
    input [`OVERALL_BITS-1:0] a,
    input [`OVERALL_BITS-1:0] b,
    output [`OVERALL_BITS-1:0] result,
    output done
  );

  logic sign_result_2DP, data_valid_2DP, bit_shifted_out_2DP, denorm_underflow_2DP, signs_equal_2DP;
  logic [`EXPONENT_BITS-1:0] exponent_b_2DP;
  logic [`SIGNIFICANT_BITS:0] significant_b_2DP;
  logic signed [`SIGNIFICANT_BITS:0] denorm_significant_a_2DP;
  FLPAdderDenormalization #(.DO_SUBSTRACTION(DO_SUBSTRACTION)) denormalize (
    .clk(clk),
    .start(start),
    .a(a),
    .b(b),
    .sign_result_2DP(sign_result_2DP), 
    .data_valid_2DP(data_valid_2DP), 
    .bit_shifted_out_2DP(bit_shifted_out_2DP), 
    .denorm_underflow_2DP(denorm_underflow_2DP), 
    .signs_equal_2DP(signs_equal_2DP),
    .exponent_b_2DP(exponent_b_2DP),
    .significant_b_2DP(significant_b_2DP),
    .denorm_significant_a_2DP(denorm_significant_a_2DP),
    .switched_operands_2DP()
  );
  
  FLPAdderSigAddNormalize add_and_normalize(
    .clk(clk),
    .sign_result_2DP(sign_result_2DP), 
    .data_valid_2DP(data_valid_2DP), 
    .bit_shifted_out_2DP(bit_shifted_out_2DP), 
    .denorm_underflow_2DP(denorm_underflow_2DP), 
    .signs_equal_2DP(signs_equal_2DP),
    .exponent_b_2DP(exponent_b_2DP),
    .significant_b_2DP(significant_b_2DP),
    .denorm_significant_a_2DP(denorm_significant_a_2DP),

    .result(result),
    .done(done)
  );

endmodule

