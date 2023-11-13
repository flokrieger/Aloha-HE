`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module IntToFlPWrapper #(
    parameter LOGN = 13,   // bit-size of polynomial coeficient addressing 
    parameter LOGQ = 54,   // maximum bit-size of one modulus

    parameter W = 24,      // word size of WL-mont red
    parameter M = 17       // number of non-zero bits in middle modulus
  )
  (
    input clk,
    input rst,
    input [3:0] current_k,
    input [M-1:0] q_m,
    input [`EXPONENT_BITS:0] scale_power,

    // message read bram:
    output [LOGN-1:0] bram_rd_addr,
    input [LOGQ-1:0] bram_rd_data,

    // fft write bram:
    output [LOGN-1:0] bram_wr_addr,
    output [2*`OVERALL_BITS-1:0] bram_wr_data,
    output bram_wea,

    output done
  );

  localparam BRAM_RD_LAT = 2;
  localparam IntToFlP_LAT = 2;

  logic [LOGQ-1:0] q;
  assign q = {(13'h1fff >> (8-current_k)) , q_m , {(W-1){1'd0}} , 1'd1};

  //////////// address generation //////////
  logic [LOGN-1:0] read_addr_DP;
  logic done_internal;
  always_ff @(posedge clk) begin
    if(rst)
      read_addr_DP <= 0;
    else if(~done_internal)
      read_addr_DP <= read_addr_DP + 1;
  end
  assign bram_rd_addr = read_addr_DP;
  assign done_internal = read_addr_DP == 'h1fff;
  DelayRegisterReset #(.BITWIDTH(1), .CYCLE_COUNT(BRAM_RD_LAT+IntToFlP_LAT)) done_delay (.clk(clk), .rst(rst), .in(done_internal), .out(done));
  DelayRegister #(.BITWIDTH(1),      .CYCLE_COUNT(BRAM_RD_LAT+IntToFlP_LAT)) wea_delay (.clk(clk), .in(~rst), .out(bram_wea));
  DelayRegister #(.BITWIDTH(LOGN),   .CYCLE_COUNT(BRAM_RD_LAT+IntToFlP_LAT)) addr_delay (.clk(clk), .in(read_addr_DP), .out(bram_wr_addr));

  logic [`OVERALL_BITS-1:0] flp_real_result;
  IntToFlPDouble #(.LOGQ(LOGQ)) int_to_flp (
    .clk(clk),
    .q(q),
    .scale_power(scale_power),
    .in(bram_rd_data),
    .result(flp_real_result)
  );

  //imaginary part is always zero:
  assign bram_wr_data = {flp_real_result, `OVERALL_BITS'd0};
endmodule
