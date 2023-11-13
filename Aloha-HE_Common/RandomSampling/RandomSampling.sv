`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module RandomSampling #(
    parameter LOGN = 13,
    parameter LOGQ = 54,
    parameter M = 17,
    parameter W = 24
  )
  (
    input clk,
    input rst,
    input sample_errors, // 1 -> sample e0, e1, v; 0 -> sample pk1

    input [63:0] seed,
    input [3:0] current_k,
    input [M-1:0] qm,

    // write interface v
    output [LOGN-1:0] wr_addr_v,
    output [1:0]      wr_data_v,
    output            wea_v,

    // write interface e0
    output [LOGN-1:0] wr_addr_e0,
    output [5:0]      wr_data_e0,
    output            wea_e0,

    // write interface e1
    output [LOGN-1:0] wr_addr_e1,
    output [5:0]      wr_data_e1,
    output            wea_e1,

    // write interface pk1
    output [LOGN-1:0] wr_addr_pk1,
    output [LOGQ-1:0] wr_data_pk1,
    output            wea_pk1,

    output done
  );

  logic [63:0] random_out_DP;
  logic random_valid_DP;

  // e0 and e1 address generation
  logic [LOGN-1:0] addr_e_DP;
  logic e_sel_DP, e_done_internal_DP, e_sample_valid;
  always_ff @(posedge clk) begin
    if (rst)
      {e_done_internal_DP, e_sel_DP, addr_e_DP} <= 'd0;
    else if(e_sample_valid)
      {e_done_internal_DP, e_sel_DP, addr_e_DP} <= {e_done_internal_DP, e_sel_DP, addr_e_DP} + 1'd1;
  end
  assign e_sample_valid = random_valid_DP && !e_done_internal_DP;
  assign wr_addr_e0 = addr_e_DP;
  assign wr_addr_e1 = addr_e_DP;
  assign wea_e0 = e_sample_valid & ~e_sel_DP & sample_errors;
  assign wea_e1 = e_sample_valid &  e_sel_DP & sample_errors;
  
  // CBD post-processing:
  logic [4:0] hw_pos, hw_neg;
  HammingWeight positive_hw(.in(random_out_DP[20: 0]), .out(hw_pos));
  HammingWeight negative_hw(.in(random_out_DP[41:21]), .out(hw_neg));
  logic [5:0] hw_diff;
  logic [4:0] hw_neg_diff;
  assign hw_diff     = hw_pos - hw_neg;
  assign hw_neg_diff = hw_neg - hw_pos;
  logic [5:0] wr_data_e;
  assign wr_data_e[5] = hw_diff[5];
  assign wr_data_e[4:0] = hw_diff[5] ? hw_neg_diff[4:0] : hw_diff[4:0];
  assign wr_data_e0 = wr_data_e;
  assign wr_data_e1 = wr_data_e;


  // v, pk1 address generation:
  logic v_pk1_done_internal_DP, v_pk1_reject, v_pk1_sample_valid, v_reject, pk1_reject;
  logic [LOGN-1:0] addr_v_pk1_DP;
  always_ff @(posedge clk) begin
    if (rst)
      {v_pk1_done_internal_DP, addr_v_pk1_DP} <= 'd0;
    else if(v_pk1_sample_valid)
      {v_pk1_done_internal_DP, addr_v_pk1_DP} <= {v_pk1_done_internal_DP, addr_v_pk1_DP} + 1'd1;
  
    v_pk1_sample_valid <= random_valid_DP && !v_pk1_done_internal_DP && !v_pk1_reject;
  end
  assign v_pk1_reject = sample_errors ? v_reject : pk1_reject;
  
  assign wr_addr_v = addr_v_pk1_DP;
  assign wea_v = v_pk1_sample_valid & sample_errors & ~v_pk1_done_internal_DP;
  assign wr_addr_pk1 = addr_v_pk1_DP;
  assign wea_pk1 = v_pk1_sample_valid & ~sample_errors & ~v_pk1_done_internal_DP;

  // Ternary post-processing:
  logic [15:0] sampled_v_bits;
  assign sampled_v_bits = random_out_DP[63:48];
  assign v_reject = sampled_v_bits == 16'hffff;

  logic [1:0] wr_data_v_DP;
  always @(posedge clk) begin
    wr_data_v_DP <= sampled_v_bits < 16'h5555 ? 2'd0 :
                    sampled_v_bits < 16'haaaa ? 2'd1 : 2'd3;
  end
  assign wr_data_v = wr_data_v_DP;

  // Uniform post-processing:
  logic [LOGQ-1:0] q_DP;
  logic [3:0] shift_value_DP;
  always_ff @(posedge clk) begin
    q_DP <= {(13'h1fff >> (8-current_k)) , qm , {(W-1){1'd0}} , 1'd1};
    shift_value_DP <= 4'd8 - current_k;
  end

  logic [LOGQ-1:0] sampled_pk1_bits, wr_data_pk1_DP;
  assign sampled_pk1_bits = random_out_DP[LOGQ-1:0] >> shift_value_DP;
  assign pk1_reject = sampled_pk1_bits >= q_DP;
  always_ff @(posedge clk) begin
    wr_data_pk1_DP <= sampled_pk1_bits;
  end
  assign wr_data_pk1 = wr_data_pk1_DP;


  assign done = sample_errors ? e_done_internal_DP & v_pk1_done_internal_DP : v_pk1_done_internal_DP;

  // PRNG instance:
  logic [63:0] random_out;
  logic random_valid;
  TriviumAdapter trivium_adapter(
    .clk(clk),
    .rst(rst),
    .seed(seed),
    .random_out(random_out),
    .random_valid(random_valid));
  
  always_ff @(posedge clk) begin
    if(rst)
      random_valid_DP <= 'd0;
    else 
      random_valid_DP <= random_valid;
    
    random_out_DP <= random_out;
  end

endmodule