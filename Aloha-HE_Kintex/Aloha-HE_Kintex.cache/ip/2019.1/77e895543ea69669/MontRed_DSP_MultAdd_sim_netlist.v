// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct 30 12:01:05 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MontRed_DSP_MultAdd_sim_netlist.v
// Design      : MontRed_DSP_MultAdd
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MontRed_DSP_MultAdd,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CARRYIN,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 carryin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME carryin_intf, LAYERED_METADATA undef" *) input CARRYIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CARRYIN;
  wire CLK;
  wire [47:0]P;
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
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "1" *) 
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
  (* C_OPMODES = "000010000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000010101000000011010100" *) 
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
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(CARRYIN),
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
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "1" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000010000011010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000010101000000011010100" *) (* C_SEL_WIDTH = "0" *) 
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
  output [47:0]P;
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
  wire [47:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [47:0]P;
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
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "1" *) 
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
  (* C_OPMODES = "000010000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000010101000000011010100" *) 
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
        .C(C),
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
qc1xQQpc4iaSk2i6LyBPV7bRryx6OM+PF3FPhIJKgff0CsXgIMoXpUOXPa59QJD3f6yOmdW5FgCU
RrGOWVVk5h1Q+/BQSQcJg2od0qTW4ob6nM6kjDQ/c3Et+JMtd8kIAxOJzwbCKKH1YIffLzyVA4zA
MLwiwIfq5x+xt1m2LW6hYroagpttrgBofbVwjdZckqSEawIIAdS9Oy52E5mgWcJJvx62MYTp8Kej
MTFrLdk7gcQ9Ml+qPkJG6c6LgaqBtNQhPg5+Gv8tT81sd1yFITbqNt6M8CDFT0qJ1KvLGk9XFQJq
8S6ZizwTfrjrzb6qcYzKhPWO0Oss7r+vB8wZUg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
knU+TGwqsPVYD+9CoJ8rYMGheD9uop5bK4DLMr91MKuYw4zdSLxrQE6IMAxTlNogn5SQaLSJDJqE
X64VheS4npYXPzZi0mymQCrgx6oylbrhLaUgGlHcrK5P0qOZRmzboBWFcW8L2L0gxx9KumKpVgaD
COwaFadpuIiPdvEkzBlYAcWZY9BgPX7OBTJzzuxAJRYA90TRtimeNBX9wq23wb4HO2S0hD8oRJdj
9XevHgws1k6popZTorC7VV4x1wZ8FJonG5ZPe3O2a7O1iEUko86xWACF1hvkInzS/pL6A1FoDZUF
Z1kSXXy1wYsIi6f2KHrQL84t9p9fF0Ffj4EthA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18560)
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
