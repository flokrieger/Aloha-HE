// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct 30 11:56:07 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DSP_A_x_B_sim_netlist.v
// Design      : DSP_A_x_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
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
  (* C_XDEVICEFAMILY = "kintex7" *) 
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
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) 
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
  (* C_XDEVICEFAMILY = "kintex7" *) 
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
JJ6EyRnOUxaH6Dt8hC9TDy+5uh9tliAzlJ6t1W4Np2gz1UjBE7R1x8yOnG6vaKijvbjgMs6aHNIG
n+qCaZowlPBDNEsV15O4slILp7BaK7ri/+ehgperMSEi7ixgc6nw5KiNC8W9WNwd1g74DIW90xjd
OJxu2asmhrx8uQ+21Ttt+XvPniI2oiSmWiQXGW1D9NMlYB/nzzy8BdCoGTRDIAOjFrBgDpJORXnt
uzBjJCBy1gMHwRCO8mlTWZvM57POCFb6RaI+x3e68duKOrV2xJHlEdFSxWgB9hPFFlTWsv6I5aG/
96ONUcvzqv9LCqpbYzaWL3HA5NwLGm5krJ9ktQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HQC6YD+/ujY5LGYSweXTCV7UciMNTykGtjDD/LhMYIIZl1aAMq9R/muDH6i/ynlaSEFhBAMIdpT1
iHltwSMn8D5knBdxPiG9kq97FrLzcUeKXT3YX1jH0tPrK/RN2qxW6qDfbWO51MTMmEHEXXTLKcmg
CacwfUrnVLGFjT3XyzlLLTROk0sI1cRNuRTAZszDy2b00STRsDGHJJ/VDBychOw5WJgR61aB0nuk
Rc8msPL4almFeAmT5e/GONND843qQD26Uar5W/kWYsKTZ28b8PTjYhzhDmUximyNO1QmjnmlATMO
yKbzT8NcgChn2T1P8X3r7c+SUK5vXmink3ZCXA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14656)
`pragma protect data_block
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
nX6ikmhaYA==
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
