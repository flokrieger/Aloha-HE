// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct 30 12:01:06 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Kintex/Aloha-HE_Kintex.srcs/sources_1/ip/MontRed_DSP_MultAdd/MontRed_DSP_MultAdd_stub.v
// Design      : MontRed_DSP_MultAdd
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.1" *)
module MontRed_DSP_MultAdd(CLK, CARRYIN, A, B, C, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,CARRYIN,A[24:0],B[17:0],C[47:0],P[47:0]" */;
  input CLK;
  input CARRYIN;
  input [24:0]A;
  input [17:0]B;
  input [47:0]C;
  output [47:0]P;
endmodule
