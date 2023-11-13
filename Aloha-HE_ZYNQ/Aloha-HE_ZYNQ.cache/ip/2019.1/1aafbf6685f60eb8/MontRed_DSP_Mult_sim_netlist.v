// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Oct 31 15:50:15 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MontRed_DSP_Mult_sim_netlist.v
// Design      : MontRed_DSP_Mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MontRed_DSP_Mult,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
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
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000000000010000000000100" *) 
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

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
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
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "35" *) (* C_REG_CONFIG = "00000000000000000010000000000100" *) (* C_SEL_WIDTH = "0" *) 
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
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [35:0]P;
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

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYOUT;
  wire CLK;
  wire [35:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "18" *) 
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
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000000000010000000000100" *) 
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
        .CARRYIN(1'b0),
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
W2bqGAOX3wY0RyLgijwUYiyQzpgkc67bXxqPn5JJGBlP3D1iwnh79VboYTpYKiwaOMewz7Mg2asa
4jEMTiey6lkdgm1bYqj8Kqog/6X36F8FgLxB2Ps9WUvst2IR3QHpnChSFvjj4ryImkCZHNsGsMjp
WwtjlPjIFaiBA88Rm/D4A3kFrArJkZTeyTp5b5lJOBTvEO738zibT9etmJw7jjGEC3+pdXFfAyUt
rndQ74Cd7FDAIGXgGRATBzuaTcqbZpzatftHPQsRO+vjNkS8bo+k/Z/H6WWw+PyDCcLWCLsZbHnD
kt+SnTYIabcnRKNR7nopyj0ZyMxqEt1VFae2Ww==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ERC8b1+eN18u4Z3xjA+vMrqzYzcWy6vuSlJ/tHE7O49WzPjcl8bZ88D8IJNdB1kkrWzqByMWCAYL
3shLAVUSSsZ1dS4hsTw1i8ZfvJeTYDIuCWT6z6CmnrOrMVvDt/EW28LOh+C5FcWofJ5EEg6R8UjQ
wQLcmWt5VxkN247oOZKypht4YCr9s1bveZzRqs1Qp6eZdxzNK44J07dvyeuzmn7ziG/ufbp2ycaX
36twPhR3tmLNn1Fcwv2M0NjrIVu6gle9DQCCENoVfayr46XZ/RrfQysY1xw7qafVn9CkiyC52eeT
yXElYNb0ZCQgvg6/L02pue/UBkwSy2LWO+gvzA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9040)
`pragma protect data_block
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
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
