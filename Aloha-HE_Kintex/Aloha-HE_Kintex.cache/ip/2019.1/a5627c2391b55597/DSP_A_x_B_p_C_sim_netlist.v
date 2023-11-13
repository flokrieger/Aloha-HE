// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct 30 11:58:38 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DSP_A_x_B_p_C_sim_netlist.v
// Design      : DSP_A_x_B_p_C
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
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
PJ6YLH/+48dD//NQeNmscaNFlyYfd48lWreMryFgMZ5rXtqJCZmfE/3rqXmE0Zk6bWgTui7BKYUr
TSopXYuVjpjwH3dO1fTaWP34lsQrhkuNGZEypuwbAj6+kFOp8sB/qyKBDgkno6/RANpnAIA9kyWj
ng3fW7irpo8nCzyS2ug5QY6yZ9+cBEp6KGvoGGLtkRetAy7OTC9qb2kRYf3uXF8bEP475xKM2A/4
sg/QbtHy0P4X2DqQPzpGhkLoqKv7rWsjFQLiK016VLnvrSc7ah/xMvPS5EmWGOdvyJx1d0gf3NLq
hBlNxRkAw7OCMYTSVhB7EqHy4kB7nLkMcb3Xhg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L7POu9SxoKfqSx4kCW9duJwnaFG7k2A3NIBmsD039pWPJaomvRZWjfA8I+P86VzVsX6DEi6UBhR8
3ViFBZYPsWS15CcWdM6EcgqS71nPXqFkTs30wU/k6a3GprAQ23GfDOk5noCljmkiMI9upyFx42Nv
0DteAPaRlilwvUGsfjvTHdkYOb2q5N2MW+ewk2+iO0Vo5TmHPZErYu1Ez6ifqW0Cis4c7P169j2m
TLQI0jjD1pbQTWud7m4L4XEBj3Gh1yz5aju6E8ToPYVsiWcWY5aIH1q+jm8Rs1CUDTpEWE6nPiGe
pEXUvhI+vPGugqCoU29jrRFmB29Ur4FpqoWbbQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8688)
`pragma protect data_block
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
aMiUHPvxHvp3xIeahpcXwVNoF+eadZ++
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
