`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module Expand #(
    parameter LOGN = 13
  )
  (
    input clk,
    input rst,

    input do_expand,

    // software interface:
    input [LOGN-1:0]            addr_from_sw,
    input [2*`OVERALL_BITS-1:0] data_from_sw,
    input                       wea_from_sw, // this wont stay high for more than 1cc (re and im part are sent separately)

    // FFT BRAM banks:
    output [LOGN-2:0]            wr_addr_bank0,
    output [2*`OVERALL_BITS-1:0] wr_data_bank0,
    output                       wea_bank0,
    output [LOGN-2:0]            wr_addr_bank1,
    output [2*`OVERALL_BITS-1:0] wr_data_bank1,
    output                       wea_bank1
  );

  localparam LOGM = LOGN+1;
  localparam M = 2**LOGM;

  logic wea_from_sw_1DP, update_counter, wea_internal;
  logic [LOGM-1:0] pos_ctr_DP;
  always_ff @(posedge clk) begin
    wea_from_sw_1DP <= wea_from_sw;
    update_counter <= wea_internal;

    if(rst)
      pos_ctr_DP <= 'd1;
    else if(update_counter)
      pos_ctr_DP <= (pos_ctr_DP << 1) + pos_ctr_DP;
  end

  assign wea_internal = wea_from_sw_1DP == 'd0 && wea_from_sw == 'd1;
  assign wea_bank0 = do_expand ? wea_internal : wea_from_sw && addr_from_sw[0] == 0;
  assign wea_bank1 = do_expand ? wea_internal : wea_from_sw && addr_from_sw[0] == 1;

  logic [LOGN-1:0] index0, index1;
  logic [LOGM-1:0] br_in0, br_in1;
  assign br_in0 = pos_ctr_DP-1'd1;
  assign br_in1 = M-1'd1-pos_ctr_DP;
  BitReverse #(.BITWIDTH(LOGN)) index0_reverse (.in(br_in0[LOGM-1:1]), .out(index0));
  BitReverse #(.BITWIDTH(LOGN)) index1_reverse (.in(br_in1[LOGM-1:1]), .out(index1));
  always_ff @(posedge clk) assert(index0[0] != index1[0] || rst);
  
  logic switch_brams;
  assign switch_brams = index0[0];
  assign wr_addr_bank0 = do_expand ? (switch_brams ? index1[LOGN-1:1] : index0[LOGN-1:1]) : addr_from_sw[LOGN-1:1];
  assign wr_addr_bank1 = do_expand ? (switch_brams ? index0[LOGN-1:1] : index1[LOGN-1:1]) : addr_from_sw[LOGN-1:1];

  assign wr_data_bank0 = {data_from_sw[2*`OVERALL_BITS-1:`OVERALL_BITS], do_expand ? (data_from_sw[`OVERALL_BITS-1] ^  switch_brams) : data_from_sw[`OVERALL_BITS-1], data_from_sw[`OVERALL_BITS-2:0]};
  assign wr_data_bank1 = {data_from_sw[2*`OVERALL_BITS-1:`OVERALL_BITS], do_expand ? (data_from_sw[`OVERALL_BITS-1] ^ ~switch_brams) : data_from_sw[`OVERALL_BITS-1], data_from_sw[`OVERALL_BITS-2:0]};

endmodule
