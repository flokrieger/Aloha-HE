// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct 30 11:59:49 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MontRed_DSP_Mult_sim_netlist.v
// Design      : MontRed_DSP_Mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
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
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000000000010000000000100" *) 
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
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "42" *) (* C_REG_CONFIG = "00000000000000000010000000000100" *) (* C_SEL_WIDTH = "0" *) 
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
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000000000010000000000100" *) 
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
a8L2+xNK0iy8aVJkkN1+05bqU+BfW7GOPY2bCEzvH18LMQe5rCLFZo9aT+xpHGngzzSS3JKdYM16
1LvqjSGSPaRBcmhrjgZOXeg8hk9UDCXS6U6dFLfc8g9QIpeQXtjDDG1MhLCJLQlD4IaMrBL+T1zc
8ejId6YmiPgIqZ+bj9Kub7EIhQWtyebkLibic0QXV8qbFjBXXD9Kl0GJmqe70qAdknstjuygKnCF
R3D8doyDnzJimDd2Q5uZKlN4WAdDA8aA+2ZZuuCxY5Cvcv8IlnNL14SvITdLG9XayURXgufsSEmY
pfNCystBCq+++5bh8MW8ApdCCl0XYC5j8QkGSA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dMqP4fwgPwRKxsZZr+SDy0WCa0Jgvhs3MGL6uQce98ntGFrEcUK7Y5ZfhEAN1kNYZ1e6s8THz8v5
KfZADEZuSMDIX9wk0Q2DJaYcqtYYK+D33i+zCIbSIfJ0zj9wbM52u0pj18L4V/GRfyVpcTiU7afJ
nSXcEAn1WYWnuEtoGS0+PWrsilULQg3NglwjELpM7OezL614WzYtOjXSlRYo35F6854+0Rr1i2ws
9NsxeU0JwFj4mkOU/5/bsBuX6ZnIJDAY31aogVlEjP6Oy8phIJ+G/zadCj4rgS1J3K4IqSAdMxSY
vSlbS3FxojD/0G1R8bpoVN0he6MBA9S1uPdUTg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8704)
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
