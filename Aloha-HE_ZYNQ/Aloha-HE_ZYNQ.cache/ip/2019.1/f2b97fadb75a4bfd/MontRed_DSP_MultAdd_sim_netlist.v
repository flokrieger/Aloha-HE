// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Oct 31 15:51:22 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MontRed_DSP_MultAdd_sim_netlist.v
// Design      : MontRed_DSP_MultAdd
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
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
  (* C_XDEVICEFAMILY = "zynq" *) 
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
  (* C_XDEVICEFAMILY = "zynq" *) 
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
Jx52xgrVG+tgq0iT6JdWUtW6FpFKxaPOPUB3CYtiUHnbXAvyqkVJUKYobaXkI5h7j0i79vatxFFj
YM9+5qyRtIHJ3lUHr/hZ06sZDsT4yW8L++jIo02iLm42pyvmqrg+7/GPFgEJRjULqKovdwdQt/+N
ohiygMvboJ7YhsMFSetUE1DPhnbkAQIg+uvn1srCQV6swKnqfO/8O7fU4DcmsIBX6JdddAnQcIr2
em4Zkey9AsdyieIO3Hqw+q8JK6jA3JpSbtGrzHrRYPN/ldtvtocuZEya2/DFWbAYr8XIKm4Duk0e
sm9e0kgZUtT138xOVorAJ2v+2vmzzS1DctzGnA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iduI8S8aeyL2WO5aNVWhuqcLdCdKVDTyEuklt/LlUrxCcoOnUUFOVPxuVCbEg70SCECpfGvBJ+JL
Dd/2li8VJcoMa3klGom6qvHODOFvHvTcNpcQiEwqKu3RZcTpeIT66uSGlOCV4n02Vh2z+SszhLLS
XU1Nr04StAah3qGRD+j/rB+YN5rX3wXTh/zezgqDm1xZSFcwiTUfjcD9C79oZdZkcUen06IWXW9n
Cn+Dx7XMNYb+JmTXh6sLk6coLPHzHwleZ1BCbC0tRqYwzaq+eizXuTAQBZJX2Tw5UmfL1ERjPgxo
IL/3ej728Y15b99Xc5ZK5hlqobFDHgYzGYZg/A==

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
