`timescale 1ns / 1ps

// this module performs one iteration of the word-level montgomery reduction for special primes
//    q = 2^(current_k+46) - q_m * 2^W + 1
// depending on the size of input parameters, the output parameters are selected and the usage of 
//    internal DSP resources are determined 
(* keep_hierarchy = `KEEP_HIERARCHY *)
module MontRed_Stage #(
    // when changing them, need adapt DSP unit accordingly
	  parameter K = 54,
    parameter M = 17, // bit-size of q_m
    parameter W = 24, // word size in bits

    // this changes in each iteration:
    parameter T_BITS = 0, // bit-size of input in current stage
    parameter OUTPUT_SIZE = T_BITS-W+1,

    parameter FIRST_STAGE = 0
  )
  (
    input clk,
    input [T_BITS-1:0] in,
    input [M-1:0] q_m,
    input [3:0] current_k, // 0->46, 1->47, ..., 8->54

    output [OUTPUT_SIZE-1:0] T_result
  );

  localparam T_HIGH_BITS = T_BITS - W;
  localparam DSP_LAT = 3; // latency of the DSPs

  
  logic [T_BITS-1-W:0] T_high;
  logic [W-1:0] T_low;
  assign T_low = in[W-1:0];
  assign T_high = in[T_BITS-1:W];


  logic [W-1:0] T2;
  assign T2 = -T_low;
  logic c_in;
  assign c_in = T2[W-1] | T_low[W-1];


  
  if (T_HIGH_BITS < 48) begin // addition of T_high can be done inside DSP
    logic signed [OUTPUT_SIZE-1:0] result_DP;
    logic signed [W+M+1:0] t2_x_qm_p_th;
    MontRed_DSP_MultAdd dsp_mult_add(.CLK(clk), .CARRYIN(c_in), .A({1'd0, T2}), .B({1'd1,q_m}), .C({'d0, T_high}), .P(t2_x_qm_p_th));

    logic [W-1:0] T2_delayed_DP;
    DelayRegister #(.BITWIDTH(W), .CYCLE_COUNT(DSP_LAT)) T2_delay(
      .clk(clk),
      .in(T2),
      .out(T2_delayed_DP)
    );

    logic signed [OUTPUT_SIZE:0] T2_shifted;
    assign T2_shifted = ((T2_delayed_DP << (46-W)) << current_k);
    always_ff @(posedge clk) begin
      result_DP <= t2_x_qm_p_th + T2_shifted;
    end
    assign T_result = result_DP;

  end else begin // addition of T_high is done outside DSP
    logic signed [T_HIGH_BITS:0] result_DP;

    logic [T_BITS-1-W:0] T_high_1DP, T_high_2DP;
    logic [W+8-1:0] T2_1DP;
    logic c_in_1DP;
    always_ff @(posedge clk) begin
      T2_1DP <= T2 << current_k;
      c_in_1DP <= c_in;
    end

    // in the first stage the lower W bits are ready one cc earlier -> no buffering of T_high needed then
    if(FIRST_STAGE) begin
      assign T_high_1DP = T_high;      
    end else begin
      always_ff @(posedge clk)
          T_high_1DP <= T_high;
    end

    logic signed [W+M+1:0] t2_x_qm;
    MontRed_DSP_Mult dsp_mult(.CLK(clk), .A({1'd0, T2}), .B({1'd1, q_m}), .P(t2_x_qm));

    logic [T_HIGH_BITS:0] T2_p_Th;
    assign T2_p_Th = T_high_1DP + (T2_1DP << (46-W)) + c_in_1DP; 

    logic signed [T_HIGH_BITS:0] T2_p_Th_delayed_DP;
    DelayRegister #(.BITWIDTH(T_HIGH_BITS+1), .CYCLE_COUNT(DSP_LAT-2)) T2_p_Th_delay(
      .clk(clk),
      .in(T2_p_Th),
      .out(T2_p_Th_delayed_DP)
    );

    always_ff @(posedge clk) begin
      result_DP <=  T2_p_Th_delayed_DP + t2_x_qm;
    end

    assign T_result = result_DP;
  end

endmodule
