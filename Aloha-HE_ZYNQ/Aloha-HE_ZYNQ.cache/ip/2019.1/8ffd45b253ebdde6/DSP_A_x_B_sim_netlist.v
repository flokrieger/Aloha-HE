// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Oct 31 15:46:56 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DSP_A_x_B_sim_netlist.v
// Design      : DSP_A_x_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DSP_A_x_B,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [42:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire CLK;
  wire [42:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
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
  (* C_LATENCY = "100" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000011000000000000000100" *) 
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

(* C_A_WIDTH = "25" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
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
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "100" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "42" *) (* C_REG_CONFIG = "00000000000011000000000000000100" *) (* C_SEL_WIDTH = "0" *) 
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
  input [24:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [42:0]P;
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

  wire [24:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [42:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
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
  (* C_LATENCY = "100" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000011000000000000000100" *) 
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
On/Y7I981yvm7XSXr+PLu2ryXwtZytugqMkLBfNSDBw0dX14zZvpXqKOmWHxij6ObxfT4aPa12+a
QofMk2+SnlUdY95Tn0DPwuxfW0xSyzws/5+40rh3aYv8QTb7WfXXciLKb6k3hq4Ks3k8oMaqdfqh
LyUhD/cxHkwLvtzNqws+S6tPGXyoV3bF4a6cM7ZpQGakKUGBtUmlume9M/T7shh6JNc/WUnqYLHK
rFDITvXc55ksIS5+11nmF8Y/q6DBumxNDFwidqqBuAuViUMxti2I8zC9vaB+81dpmGaFPCrFD7KV
b/zYS5X24XsA70OLugmuCFgW6MCLSo4B07qATw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2T7m3fZZLMVy+gPr6o/moSaClcBvXPMirQTf8H8tUJ39jLYuKLCe6rK2G+d9yfbpoqSiG/a92HOX
UQagC6PZzvo21qMtRVA8c/lVQ7MH3KmiVE/OKE5ITndUWwOY5Oveyco0jLOW2PL2OJJflndzmXpx
VL1QmhRk2GgDzmobFIvLeVorAwc7TzqcIkrVGGVX/AB9NuM1zMKap32CslcMYvhEmO0dkGtGTtQC
ML1YWi35Tkqsrb2qA3mDUiyr/nefmo8hHgWhp7KgZbyEF8UhHAKazbtoyOV3TV9w79z9/IULH+c8
cCSuOlu9CR2ULU/7fYmdFwqaDLSDfzMGwYpr3g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14656)
`pragma protect data_block
+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
oTiMyvoQWw==
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
