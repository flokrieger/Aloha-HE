`timescale 1ns / 1ps

// This is the implementation of the IEEE-754 multiplier without subnormal
// number support
// input: unbuffered
// output: buffered
(* keep_hierarchy = `KEEP_HIERARCHY *)
module FLPMultiplier(
    input clk,
    input start,
    input [`OVERALL_BITS-1:0] a,
    input [`OVERALL_BITS-1:0] b,
    output [`OVERALL_BITS-1:0] result,
    output done,

    // integer multiplier interface
    output [53:0] mult_a,
    output [53:0] mult_b,
    input [107:0] int_mult_result
  );
  
  logic sign_a, sign_b;
  assign sign_a = a[`OVERALL_BITS-1];
  assign sign_b = b[`OVERALL_BITS-1];
  
  logic [`EXPONENT_BITS-1:0] exponent_a, exponent_b;
  assign exponent_a = a[`SIGNIFICANT_BITS+`EXPONENT_BITS-1:`SIGNIFICANT_BITS];
  assign exponent_b = b[`SIGNIFICANT_BITS+`EXPONENT_BITS-1:`SIGNIFICANT_BITS];
  
  logic [`SIGNIFICANT_BITS:0] significant_a, significant_b;
  logic implicit_bit_a, implicit_bit_b;
  assign implicit_bit_a = exponent_a != `EXPONENT_BITS'd0;
  assign implicit_bit_b = exponent_b != `EXPONENT_BITS'd0;
  assign significant_a = {implicit_bit_a, a[`SIGNIFICANT_BITS-1:0]};
  assign significant_b = {implicit_bit_b, b[`SIGNIFICANT_BITS-1:0]};
  
  logic sign_result;
  assign sign_result = sign_a ^ sign_b;

  logic [`EXPONENT_BITS:0] exponent_sum;
  assign exponent_sum = exponent_a + exponent_b;

  logic [`SIGNIFICANT_BITS+1:0] multiplied_significants_shifted;
  `ifdef SINGLE_PRECISION
    logic [57:0] multiplied_significants;
    // this internally buffers the inputs and has a latency of 3 registers
    IntMultiplier_24x34 multiplier(.clk(clk), .a(significant_a), .b({10'b0, significant_b}), .result(multiplied_significants));
    assign multiplied_significants_shifted = multiplied_significants[2*`SIGNIFICANT_BITS+1:`SIGNIFICANT_BITS];
  `else
    assign mult_a = {1'd0, significant_a};
    assign mult_b = {1'd0, significant_b};
    assign multiplied_significants_shifted = int_mult_result[2*`SIGNIFICANT_BITS+1:`SIGNIFICANT_BITS];
  `endif

  ////////////////////////// Pipeline stage ///////////////////
  logic sign_result_1DP, data_valid_1DP;
  logic [`EXPONENT_BITS:0] exponent_sum_1DP;
  `ifdef SINGLE_PRECISION
    DelayRegister #(.BITWIDTH(1), .CYCLE_COUNT(1)) data_valid_delay(.clk(clk), .in(start), .out(data_valid_1DP));
    DelayRegister #(.BITWIDTH(1), .CYCLE_COUNT(1)) sign_result_delay(.clk(clk), .in(sign_result), .out(sign_result_1DP));
    DelayRegister #(.BITWIDTH(`EXPONENT_BITS+1), .CYCLE_COUNT(1)) exponent_sum_delay(.clk(clk), .in(exponent_sum), .out(exponent_sum_1DP));
  `else
    DelayRegister #(.BITWIDTH(1), .CYCLE_COUNT(1+2)) data_valid_delay(.clk(clk), .in(start), .out(data_valid_1DP));
    DelayRegister #(.BITWIDTH(1), .CYCLE_COUNT(1+2)) sign_result_delay(.clk(clk), .in(sign_result), .out(sign_result_1DP));
    DelayRegister #(.BITWIDTH(`EXPONENT_BITS+1), .CYCLE_COUNT(1+2)) exponent_sum_delay(.clk(clk), .in(exponent_sum), .out(exponent_sum_1DP));
  `endif

  logic [`EXPONENT_BITS+1:0] exponent_uncorrected;
  assign exponent_uncorrected = {1'b0, exponent_sum_1DP} - `EXPONENT_BIAS;
  
  ////////////////////////// Pipeline stage ///////////////////
  logic sign_result_2DP, data_valid_2DP;
  logic [`EXPONENT_BITS+1:0] exponent_uncorrected_2DP;
  always_ff @(posedge clk) begin
    data_valid_2DP <= data_valid_1DP;
    sign_result_2DP <= sign_result_1DP;
    exponent_uncorrected_2DP <= exponent_uncorrected;
  end

  logic [`EXPONENT_BITS+1:0] exponent_corrected;
  assign exponent_corrected = exponent_uncorrected_2DP + `EXPONENT_BITS'd1;

  logic exponent_is_negative;
  assign exponent_is_negative = exponent_uncorrected_2DP[`EXPONENT_BITS+1];
  
  ////////////////////////// Pipeline stage ///////////////////
  logic sign_result_3DP, data_valid_3DP, exponent_is_negative_3DP;
  logic [`EXPONENT_BITS-1:0] exponent_uncorrected_3DP, exponent_corrected_3DP;
  always_ff @(posedge clk) begin
    data_valid_3DP <= data_valid_2DP;
    sign_result_3DP <= sign_result_2DP;
    exponent_is_negative_3DP <= exponent_is_negative;
    exponent_uncorrected_3DP <= (exponent_is_negative ? `EXPONENT_BITS'b0 : exponent_uncorrected_2DP[`EXPONENT_BITS-1:0]);
    exponent_corrected_3DP   <= (exponent_is_negative ? `EXPONENT_BITS'b0 : exponent_corrected[`EXPONENT_BITS-1:0]);
  end

  logic carry_bit;
  assign carry_bit = multiplied_significants_shifted[`SIGNIFICANT_BITS+1];

  logic [`EXPONENT_BITS-1:0] exponent_tmp;
  assign exponent_tmp = carry_bit ? exponent_corrected_3DP : exponent_uncorrected_3DP;

  logic significant_is_zero;
  assign significant_is_zero = multiplied_significants_shifted == {2'd0, `SIGNIFICANT_BITS'd0};

  logic zero_result;
  assign zero_result = exponent_is_negative_3DP || significant_is_zero || exponent_tmp == `EXPONENT_BITS'd0;

  logic [`SIGNIFICANT_BITS-1:0] significant_result;
  assign significant_result = carry_bit ? multiplied_significants_shifted[`SIGNIFICANT_BITS:1]
                                        : multiplied_significants_shifted[`SIGNIFICANT_BITS-1:0];
  
                             
  ////////////////////////// Pipeline stage ///////////////////
  logic sign_result_4DP, data_valid_4DP, zero_result_4DP;
  logic [`EXPONENT_BITS-1:0] exponent_tmp_4DP;
  logic [`SIGNIFICANT_BITS-1:0] significant_result_4DP;
  always_ff @(posedge clk) begin
    data_valid_4DP <= data_valid_3DP;
    sign_result_4DP <= sign_result_3DP;
    zero_result_4DP <= zero_result;
    exponent_tmp_4DP <= exponent_tmp;
    significant_result_4DP <= significant_result;
  end

  ////////////////////////// final Pipeline stage ///////////////////
  logic sign_result_5DP, data_valid_5DP;
  logic [`EXPONENT_BITS-1:0] exponent_result_5DP;
  logic [`SIGNIFICANT_BITS-1:0] significant_result_5DP;
  always_ff @(posedge clk) begin
    data_valid_5DP <= data_valid_4DP;
    sign_result_5DP <= sign_result_4DP;
    exponent_result_5DP <= zero_result_4DP ? `EXPONENT_BITS'd0 : exponent_tmp_4DP;
    significant_result_5DP <= zero_result_4DP ? `SIGNIFICANT_BITS'd0 : significant_result_4DP;
  end

  assign result = {sign_result_5DP, exponent_result_5DP, significant_result_5DP};
  assign done = data_valid_5DP;
  
endmodule
