`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module RNSErrorPolys #(
    parameter N = 8192,    // polynomial degree
    parameter LOGN = 13,   // bit-size of polynomial coeficient addressing 
    parameter LOGQ = 54    // maximum bit-size of one modulus
  )
  (
    input clk,
    input rst,
    input [LOGQ-1:0] q,
    input [LOGN-1:0] read_addr_DP,
    input done_internal,

    output [LOGN-1:0] error_bram_rd_addr,
    input [1:0] v_bram_rd_data,
    input [5:0] e1_bram_rd_data,

    output [LOGN-1:0] error_bram_wr_addr,
    output [LOGQ-1:0] v_bram_wr_data,
    output [LOGQ-1:0] e1_bram_wr_data,
    output error_bram_wea
  );

  localparam BRAM_RD_LAT = 2;
  
  assign error_bram_rd_addr = read_addr_DP;

  logic [1:0] v_coeff;
  logic [5:0] e0_coeff, e1_coeff;
  assign v_coeff = v_bram_rd_data;
  assign e1_coeff = e1_bram_rd_data;

  // sign + magnitude representation:
  assign v_bram_wr_data = v_coeff[1] == 1'd0 ? {53'd0, v_coeff[0]} : {q[LOGQ-1:1], 1'd0}; // exploit structure of q: {q[LOGQ-1:1], 1'd0} == q-1
  assign e1_bram_wr_data = e1_coeff[5] == 1'd0 ? {49'd0, e1_coeff[4:0]} : q - e1_coeff[4:0];

  logic done_internal_DP;
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(1)) done_internal_delay (.clk(clk), .in(done_internal), .out(done_internal_DP));
  DelayRegisterReset #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) wea_delay (.clk(clk), .rst(rst), .in(~done_internal_DP), .out(error_bram_wea));
  DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(LOGN)) address_delay(.clk(clk), .in(read_addr_DP), .out(error_bram_wr_addr));
endmodule