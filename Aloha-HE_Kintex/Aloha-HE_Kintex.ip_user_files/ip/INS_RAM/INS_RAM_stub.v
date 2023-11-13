// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct 30 13:54:04 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Kintex/Aloha-HE_Kintex.srcs/sources_1/ip/INS_RAM/INS_RAM_stub.v
// Design      : INS_RAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.1" *)
module INS_RAM(a, d, dpra, clk, we, qdpo_clk, qdpo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],d[41:0],dpra[3:0],clk,we,qdpo_clk,qdpo[41:0]" */;
  input [3:0]a;
  input [41:0]d;
  input [3:0]dpra;
  input clk;
  input we;
  input qdpo_clk;
  output [41:0]qdpo;
endmodule
