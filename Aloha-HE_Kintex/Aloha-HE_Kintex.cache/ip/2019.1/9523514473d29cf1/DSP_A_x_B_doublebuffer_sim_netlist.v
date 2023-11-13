// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct 30 11:57:18 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DSP_A_x_B_doublebuffer_sim_netlist.v
// Design      : DSP_A_x_B_doublebuffer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
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
C8AIQA6X9HtZnUBINOzRFGyJNsZUNwaUEO8eXVq5UBhGULPZAyDK/d2Iqk+wWbRwF9vQyIV524/d
38+sVOJ3i8Kysb/RaM04PkdkJ7RiAi+PKMKW9t2Nya1ZMPq3QK6HgXegkwLy96G2SwF4DnFRDdqi
GcReopKRmSxhiDqvnYMP+XeODukHkTK93DhTIu/3N6U67GSfyjemHD9EbK72plxTtyn3ulod0+uK
V7fwdu+C96GlTbwhS+8s5OV9IOB2PuUwOShJvXulFohrtd1uAy1WMbTiVaQS+zXN1Kc1W1RJxJId
vjGD1VfDs+eGRNuZsK/Ocwcc/y0RIoW2PrLT/w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVeTf3SnPsq211Ty6WPO5NbuH+Ulk0d5mmooeW5ewSMQUv1kJlWFwP/UX841JHKUCYHKyc1Yf0KX
mkM8pq5ezsshqJdLx2JdvwW+BDLh/yuWsi6pIGeU395TwjT7zHQ4tjCXNNmYC3qHv2jpMFXLKC6V
zSEoa5Ca7WBVyj1SfvuJ98m0xe7xMlMBQdE59ansgrW4GtU5ns6nJazXJnqmUpIBMqRnZNfk1R4G
h+uooCrsey+KV1bVvAwGG3glAI75IdT+XyI6s0TKFWxsLQDX2sQf6PDW52VJUnZ00NFa2VjKq4wy
U781Jve/+v1jtRgQZT9dsG3VliJi2bJWuZCt2w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30400)
`pragma protect data_block
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
ciJSl4VTIT3q9B/wLdSihRFpAQ==
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
