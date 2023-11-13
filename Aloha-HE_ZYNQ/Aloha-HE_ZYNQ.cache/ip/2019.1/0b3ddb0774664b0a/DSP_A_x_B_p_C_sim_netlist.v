// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Oct 31 15:49:19 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DSP_A_x_B_p_C_sim_netlist.v
// Design      : DSP_A_x_B_p_C
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DSP_A_x_B_p_C,xbip_dsp48_macro_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_17,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [24:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [43:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire [24:0]C;
  wire CLK;
  wire [43:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "25" *) 
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
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "43" *) 
  (* C_REG_CONFIG = "00000000000011000000000001000100" *) 
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
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "25" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000000000011010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "43" *) (* C_REG_CONFIG = "00000000000011000000000001000100" *) (* C_SEL_WIDTH = "0" *) 
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
  input [24:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [43:0]P;
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
  wire [24:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYOUT;
  wire CLK;
  wire [43:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "25" *) 
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
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "43" *) 
  (* C_REG_CONFIG = "00000000000011000000000001000100" *) 
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
No+JD9HgcHj42WeVuxpiriUtFSJ+meNucIlwqjc43kMX5iY5DG3sZEmll6KHNu0uDH1ZplqDu9t1
cCZhfX59iTL8ULcxV24X7J8n4XW2JY5PTYWoJh1sd10UImWJzlRqUkqjptxn6hael58CBHx8QbFI
m2Q4ZK6au/snUgkyp5ljJtkkHp645JxU0GkxMzl0K4pOuofmD12Cwbm9QIYVnrzW4EPKVr567xCD
n73riKA5zf2e25k6DjZ8YK3xNruKsq1iPzz7sb+meH6ETiEogz0XpqiYxuZ8TRq16BgLHV+Tm8YY
NQu06g09Qvvu4S21OuJYwPva2KZyN6lFlSl2tw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vw9smgAJs008HemPIrYyLviI+WjdeFAuYIHc8NVHEfWQHxsA2SG/YlOVichEiGBXEmZKKrgNLM3h
8xBFYGo+pb5zB8VmVIJFbm1tSF1k6PnQtkTvSWR02B0Bq0xeJ5hzTlU8OheuUYhctGiN8M7hEQCf
OzrRrDpRoizNyZ4d61k+Kpl83cBiT4UkMe7KotFyC6K+3E7bxDbcNDxnpqDqwJ22vHiWTKtMgcIo
8NULT81gQzE4S940O71J2JYEuV7OW7xGGvnGWhD5NcHw/TwAvpslIFK2YIsV7AlYGmrE7yUCMIgU
KUcyn6qpRy1BdXfqoMd7I7ulH/0IKjgHURVmfQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8688)
`pragma protect data_block
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
6BDBTc9NM743e8cg/lidflTsFlGLWs8S
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
