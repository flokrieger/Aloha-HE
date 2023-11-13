`timescale 1ns / 1ps

(* keep_hierarchy = `KEEP_HIERARCHY *)
module IntMultiplier_24x34(
    input         clk,
    input  [23:0] a,
    input  [33:0] b,
    output [57:0] result
  );
  
  logic [16:0] b_high, b_low;
  assign b_high = b[33:17];
  assign b_low  = b[16: 0];
  
  logic [42:0] result_a_x_b_low;
  DSP_A_x_B dsp_a_x_b(.CLK(clk), .A({1'b0, a}), .B({1'b0, b_low}), .P(result_a_x_b_low));
  
  logic [43:0] result_a_x_b_high_p_C;
  DSP_A_x_B_p_C dsp_a_x_b_p_c(.CLK(clk), .A({1'b0, a}), .B({1'b0, b_high}), .C(result_a_x_b_low[41:17]), .P(result_a_x_b_high_p_C));
  
  logic [16:0] buffer_lower_bits;
  always_ff @(posedge clk)
    buffer_lower_bits <= result_a_x_b_low[16:0];
    
  assign result = {result_a_x_b_high_p_C[40:0], buffer_lower_bits};
      
endmodule
