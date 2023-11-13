// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Oct 31 15:48:03 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DSP_A_x_B_doublebuffer_sim_netlist.v
// Design      : DSP_A_x_B_doublebuffer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DSP_A_x_B_doublebuffer,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [20:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [6:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [27:0]P;

  wire [20:0]A;
  wire [6:0]B;
  wire CLK;
  wire [27:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "21" *) 
  (* C_B_WIDTH = "7" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "108" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "27" *) 
  (* C_REG_CONFIG = "00000000000011000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_17 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "21" *) (* C_B_WIDTH = "7" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "108" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "27" *) (* C_REG_CONFIG = "00000000000011000011000000000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_17
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [20:0]A;
  input [6:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [27:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [20:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [6:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [27:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "21" *) 
  (* C_B_WIDTH = "7" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "108" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "27" *) 
  (* C_REG_CONFIG = "00000000000011000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_17_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nDT0FFr3kgAnVEb2awIM3BnKUBc7yihoXB0vfPof9ml3qiHsywja1jzpI0JL5TCkL5Vim5+pfP8I
0LoVeSlLdw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
leuQs1hhDH9+hOOQlz+rNh7VdTud8SM3XjvAtbigjfVXcA5aNVJUbTOxuEGUipSwD4xg6vAQhUNU
DDOXTaF36Kfc7A+qxERpwYqe3DoxX4tLp0gmxRsyUkB1xGkORCW/PFoyj32u2V5IiZ/5p/7rUXhw
gZ2aWWBj+bTQrQ0xwb8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ypbhn2W+iOZPt4pWarhni35O4FaP/76+bnxHXqRCMcOP8Qjoaah4eM0O2O/m3jnsQelmsTpYhA2O
6tnq7o+aOSa1Yrf7o8mke23hE7jOca1t8DqUxIHD+bvTrSeXLaRubFyUjUy/O8kNjDSJ9GZKD86P
xtVU6jm1cp3nuuD/pAPERRV13+MWckBp6glo9OlCWgTV/FM2zC9q5vLom2BOuzWz9mFFpmhKyNgj
NXhV/3gG/f16RvoR/hUdtXEPEc4WmUePjU8eT8LCLc5DHf/pDJM5vO0ier7HAAtAwPkXcxSHQK4X
NNBGzw3GV+MN9Y0abcvzkNo7bm0Vl9iCaMXOzQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hKfQEFSkz1+iUXEzpGZQXnEjl6Xu87VajUqqo6psFiQuSetWUEZHKUb5bIenWv9GpqyX444Y8Wf+
YkDM3axnFIfLHDX0RU410ylCx1Ip9IHSAk/Az7yTYCh2qTkhycA2wAVMaINYlXvVv9gDSWvLvNAl
tKInavD4D14joDZL1OhOHMaaei622MQt+uJwNXP0U+ojMJTJghCc7YYo3BY2IKwaf1EUWVcyPhTl
zQJ/4gRsDsVR8J8YdIEEMybZHxhCxL+O6pkLMTcpEctoRiYD7aDJB0koeBrsYHMGER2PRsbfFLAN
GZCnHjADfCfMNgsJkVG7gRGAaLFQEESPI1yW8g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mStClLzet5qWZ6xyWOxCXWIOJpxoFFAdb87C9h5/A+BwbXHdFkDYgyR/p4SRYfWVFP/21toTRpVF
O+BaFDbl/7bhGaiRAKqHROKAtxH+qra0evZ/fNCG0uKKLBgIA+UiAAhU1zOKKDZMhv1jO7hRKWrj
3IhG8tmDOu6h/LgZOSq0ED00GorsA5SHgXHrJxCBpHjqx16nuMDK2VhXKA6fCY/Oz9QNBgEUR9Y0
FAvuWLz0+64BreNMt0Rh/FCRZv2iSPVahsTncHAhtAn9zu45vFTlrav1Vzgfik3DX8jlByPmSRtj
ao57HQCyXxC6S7mRoStDfY1FM3Vrgaa8Q9FQOg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OKqfJevTlfXHMYcxqeiJOSMVoQ7uWRORRRovYWsq7xdU598tCXUmOJS8I0GcbIZ1ZJF7En/DUT3U
uHy4fImCnIlBhvb7tWeR64l8fA3NDf8TROs4UwwkaPKveLah/9vvHfSCqRl67y9S8LmCfGhf2riD
6U2l/21Qoh+y8n47hl8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hi65SSdBb27dkJQDyd0+ZUNHbJLTAPzntdwe6ND6gJJ93P/dmDIUtF2b1aGBky/6BsQZtkDi3XwM
xSpVlqUGnD0kWJFMfPQmSPynrZNLwgVPNB5o11haxVQZeMAOaRssP/m6WQ8dbuvAlCFcCu0q3DNf
6J6u0ISFJdKhGtxCoA4/S7eo2RXifv4f6bOrFvV+a10IkfZyKTVSi6jZruHcQVkg4mIDrd+TzUAw
/4YzGJ7WnzR1bjSdkzfIhcQkpgTDS+xshM0qRGBZu6P/zt/CRfWCGSGomapBi9ef1unBpMHn5nOi
ieiu2r//R53Rf1hwP2iXI/RY9ng1nM2uuySTBw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jLrzeeXjeqrBV89geK9bumMNfFvkoPTJw8brTi/8kmvwVvrOhw58DJJM08mHNVM7IJ2ntyZnH3rb
XASoG5aVZhwZaUEfLUX9Vpnl88NgtAqQ+mIevxUg7DCRzUpIW4OewR3cQ6KohEv1QSXQxOG9Oe2X
81DeQIGOcukaQM86EiBQMmnPPQnU4drx0Mj3s7slGbjtIR4tt9RCvY6WHFGvB9bZIe9ZZ8rHICxO
qOSro0JisWlQEx9wvdbdA5nxt18EyYjXCouQLDUh4KZi8NlC1b8Jmy5VwnGKMW+C8UaZHYTxOlap
uBXgXi0hk+u4pn0nuX7EyY0i3js4JHOBkgNF1A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d8NomRdagH+a8R3mLCVuW/Y6UwOcl8v7u1JVxC0paYumRgXtGI9Ui3IbiyEwtYZW9hExTDTsyRS7
zO40JJnswTVXFg8GwjDSFPh5O99FW0GMz+l/jT3CRjzxsxfnMXtvyncFV264SwUeQYBWM7faB61W
Zyt3qFN6knLDKMCM3jx74ooTUvaO6gsUr7ZZzTweYG63+sqnOezihDi+B9sJg/VC/Z0iXjUpjXjR
JXXI/eKY95jZTXSiTbuEf4aRYEgbO4aA1Hhh0knXC1xPPzAtjW/kolTyQYmAdFvxCsPyPxGK55xX
+cwoWB9cRnDTsFVrS/KsMoOSQfYvDRL9IofO7g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30400)
`pragma protect data_block
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
ZOf4khRC2hQL1+Yb2vfQ4jvM9A==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
