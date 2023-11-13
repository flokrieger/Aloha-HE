`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// performs multiplication followed by addition:
// result = a*b + c mod q (special primes only)
(* keep_hierarchy = `KEEP_HIERARCHY *)
module PWM #(
    parameter LOGQ = 54,
    parameter LOGN = 13,
    parameter W = 24,
    parameter M = 17
  )
  (
    input clk,
    input rst,

    input [M-1:0] q_m,
    input [3:0] current_k,

    // a bram read port (v / C1):
    output [LOGN-1:0] a_bram_rd_addr,
    input  [LOGQ-1:0] a_bram_rd_data,

    // b bram read port (pk0, pk1 / sk):
    output [LOGN-1:0] b_bram_rd_addr,
    input  [LOGQ-1:0] b0_bram_rd_data, // pk0, sk
    input  [LOGQ-1:0] b1_bram_rd_data, // pk1

    // c bram read port (m, e1 / C0):
    output [LOGN-1:0] c_bram_rd_addr,
    input  [LOGQ-1:0] c0_bram_rd_data, // m, C0
    input  [LOGQ-1:0] c1_bram_rd_data, // e1

    // result bram write port:
    output [LOGN-1:0] result_bram_wr_addr,
    output [LOGQ-1:0] result0_bram_wr_data, // C0, m
    output [LOGQ-1:0] result1_bram_wr_data, // C1
    output result_bram_wea,

    // connect to NTT BF 0
    output [LOGQ-1:0] pwm_bf0_ina,
    output [LOGQ-1:0] pwm_bf0_inb,
    output [LOGQ-1:0] pwm_bf0_tw,
    input [LOGQ-1:0] pwm_bf0_result,

    // connect to NTT BF 2
    output [LOGQ-1:0] pwm_bf1_ina,
    output [LOGQ-1:0] pwm_bf1_inb,
    output [LOGQ-1:0] pwm_bf1_tw,
    input [LOGQ-1:0] pwm_bf1_result,

    output done
  );

  localparam MODMUL_LAT = 15;
  localparam MODADD_LAT = 2;
  localparam BRAM_RD_LAT = 2;
  

  //////////// address generation //////////
  logic [LOGN-1:0] read_addr_DP;
  logic done_internal;
  always_ff @(posedge clk) begin
    if(rst)
      read_addr_DP <= 0;
    else if(~done_internal)
      read_addr_DP <= read_addr_DP + 1;
  end
  assign a_bram_rd_addr = read_addr_DP;
  assign b_bram_rd_addr = read_addr_DP;
  assign done_internal = read_addr_DP == 'h1fff;
  DelayRegister #(.CYCLE_COUNT(MODMUL_LAT), .BITWIDTH(LOGN)) c_rd_addr_delay (.clk(clk), .in(read_addr_DP), .out(c_bram_rd_addr));
  DelayRegister #(.CYCLE_COUNT(MODMUL_LAT+BRAM_RD_LAT+MODADD_LAT), .BITWIDTH(LOGN)) result_wr_addr_delay (.clk(clk), .in(read_addr_DP), .out(result_bram_wr_addr));
  DelayRegisterReset #(.CYCLE_COUNT(MODMUL_LAT+BRAM_RD_LAT+MODADD_LAT), .BITWIDTH(1)) wea_delay (.clk(clk), .rst(rst), .in(~rst), .out(result_bram_wea));
  DelayRegisterReset #(.CYCLE_COUNT(MODMUL_LAT+BRAM_RD_LAT+MODADD_LAT), .BITWIDTH(1)) done_delay (.clk(clk), .rst(rst), .in(done_internal), .out(done));

  assign pwm_bf0_ina = c0_bram_rd_data;
  assign pwm_bf0_inb = a_bram_rd_data;
  assign pwm_bf0_tw = b0_bram_rd_data;
  assign result0_bram_wr_data = pwm_bf0_result;

  assign pwm_bf1_ina = c1_bram_rd_data;
  assign pwm_bf1_inb = a_bram_rd_data;
  assign pwm_bf1_tw = b1_bram_rd_data;
  assign result1_bram_wr_data = pwm_bf1_result;


endmodule
