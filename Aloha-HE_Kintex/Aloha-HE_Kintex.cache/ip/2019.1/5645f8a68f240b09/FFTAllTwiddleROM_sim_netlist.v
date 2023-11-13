// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct 30 13:48:50 2023
// Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ FFTAllTwiddleROM_sim_netlist.v
// Design      : FFTAllTwiddleROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FFTAllTwiddleROM,blk_mem_gen_v8_4_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [127:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [127:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "14" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     34.080796 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "FFTAllTwiddleROM.mem" *) 
  (* C_INIT_FILE_NAME = "FFTAllTwiddleROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[127:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [127:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [127:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[3:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[93:85]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[102:94]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[111:103]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[120:112]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[127:121]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[12:4]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[21:13]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[30:22]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[39:31]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[48:40]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[57:49]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[66:58]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[75:67]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[84:76]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [3:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [3:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13
   (douta,
    clka,
    addra);
  output [6:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [6:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [3:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [3:0]douta;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE587D6D6D0E62009D65DEA3714246FE0C1945F5EDB02A779AD69A28BB71C4156),
    .INIT_01(256'h66C41891CB6DF7D7F32B92123C0CF6F6B1C89A251AEB3AFFDF9083283FE05C53),
    .INIT_02(256'hC2399589BA32C9D9DD14780E4883FA871F43D79BEE14E3CAE3B493EEE4734285),
    .INIT_03(256'h7A85C0860DC72EE3DC42D546C34179EB164DBB6ACEA2E229120E342A3108DB6B),
    .INIT_04(256'h82DA45D4EE01E62D58A15C25CA88C64C5555037DCB2406386F6E1798C7B22673),
    .INIT_05(256'h06E8AD0DAC1BA9BF5F36C6DF5BA51D488A07877EC3B3464E0D65AABDE0687DFC),
    .INIT_06(256'h341C094E4998627A8286589361A784DF4F28D1E0D202BEC089D1B900F14CFEE5),
    .INIT_07(256'h00373B9CF77A0F4225C075775BA14D4BBFFA0F9956F03180DCE27517CD93275C),
    .INIT_08(256'h6CFC5AFCCC69BFDC2DD8D98719FC446E4526C65429C4C7C510CAFBBFEC552508),
    .INIT_09(256'hC1DDD9FDAF6613138F26FA3D1B9599301945825A43366335F20532DC18AFA81F),
    .INIT_0A(256'h53587A2824CA541B260644B79C8090C821DD83CFA2FCAADE248C45252F82C2B9),
    .INIT_0B(256'hDA04C0EB2A1DD9366F2177696D11672395F6FCC130A92B72C2BF8EED92CE5C20),
    .INIT_0C(256'hEC03AD84A5893ED1DE294CA1A32442CC37CBB9F6160CC4B2E91F899532F8ED82),
    .INIT_0D(256'hFB876BF33AC5F3853F2D7A17A891C2D04355D4B3DD850B75EBEF11BFC432C1C5),
    .INIT_0E(256'hB33B7CCBD86893707F27E1E50D6FEF0F0C2948B12A9B989E2CD9743BA3D4A6E8),
    .INIT_0F(256'hB72701F57EA672B7B489B1C0786C3C324F50CDF1AF17DEA5641923A929D6DB0B),
    .INIT_10(256'h4537F7B85F624C67D3F5CC0BE56D98F64D853C5F3185351A3541B6E26B1064A6),
    .INIT_11(256'hD9DE4081000FF46A93D2878524B114327DE2F10E2CDB2AA6BBEB6D88AEC5970C),
    .INIT_12(256'hF7623B3462E47CAE3508FD44B3B60FA6994BDFAC21F6C4A7CF2C51F08D71655D),
    .INIT_13(256'hFF57CF664BC6751BB9F54079D5251F344757DD05FC6C75BBDAB99A2B7AB6D584),
    .INIT_14(256'hB9905E15C27DB59B4461900BC1C69665073C6D97E8508B1448516EBAF8AA0D81),
    .INIT_15(256'h58393F0EB83B79D169C218FF16EE80F608B2F0DDBBC236BFC68EB4B956874F51),
    .INIT_16(256'h233F6C0D7F1AC9F2533304735229DC4483490F9E6ED4C23BCC233162FF7FDEA7),
    .INIT_17(256'hB9638205408261489CA0C44B7435E2101079D04DBEC958B07D9497DDC55E45B3),
    .INIT_18(256'h181B4D5045DFC888F119E393376105F8C7CAA5613398AF0628C3027EF4B5B940),
    .INIT_19(256'h7EF4EE0B1DB9DA45493305F1C7F63DB79E5237061CF163602FEC9F7464BF31E3),
    .INIT_1A(256'h59BABAF50C77B69CBCCAC010FAA6577B8550A8147B045BDC859F876658D62D2C),
    .INIT_1B(256'h922937B76E2CFAB61CCD98B02F5CFE7B7AF4419F652A335CC82A7C2273C4B187),
    .INIT_1C(256'h534D392B840262CA4CDC93F29C8574CE95588B1DC6950B7D66E4153316FDCA81),
    .INIT_1D(256'hC2E9D7B5B66350A8B4FC0E707AE8FAC1AE9F9D50F2A3F5DAB66F145D5D106842),
    .INIT_1E(256'hAC34BA12F3F063EC27AB45A36CA275E3AF2316919C7C097ED5C79C70E421C762),
    .INIT_1F(256'h92B8AAF8C0797E4B7F3F064F9406BC23F7B70F629F3E0240E1E8CD828158A662),
    .INIT_20(256'hC676F5E2501645F6242297FA60FB5C6DEB1ACE26BA0C129FEA7AEA7E286A7640),
    .INIT_21(256'h7E26BBC3DE2286BD173FF157458165CF8B30D20CE0D64C269CD44DE4807DF129),
    .INIT_22(256'h1CA5B8B3B1DF4778A6D8646B52BB188DF04D67234CA53BBEF7FCEFD99750CBAA),
    .INIT_23(256'h8BB5AA052FB9BE05E80913B5FCD0200E84EE09528F7EE90B57DAA1625082109B),
    .INIT_24(256'h0BFE5E652A74E00FE03302F6698B4BF720D5174DADD260F8DCD29C6B1EA65DCB),
    .INIT_25(256'h9709DE1137C497E3D3002180CA0DA4AA9C0A3435F9FA34CDBC12469EF6FA4E9A),
    .INIT_26(256'hC4EE168A4518253CEB6E6AF2CD9786DD51E6D9C11757A2299A00E89848324446),
    .INIT_27(256'h3328787B5F39CB465843206CBE5F1034A787FDF884DAD7FC39CE282CC3AC1AAA),
    .INIT_28(256'h2197747C3EBB8FC509E02E4CAF23E3D7FBF3A0F0C0197C03F5700A477706C2A0),
    .INIT_29(256'h20C90D88080FEFBBA88D2E6DC54F414AD87C95E54F17E34A65FA1F57DC842559),
    .INIT_2A(256'h953685BAB6C5395D8F228C39984A616EBDB91857B6701A16496BD83C8501A5C2),
    .INIT_2B(256'hD752BE979A3CB225F56BD0DFE6CAB4B22B08B703CCF98B79D05CA6302B52FD8C),
    .INIT_2C(256'h4C34CC88446578A395B66ECF0475FE0C1F381A8D3899A77114DEB88AA66F41B4),
    .INIT_2D(256'h9BEBA9695F84E0B22737D06D49C9A98631A7578890BB70EF5B9BBB13E9DE1817),
    .INIT_2E(256'h37CC2C192950D22EB6D9E1C92F62EB601B916B2E3187B18C5019980E7A60BD4E),
    .INIT_2F(256'hFB9CDE4492A265010F72333ADC3E03C6D84B7BE2DD5D840766FFD701A9ADABC9),
    .INIT_30(256'h3D7DBE8D8572484FAC658BAC98E4DB875C865282B02AFAFF54E2902FFB5EC96D),
    .INIT_31(256'h12B2115C379A31E49CE822128E6E62C5550A00D8695075A5A4A27B676BE7A1CA),
    .INIT_32(256'hF854ACDE5F9B4C75E6FBB6A2F2B5942108D6B10F6F255332306E68442C53FEF9),
    .INIT_33(256'h2FC1678118B18AAD03B0BA9BB5951A2B459EF860B2CEED9516F781A5F8C01F7C),
    .INIT_34(256'h0B18CD83D63B7636CB061F7F495EE7107D51DE8344BA79B9AA596C150B69EEF5),
    .INIT_35(256'h676A43366F83870A4E82FA9AF8729AA63AC76DF71D6E3C6D315BB37954C35850),
    .INIT_36(256'h0A986AE14F87D7D25664BCDDF18235CA1483F17EB0D97A77942914CA259EFDBC),
    .INIT_37(256'h7D6F2248A9E633EF84BB6F3224C51094879EE49E7333C4F355CA92EFC356EE94),
    .INIT_38(256'h143F3B962F8C73170B3F89C14A03E337AC72C410C02404EC5E22FED936F43B2A),
    .INIT_39(256'h470F54A2A56EF5CD2667719827310909CFF68840108EAC8B27EA740CB1C0129C),
    .INIT_3A(256'h0E4CC0CAAD55AE88E72D2C5E3E996A146650C7AA628D1E411A31CE4B3BFFC51A),
    .INIT_3B(256'h7FE64E939785647B37AC571D05A8F179ED6BA05760F533C78937D59A14887A49),
    .INIT_3C(256'h0F60C2C3AD516584AB47D9D8556182C236A787266E033C44B7DB944627AFF521),
    .INIT_3D(256'hE1B931064D4BF8E251136D47A44B5C16B4CBC0D46CB0476DAB88F3D679F44D81),
    .INIT_3E(256'hDD1C9BB6992FB4BAA123822E0ED780D0C908DBD2F4954CB5F71880D1AAB7EEB4),
    .INIT_3F(256'h0C63830A6B1B616CC715EE7A25401FE4CAF9352293AAAB3E692F2F932CAA06DE),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h194E92EA19586AADB517E2F2197F6373B51026CA20FD3BFFD63139805EC40884),
    .INITP_01(256'hAC0EABEBA090C490295293B295E4AEE8E12583C1E21AF67207C3FCA614BEA3EA),
    .INITP_02(256'h1A9D742DA484D46AEABC1C95EE9802783E4BBC2B792DCD5BA67349D81542DC12),
    .INITP_03(256'hA794AF2E81766CA5C060E87C464E0302C02B5F236AF077760AD912D3A307C536),
    .INITP_04(256'h59525E59C3808BBB3B732A4C302FA1FEC8258F5432E836CD32E41A155B6326A7),
    .INITP_05(256'hE75FD5240896F1615937A99CE70154D168C47139C0493E0ABEA3AE14C9449865),
    .INITP_06(256'h61788C60C4978AFCCD3E56331D9FC89AF2A923A62B44BBD0BC9B6BDB96B94FF1),
    .INITP_07(256'h566E9342BC3204F930565F39A33259F3410E3EC995E4B0240AD66DFFC01C250B),
    .INITP_08(256'h39D7A9BC705B8722C5AA8408ABA729DCA872FDE1FA6D38C50F403A7D643FD827),
    .INITP_09(256'h18C616CC5484D78222918A7C8C7BB86333D1CC965DB7F3CB4381E05706F780A0),
    .INITP_0A(256'hB132F15FE8060B8DD782DF78D0A3B1E4565B825A2A18EAD9540810B3D748171F),
    .INITP_0B(256'h64619FB8A85ED5B262199D4C883F3D8B9253C90DC8E3F20D62C6242306A85F63),
    .INITP_0C(256'h0888E5CFE32D425DB9446371FED789D49E5EB76B16BC1D02AD4991C99D0C4128),
    .INITP_0D(256'hA3B3E9C46F8911091D6ADD2837B18C26F758505E6D616EAA10FF5D935453B9A2),
    .INITP_0E(256'h98A29CBF75B6543C58A1303D43F571DF8FEC476809191125693FCF56F0D2ECCA),
    .INITP_0F(256'h42BD1B91A4BB9004EE69FF3E46BCAC1A5D66EFF667D0378E34A282BFF2B54A00),
    .INIT_00(256'h0FFB93C9B8C13819781F46DE9730C3DF1D2C9B773858652F61233CA4EA2467EA),
    .INIT_01(256'h73BFBDF3B395F3F6970BC0B0B819F04023E6B7DDC66CFA24D1C9B51BA14B4D24),
    .INIT_02(256'h24F03913D53587F81DD20C08AB9F03BF4CF2A16EF3446CB3B0825D0ABCEBD1D9),
    .INIT_03(256'h10064F80BEC62FBA8D2E435C6A7FA174B1F1F819AA343D0CEB5CDFA2DDEA2EA1),
    .INIT_04(256'h4EBBB5B71E257814C1C80A3BA2EA6BB60B67785FB6784A4973BCCC551E6F7682),
    .INIT_05(256'hE39C9353CFC1A65517721A7E812356C3330945E49AF4C463FDA0AB58BF2A2555),
    .INIT_06(256'hB47CAAEB3916598F8B8E1C4DB942D401917B1FBDA06321DF6CF183889B0F434F),
    .INIT_07(256'h6D0D27026DFDCBDB04BA43AC4FC6443066B98E2A7840821B4AA14442AF89FA76),
    .INIT_08(256'h1FA9336EF4BC060A204B3AAB0DFE79CA911D72D030D1D47F1E555C6097FB8D80),
    .INIT_09(256'h9CC1225D962A875FE3BB8D547AE82A7AA4060AEA692AE2C304521328C054F0AB),
    .INIT_0A(256'hC1C81323010C5312BED95D296178D951A5AF3CDB62E9B7507A4377F3ACAF23CA),
    .INIT_0B(256'hC84F36E29F1D8DB398ACF3CDCD7971D94DA277ADF62CDA9F6CA6772D1E090D2F),
    .INIT_0C(256'hE73FBCA9A1A15397241A9DA1C4FD5D6BBB9C691D78ACC1A8AB041E713D7A7D4A),
    .INIT_0D(256'h9E5A02650332A537FA3E541F50B669BD37464BD246C15C5075AD2568853FDEAB),
    .INIT_0E(256'hB3CB55D32897882D12D8E286307FFE4A5193E4D8F1C0F7D191AEF592AED28E62),
    .INIT_0F(256'hC0AA095A0CFDCD682F13A0F5F6A72B5E3BA1C9E0DD1B2C6ABE71A54A89D48921),
    .INIT_10(256'h29E118F0DFFFAF927D343CA7A040800DD4C6C06FC047D33762AF8258317B868C),
    .INIT_11(256'h25ACE56ACECCB50AB9186458526AA30859B8915D49A40ED4BF598524B0473CEB),
    .INIT_12(256'h499CDCEED9E82A130C90C17DEEA9131E4A600A51FEF44F4CC4303DCA9E9485DD),
    .INIT_13(256'h0EE4F58FDD81E42A0061ABC772546091EBBCC1E5328647EEF09FFE9F21B88BD5),
    .INIT_14(256'hBC03750857579B2B037AFA85222ADE3682EF270B39038E672E4B64F1A5ECEFF8),
    .INIT_15(256'h3A22F782B410E37F3D38A1E77FAF8614400A2ED660CF5448EFDA016AE11D2743),
    .INIT_16(256'hB1EF129F3DEB8A2CBB218BA33B6E15A5603A62888B42071CF97A519B3E919EAA),
    .INIT_17(256'hE9F946377E8876F95B9C51433553184A8FBC8277E83469CD4C86D39BBCA1112C),
    .INIT_18(256'hF44A94F0687A42E798442165DA2AD090CC779E2CB77A22A5902AAA593C381115),
    .INIT_19(256'h74620302611EFC2DADCE49A172F10B999E934F6DA803C9DD03464B3CD00867E4),
    .INIT_1A(256'h56D30DB9711865829D875D0CC66C9CB956B8DDB4B14373E4C4C34879DFB487C4),
    .INIT_1B(256'h3B652C143834D9221604E89C67F3D55062C1E038129056730C4161815C1DC686),
    .INIT_1C(256'hD4BA104ECCD0CCB426B6F2F628FBAACE45A142425BAF2CBC48336FDBE4CEEC54),
    .INIT_1D(256'hFE5FCDE9B7B33F0F9C58282C6EA20D62C08F81E620A0F2DBA43FB865875424C3),
    .INIT_1E(256'h2C2F0116517AE170A4DC5518EC72212016996118F1F021DED8B786C4EB9AB384),
    .INIT_1F(256'h206EE99CFCD964015943B02212D9C0723BF1216786A3D7A2B2CDF2AF0613EDE6),
    .INIT_20(256'hCEAD3142784EF2009F5D7CC73207DBF0D0CD2C3EEFACC074575C56EB406C464B),
    .INIT_21(256'h297D3A802D2E949B7D987039361092660F746B3BDA53B2EAE270E7D0C267B22F),
    .INIT_22(256'h73447D77ACB827DB6435B6BD2BECBCF11C2972FC7B927F189A90B4420E000042),
    .INIT_23(256'h8E49C3E3915960A23556AF37F732B8073217D057E7367379D3268C1BEF8C7365),
    .INIT_24(256'hB99FD084C2220B82EAF345E74D2B706E052CCCEE5F68D220371F70B8B58ED10B),
    .INIT_25(256'h7E9FC41F2DC84A4425C111242FD0B6534054A85AAA34C53641D873C81AC0D543),
    .INIT_26(256'h08517E7DD69152CB54570BFCACA8EFCB5A53DEAD61017103FE3D79053BBC7D5E),
    .INIT_27(256'hC5E3CD6BA5CA87978187BDBD68BA91FA16264DB57B384E44459679485DE87ED5),
    .INIT_28(256'h4CFB95E74127A206B802B16ACCB195F6F20D0C635CDF71E191AC435D560F7A70),
    .INIT_29(256'h6ABF59F21804DE8EBF55066D98E24101D600AA8D3CE06F58CAC6FED9A4251AA9),
    .INIT_2A(256'hE8B4F8E1091D52F8E7FD8FD4C3211A251ABE8278AA44C3608837B88C2A12F405),
    .INIT_2B(256'h72A70EAE67B6DE22DDE8338D6B3CDB906A2A6F97BA9BF22BFCA7C57F4CFD3BBC),
    .INIT_2C(256'h22EBC0B1CFE847ABF1B58B343BF6DF62A693937BDA088B040D6242356696E0C4),
    .INIT_2D(256'h98D662DECE2E24547BC1B6D33177804521C05D543CCD5B19D706E5455A74BAD9),
    .INIT_2E(256'hD09229C705017240984FC7086D47A658344A93A5F7805CDBDBB088C3DDAEC56C),
    .INIT_2F(256'h9A98B3BCFED45B27E9FEBD770BA748DA73D14DC6F4B058E573866DFAF40A5151),
    .INIT_30(256'hADC54B83A8DFFB9A03E210F23BC8EE150371F1085D000FE08D38048184AB7472),
    .INIT_31(256'h571B17A6C4F27E78CE899EB944DCE7012919AF7051EB67CEE97E94581528ACD7),
    .INIT_32(256'hBE4A13FD97FBAC168B5D2086A02FD2B9458E570CF8D2C926EA9115B0E2CF7979),
    .INIT_33(256'h29569B711F18504375FACE5AC2CB9DC6CA63085152444EB386250F46C7F5A3EE),
    .INIT_34(256'h6C1B6A69E71CAB0EE80F33E49BACC927FEBCA6865B974BE758AD95B8FC5E88A9),
    .INIT_35(256'hC2461A7E5187037A3588E643FD33C171220A163A9D4D11918BA10756873B1D83),
    .INIT_36(256'hC6DD571BB7BE56E58181E6225140A1904945C0BAFD52ABB99D06DBDDA3DA1997),
    .INIT_37(256'h80353C1CD672BEA819DB6965029AB1D351C4AC960C810F9A1D90CB70178AF4A6),
    .INIT_38(256'h9445AE568ED5FA496DFDE57C3F28D6E3E6891775C61E0F4BE404B9B350735542),
    .INIT_39(256'h7C215C6CC720CDC76A76F9E207156ECCA25D72F4B60D761B7CBFE4B96E803C92),
    .INIT_3A(256'h250FC135C0D4CF3CC5F7F8DAD24576E9FDA0E875C59D297A75A0ADC3A331A6A5),
    .INIT_3B(256'h8ABD5CCA86136A355D3EA9947D7F533894493F4E4AAE7842EA2686933A006770),
    .INIT_3C(256'h446F8638010EBDA134A8632B3C0533F3A6C3950C67E9090B00353BFE93050B22),
    .INIT_3D(256'hAAC5B0E1B91519521D26186FE04D158D39E08D22ADFBC7EB8A78F71D8B88B5E6),
    .INIT_3E(256'h39CE1A018E8221274A40C35ADE9A04FA78B7B15E0DD75D8230E4EB37CBC1733A),
    .INIT_3F(256'h4FC6FEE8BE2A2D4D487C91E8A997409CC3B7A092580D9A2D1DE9C9FC2C3B1EB6),
    .INIT_40(256'hB89B427FA488369A14037F6ADB1F7C7EFC5EC8DD9E7234FD36B8D6666371A336),
    .INIT_41(256'h02F4E23C130E273259D6CC7D9EC9FAF22E82C9AD6C9DF9FA01425B6A636A3D5C),
    .INIT_42(256'hB85A3A17E764AC2F3FE489F4C2CE3AA6341C6AC8EC5A9BBF2FB06D9122A619C9),
    .INIT_43(256'h666C780483B94E678BC70E2E8F52E2EC02B71B12DD95E1FD25883D617F9617AA),
    .INIT_44(256'h2B7FC43728EE53D584313339A30F77E036B6550AAB1B78BF21DB0BBD9A3A7384),
    .INIT_45(256'hF12BC4728A0D787A46CE73BB0FFB6C612EEAD2D88464C84DB6A033910DA13DE4),
    .INIT_46(256'hF8B5F0912A3DC3BD54259B9AEB9AE19E954D407E2DE67B7CABA1DCF3BFEB9BAF),
    .INIT_47(256'h4C96E6D9E6B1154EE4F8F7AB749DD90F91BC57085305BABF30BA6813F5B94566),
    .INIT_48(256'h6B55D7D75463C84C7934A0A7340CD38F56E54F9441ACCF188447D4BB8D601F41),
    .INIT_49(256'h552AFEF93A97AB6F94B915DA7936860B2EB3AB182561474707CE00A1470C19DE),
    .INIT_4A(256'h0F2C0C6CAE8B4E95DB027E52216D7E9DE2B1BF90C3AF5819000EA461B2A3DBA2),
    .INIT_4B(256'hFADBAF61172B973DD3D5B319190B6608D989C1E60A36971AFEC2112D6FC99350),
    .INIT_4C(256'hD5350AB5D68179527376073AB000D92654D4810C2E29DA8AEED44DF8B113C9B9),
    .INIT_4D(256'hCEAC3772CD32AC892991F0DC66A00D7562787B87B1B0B91072C0E7FF04391304),
    .INIT_4E(256'hA920829DC89B5B3BDD7508D4F79886234772B8100EA8FB81E4FADB6E5FA96BBA),
    .INIT_4F(256'h9ED3CE9B3DC2BC99666AD5B643A8E6A30C50D1251F1E826F8C28CC0DD492E171),
    .INIT_50(256'hFF25D0BB19D42551CF586E94C254A5B74DD951E60A2BC5B298E067ACD674F787),
    .INIT_51(256'h06C86BD2FD0CBAFF0ECBEBB4E8FEB27362E61B7FEA4CE5CA0DC05FA173409AAC),
    .INIT_52(256'h8C0E1AD3353C904B71C3C8A2AF8CD55E19391CD466730CE8B106D4A3FD942A3C),
    .INIT_53(256'hF0CF2B78AF19A48A9437F12107F439E1C70B5A5D3ADA0272D677A800F8C76191),
    .INIT_54(256'h18F95B46F79CBB17875B6C397E61D1A6E8EDF2C6F23A927A5903A7867177EAF7),
    .INIT_55(256'h6C34ECFEDB48F6530B025225D3BE2310DEDE68E9FEEE89AA944DE3E88CFB01EC),
    .INIT_56(256'h3BA57D6A1147E82F8740711377C8ED442BC53F92F4A3A1EA83B595C513F9315C),
    .INIT_57(256'hD591FCBDEC24F91E0A3C617A2596172B91A93391AB9BEB8A80BEDC42EEC0F7FD),
    .INIT_58(256'h185FC50D854266522BD0644C88EC669A11AFDE1BE3CCE94E5B90720FC91B0999),
    .INIT_59(256'h99D6205BB732705FAF202A8DFB710F89F9C720FE09D20DB07DF5238F1D850A95),
    .INIT_5A(256'h5C6099E822955C1EA8FB49A5BA18A33BB260CCC37FCF0C4E589351B9F0045EFA),
    .INIT_5B(256'hDD08A73D73D9850FE660A6639A9561889C7E338733526E825263403B3D610713),
    .INIT_5C(256'h22BEE700CC17E7D59AFD4C5BF89A82565B95076B729F674A1445C983414534BF),
    .INIT_5D(256'h140582666889B5E1F306ECCA6BDA3C2CFCB03D9BCE99F5860133B57F5A739A0E),
    .INIT_5E(256'h9693B8F1CC8AAAD3227F8C60657E5D08917711C343D666243075DECB1CB03D2F),
    .INIT_5F(256'hFC052BBDB37383EA7F822A22FE1174D24F73DC1620A1E5ECDCA6FC7C2AD5CB0A),
    .INIT_60(256'h8E7846049F266F57340083FFB11CBB56A8BD0ACC46E68C94E929CB98412EEE72),
    .INIT_61(256'h3E44BBCF75400D786C9CC110A909752A535724E402340FF5E4BB4C62752735C8),
    .INIT_62(256'h46003E9A2248F1923F869D7EA5A643D838C8CB61543D55DD9C37B4D5DF9B00FC),
    .INIT_63(256'hF6F592700B24A22E33E44A505AF895E961541CE18598C5B1FA31300C06CE75FA),
    .INIT_64(256'hBDF05BEDAAEB85ED482E643B8D13AAC4E1A93782769769E41778DECE874DF6AD),
    .INIT_65(256'h1E99591D161571D97EF9C0124C5BC4DF0A1CCD31D258090031F2101438795642),
    .INIT_66(256'h549697ABEDC0C452CA03FF879AC9198617495BE564A6D719585B1098980F83AF),
    .INIT_67(256'h5BE281B9E954C362AC6B7316A7232711A17A9A0C612EF2FB2007C4A2CEA6BE87),
    .INIT_68(256'hE83FA8E0DF4338A162B319EDA2E05355442CF57B38DA09A363137C329679AE3C),
    .INIT_69(256'h0F58A50D7ABA34F66848C9D0615A7AFF077D607D37B78B4AC3F61EEEB893321D),
    .INIT_6A(256'h1E5B4D1D53870AFD66C9AD15FED88BF1B689BB3F23F3505FF5532FB67F325158),
    .INIT_6B(256'h152B6E7AFCE7453AA3BDB645FD99848DCF15399235C53073AE4E26968695A48B),
    .INIT_6C(256'h50C8028AEBF6A2469DF1E672074688F76B202D7C6CB7ADCDA43A2D9EDF188D81),
    .INIT_6D(256'hB513D56FEE035C776B19CC534BEC80F0488133F0F561BD587FEB910CED4EFFF8),
    .INIT_6E(256'hB7B717E683E61D3B80EDC048D65D4441DB1DAD73015324DA68D8ADCAFB560FB8),
    .INIT_6F(256'h77E8E0EE85B61F9CAE2D7F6E07135D6C3DAEDFDB7EEAAF67E54BC4BD0FD5BAEE),
    .INIT_70(256'h0938D82A1D00B3524B803F823865C98580CEAD873B9885AF04D444D4C729D04B),
    .INIT_71(256'h69167D3D97676D3B35F5C408015C796A41DD6B618B2E38807B9706694933ED31),
    .INIT_72(256'h44105F4838447D6F9D65322D02A6D885BEB775CB952FEF4DCBD8BDACA19467B1),
    .INIT_73(256'h25B71C2F9F521509DAC67B5410BC6030A5AF8151DA4C0037273AC1D2F83FD629),
    .INIT_74(256'hD088192F09AD656A246B147F68EF35DC5022523E2BCEBB9AFB59A74835B7BD7C),
    .INIT_75(256'h19DA7645314E593CDF9CBF4BB59DC0A878DBFEF82E4054612FE5A912AA2F1906),
    .INIT_76(256'hEC1E68DF0DEAE804DD3C55D9DE59544E89E247BB5E92709920F52BC044350117),
    .INIT_77(256'h77C4FC38BDDFAB1E1DD0AC6E0D0FEBB16608C40862E5817BAB02850D1FBA3012),
    .INIT_78(256'hB2454A34C5907F38B7881B11BB8CB8C04CBB69619B0DE836AC98CF4AF027A907),
    .INIT_79(256'hD61D5E2500D90A69A105405EA10D2CD1BDFBD2E5214E5EDFC2E22FD013DB757E),
    .INIT_7A(256'h9B3CAC090090FF05B9DB0E21B2DD18315F1D93CAE73BA928E17DF91E07283FF0),
    .INIT_7B(256'hF41AD7BEE0EB268F722D47CEC1ACD6ABFC72DA34067DF8174B74CFB5008C9409),
    .INIT_7C(256'h42B0EC9338391015B3B7548D6D40672DF207AEB5B451F245CE09683D838A2D78),
    .INIT_7D(256'h5C752618FC5DE27C31AD71983EF999E55774749FEB0D3CDA7717C5EE59771A0E),
    .INIT_7E(256'hA083765E461F1160679652AB0B3FFD30FCBA782DB21F58F65A2393D8CEF9D067),
    .INIT_7F(256'h00BCD4968C1ACB60F0DDDB63DD74524213517403FEE30DF1FE6E77CCCAFAD781),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hC9222548B02641EBE6BA51FAF3D8F909303E9875CADEC231E324D3D7A0C4C5CD),
    .INITP_01(256'h44514EDB600E469E0287E5CBE72BD224B3DD2AC34CD50D223DA27E2F06591FF9),
    .INITP_02(256'h09B492219FDB92511E23E29162757403D775A9F0BBC91E44FA84D6BD322CFCBD),
    .INITP_03(256'h351DC55F33BB90079D034E68856B5E22DF95CAD6DA09E244C50A78F9E3BA4C76),
    .INITP_04(256'hCD737B2499BDC57CF7BEF87733AAB2B6F7F931032F00F09B01216C7F0A473F40),
    .INITP_05(256'h989A5376B80F9761554A280807BDAB6724FF102DE31221F23C34292D2A467BED),
    .INITP_06(256'hB971A88116358C36DE0D27F1FA1778366CFCE8B450DB4AEA133845356B2B9612),
    .INITP_07(256'hD7064DCEAC26E8BC797D29238617E531F3B7DA6AC94A10A52EF3AF9BEB91A433),
    .INITP_08(256'h2DA7CDE6ADC2EB667AFDB6F400A8B87DB1E4309B08254ED6959B7C07C32F38F1),
    .INITP_09(256'hFE065A0642DB4AB7E9052BDED7C900FAB9C852408F0CE993C96C5659C0230790),
    .INITP_0A(256'h1AB55F00A8D5FC5CBDA76AE84C89747127B1BA00505FE29E157C07AAD938745B),
    .INITP_0B(256'h9BDE86100720BCCABCACB6FF0B446988669A3CF21A0B7304DDE8A12FABCADB1C),
    .INITP_0C(256'hD3ACBCECC4015FB6BBEE8FFF5D7E07994228D8E839D66216FC1392426CA5C2B5),
    .INITP_0D(256'hB729EB7399F342B1919D96A5E5F6DAEB86401FB4EFDB861CA2DBC51DBEE00B1B),
    .INITP_0E(256'h0B7898FB6A91624175ADED145AB91319D198C094E415025B38B6ADD6187B058E),
    .INITP_0F(256'h7B0139F63CFB43955F6D07E96136555C85F3C97F661378260E4E8CC045725A61),
    .INIT_00(256'h3530CBE4AEB747CFD2A6423BF53F4418E41A85FEFA31D7CB17672F6093BA2C72),
    .INIT_01(256'hE9AD0B60BB154CABEFB0A2E85AD633C9618508758A2AB93B6D60B4383C99040D),
    .INIT_02(256'h5B3750FC55066BF958436DC1DC1B10B1F591B66A2D07804AF09704C8478093E7),
    .INIT_03(256'h414205FDD460E00A047FA197B03D28CA5322138B19F37AD6355C05C7AD5DEFC9),
    .INIT_04(256'hB2F2AEF623E889AF9F3856C415869A2DE46933676BB95E3CFACE0491374F9DE4),
    .INIT_05(256'h9D814B887FA23BBB740F7EC65B925474B884175C4685B147FC119520DFAEE007),
    .INIT_06(256'hBE8F91EAD5935E993FC9186D8FB4F0EEBF991A4EB514C4140D8DF840DF2234A9),
    .INIT_07(256'hF18043AE7B093CCB795EEC0D7E20ACAFC3714A8D0D6F0E53E11AF07D0BA28F6A),
    .INIT_08(256'h4C3F1C7860775CFDD8E80169270948FE12693139B0F9177BDB51E33523323858),
    .INIT_09(256'h1CE5F670239A5DC0984ECA92AB632CBDFF9C42F76A89FEBC1A7928ACECE305CF),
    .INIT_0A(256'hAF6CDB7D7152BD0324BD56050A5EC637F1397D4D9650FE0D561497288F076EB5),
    .INIT_0B(256'h614A6F52C683296242450A9C22C8D40E009C11F4CB62CF74C7C305C5A67EBCF1),
    .INIT_0C(256'hD8824676EFB9EB9088B15644BAA6F1201CE1A9DF66238E21FCFA0A7C153CDEC1),
    .INIT_0D(256'h605362EBBB9519B66A18F86BFC01A8DEC612326601352022CCE0C8EE9BBBC2F1),
    .INIT_0E(256'h691EB1387E338D8F50F5010F6F3670640B719EBBDC8D7B8A46D0E9B25895C0FC),
    .INIT_0F(256'hFE0B8411BB960BC82BB21AC869C2AFFF709FA508C25A0017A1315B1059F2E419),
    .INIT_10(256'hF28A697BFC16065BC17C5B62009EEB1695CBF0C0F6AEC9A1C9438BEAA5E902E0),
    .INIT_11(256'hDD2D5BB2FCD69511D382F40A3CC17D247FD72C829AD3F8ED60AE45427B4D100A),
    .INIT_12(256'hFF7F5605939DD5C2CDBCE68283DB2F4BFC0E1F1ABFDCA68E71DAC9A972710497),
    .INIT_13(256'h8FB631BC607751E0F9DA6159135F4C5ADCB759CEC3F52A264A15BAB94CD13F09),
    .INIT_14(256'h5BFEBE3E4023A76B67640AD51B143D922ABEBC32FC5B0FE72984EB24DD6D2DFB),
    .INIT_15(256'h93995CB32F011D8D440DEAEC40468D8EC09D817B4A50F23BD38D53C1C31251C1),
    .INIT_16(256'h63E4929E9CB9266462F8BE728FCD3B32C3BE1DAED3B2DCA76CBF3B415B58066E),
    .INIT_17(256'hDF6B9A743D2DF4928707D9F2F52EBDAF196045ED40DF1A0C0637363176E38673),
    .INIT_18(256'h27C50C6032EFE0B0D2803825AE4F20E4655AB4A19DAD9046F2AE408E32536C18),
    .INIT_19(256'h1E5E9920F2E90199138B6E6FA35A0F38F93DAC97AD128803918CF4C0DD8899DB),
    .INIT_1A(256'h4A7C58DF0AEEA297C2CB660A98D2A30C0B7ABDFACD8E51467E364301DD307A97),
    .INIT_1B(256'h8891B65949D19C98752D7DED9D918E88133F04969FA01805981734E90BD9215D),
    .INIT_1C(256'h1D769821EE185E09962D935A293BFE3FE6BAA983F7F626173BB6D018118FD30E),
    .INIT_1D(256'hB0BB39BE2A49F82523233CFF6E9BF7FFB5CFC1C9BD487273DC47EA48B8F66F8E),
    .INIT_1E(256'h0F408D39F02781F376BEDD6E4352DE44C79BC54DBA1CE5A58B1D37941FE48FA8),
    .INIT_1F(256'hD078102E6DFA20923C4AD6EF7A35D35B791E656C7B9BE4918B2C097E006DED41),
    .INIT_20(256'h5B35A769E48579E07E84C98C39C789A7117873DAD66C0D911B1DBA9FEED751CE),
    .INIT_21(256'h3F0BE3C1E8AB03E01EBD9CAAB75B75A7F3A31F7823464703EB21E8D238263417),
    .INIT_22(256'h471BD8F81F57C4FA6A43A272F4A3A920EC4D475E3E5DE5EADF55AF7EC070C49D),
    .INIT_23(256'h55EDB649708F3C4D5ABE8E1FA653E7E536D672B8057AEA308F71AF09C8C46A20),
    .INIT_24(256'h396509F1686EF1BC3F47FFF29619CABDB135D20FBB10DE4F4636240728E29FB4),
    .INIT_25(256'h18368072D996621582C7B6781F86F5411920796B672633485154E9B665593832),
    .INIT_26(256'hB509355DA99BF90DDD33E4CD22AA89BCF9C5DB0463908FEED99D4CFF3F1A0F65),
    .INIT_27(256'h06EC6A8E696AF36068DD57C582F9498EB6EAF85C57CE272530DB0FF4C4904E96),
    .INIT_28(256'h08BCD78482CC4BE21B81D710981175BDCDCD511926E9DEC1A9806D08F499E561),
    .INIT_29(256'h5A1D075E66142AF71EF45A3594478642B9C7E39470E303BCDC6914B82D9ECD41),
    .INIT_2A(256'h1FD4408661F375B2F226ECAB8BB4CCE3247DFF8331D08807A1C601EB8958810A),
    .INIT_2B(256'hFE7AAF1B0C39389411EE9A88346C6A36D3FB13A9312DA11E843A57E00FFBD2A6),
    .INIT_2C(256'h70EA2DC3F575FA012665AEA222FEC473A1F459EEA3DA6F8F9FC3BED6E5F58AD7),
    .INIT_2D(256'h55ACC34572F94C639DDB3624CEF140882005C1AC62749E34FF0A9178693E2A10),
    .INIT_2E(256'h11BE1B714A1803DAE66D2952A7D4475015652713F0241F2ECA15B5A20B97CED6),
    .INIT_2F(256'h3EF202B2832AC85525EDE38912B7025C10233775D6F2BDC29D99C3CB5DD5DCDC),
    .INIT_30(256'h6EB4EF265827769B4D184E6E4DF7F9FD4C18A1D445621A30CDF499A4B6004A47),
    .INIT_31(256'h8D5CE5BC080146133E44ACC363D39DF063E7742540E298DD06D975888AAB642D),
    .INIT_32(256'h394CF36D6EE983E76795E701CA439184473A32F5D14231C09A9BA4FBA0DAC2EC),
    .INIT_33(256'hE845302406DCBFDD6B796C33AA7B091768EB5C9D57CA65DADE752A2EFE6A9EDC),
    .INIT_34(256'hB274D0053BEE6633E448FA4EC5CEB26F4C39BD0C322E336173017F71752381CB),
    .INIT_35(256'hF72375F6BB77DE191B5445F656C79B2726EF993EB240EA2ADEBAA96E9D9B28EC),
    .INIT_36(256'h6836F618942BF951CF2F7EFC33C325E25D1AFDC33C6348F2DC9843DD9656B6E8),
    .INIT_37(256'h48D5AD4F7F400C9E8BAFEE9AA704E7233B29EB2CFB314247F98894B706A99676),
    .INIT_38(256'h31F5AD27E8B1BDD1BD8591717B08F323C72E15FF0BC65655760B6C3EEC83F1A5),
    .INIT_39(256'h40082D4EEC973C8CC0731B07627C2E5E29DBF3A37E39743182CA87D9905051FC),
    .INIT_3A(256'hE4645EE13F69445689AA87B57E4A5537D7AEC11A945DE16AF4F3C630DDFADD19),
    .INIT_3B(256'h7C504DE9F0220A9A0BBC1FC51F660A05F9A688973236795B889EB34C6C11F27B),
    .INIT_3C(256'h87F49ACA809EE72DB2DB9E6501CB785EFB7D7BE773200D2EB3307CDDCB500E66),
    .INIT_3D(256'h5B106B102F31A503727E49D98105641F177DB17DFE00B2F5CAAFC0A03CB8A7B2),
    .INIT_3E(256'h19D366096AB334A119190A10AF696DE06FC0A9EB817384B9B3A00375070AB8A7),
    .INIT_3F(256'h7C8D9B84140BF5CF38B2840E7C941A1D0DFCFCE6FEFAEAD0105D71C336DA91D1),
    .INIT_40(256'hBC35CE990E3AFBC2B795894C196868A782E88467C7977B6ABA8F4E66B3A9B065),
    .INIT_41(256'h5DA8E4FBB9283FF0D905D0C89491596F89EB4067769F36905F3C9AD20DAC5BE5),
    .INIT_42(256'h766C81158B1ADC7BA86EE4A34A8733999033F103C69D991BDA5E3DE646DD8CE7),
    .INIT_43(256'h1AE53C58E0C31C27727A1331F4B77551B548C4452AB3FDB3DF985092D74AE675),
    .INIT_44(256'hEFA16038B0C1955573BFD87B7F42007DBDC397A39ECA7BBB62424310F405C43C),
    .INIT_45(256'h7ACEDDD4F1F20BE0E3CEAE100BC5C84B866964DB5083845DB065B8AD6748DAB2),
    .INIT_46(256'hDD2F6021F67C26FF3D94E733A4525105C93F1E8D589955416D84D191DD3638D3),
    .INIT_47(256'h5687438AC81B4C1F1961737A382B5F6B83A0160EE5CE8DECA6930B87C0F8E783),
    .INIT_48(256'h2BEE224974948802BEEF994B557E4E9D81D57D364BC2B7056D4C031900CC595E),
    .INIT_49(256'h9DD931B89FDD1A34C32E5B2319A8B80A2D99E1F83286EA97E650BBA0FCE5F3E4),
    .INIT_4A(256'hC7EA737C88916E366ACA82FCBACC08F96DF5167465C854DF796A5FE6737AF48A),
    .INIT_4B(256'h5DAD833D179D744F185BC435293AD33EAFDD12E2178BD858FB2598E378B76514),
    .INIT_4C(256'hBFE899BB14C89AA26E79B130CFF1951542D7423C32B309F26AE9DD9F1DC7D69B),
    .INIT_4D(256'hEABA85D1ED279F527D6C58A636D6E85D048FC010CA03B078B58BB5A516E09F6C),
    .INIT_4E(256'hD71DD437249AA2E59FB9B511497E530B902F67D522A1A4C429D5AFDDE41C949E),
    .INIT_4F(256'hAEFDC7820A3AEE6149D24814FE5979735DEF04B6D80F434F380F96F86A7F44EA),
    .INIT_50(256'hE89FFD3703072F294CB01D81A6D2375EAE6541E1358E60188BC52DAC22234D3E),
    .INIT_51(256'h727E2CDC2F4B4A81C37851E5D159ACC5FA25F4B0CA824392A11EAA87A907C95B),
    .INIT_52(256'h3C64256CDB3D70D123E2E06471086729F6090C4CE383A31AFB2C9EBDC1AC8C3B),
    .INIT_53(256'hFA62FAF75DD3C4D6540F4B7B5E45983D5257E83BEEB657F4FCCB2780E66F76C5),
    .INIT_54(256'h202BBEEA50A3A78ADCADB5B549E96050284A51DE78DFB95EA910DF302FF29D43),
    .INIT_55(256'hEFB5EBF463A50E70D4DA9C4569CFA45188D1B7B60B1722EAF40BED4BF10F3B0B),
    .INIT_56(256'hD826E3830AC208E634B21285576CCAC7EAA4F31FA98A67FE806A4A91EDE6A340),
    .INIT_57(256'hA8794CA2468F06688C2D73CAB45C89BEC6F37D8D9B204B54E832C9E6E6CD2F2B),
    .INIT_58(256'h71A36F5BC400AA51CEF40C8B6F43818312ADADA487D857240E4AE60476697C18),
    .INIT_59(256'h5F4CBC1BD57119F1BAAA42796D2458EA40BE7405667AF3852BAC6C745E7C980B),
    .INIT_5A(256'hFA8AEDCCBCED5E90E9B58120520EEE35346B05786FA27FF63B155E25A33E7C37),
    .INIT_5B(256'hAA64DACC5C796DA15FD968F21CB601FD2C5717DE21A6382AD060FEC5E3A27D47),
    .INIT_5C(256'hC9DB4D32C7AB858EC23D2E43515FF43E3D5E20D71F32C2AD7360B6E9FA5FA078),
    .INIT_5D(256'hEDF691FFA16C937B278384F859BDEF12D399209AB2656F80F02E0F672F134B7D),
    .INIT_5E(256'h2323D9C7C239EDDD84B2D60796F64499F4D5AC8FB0615B85602F417E13EA484A),
    .INIT_5F(256'h2538CADD97DCAF38364922BFBB878C510090AF1E8E63A4FF7557272BA0B772AC),
    .INIT_60(256'h613E158B3B3E82419696B0E28BD3055DA6A3D90902D78A40C9827CF83464C332),
    .INIT_61(256'hA8DAA6595F8D867F801BADDE90F971D35C03A71A8E4D6FE4A8311A905D9D70C9),
    .INIT_62(256'hFEE31D4202DEF571B9FFE067A571F83D971B16B09AE93E5CDE54F932D5002282),
    .INIT_63(256'hE4BC6A2A3D73333C2B27E929BC654AD33AAA4D8C3595245896360922B5261E0F),
    .INIT_64(256'h44DFE66464A0B6D2CC578F7E8F3291B2AF34C4AA12972E37150DBABD41FA4424),
    .INIT_65(256'h58ABCD76AD060981F938AA1EBB630F26C13FEF14AB733555659AC6677CC782DF),
    .INIT_66(256'hFAF08909F09B5FAE94592D19BC729662725E5A9AFA782CA0DFA162E15FDCA410),
    .INIT_67(256'h60BE2CA74DE4905D1E2E078B06BB23CF8F6346A61E9B084CD786FE316D97C087),
    .INIT_68(256'h1B32D87E975B6E6BE9CDE70BDD29DEEAEB93E959D25C0E1AE17BB0F53CABAE15),
    .INIT_69(256'hDD7890DD50B4EC44158F02A9DB3E5BC115370D77FF52DD72D15D96166EECD37C),
    .INIT_6A(256'h10227CB0917DB683DA0EAEBBC99D83C51221B3C27EA80BCEAA59FA3843CDFCC2),
    .INIT_6B(256'h6BC678CE4810E55B0EBD6A5FFE2F13462C146D6DDE8F30A4E473255F7D9EEBDD),
    .INIT_6C(256'h1DA1E410A9C28ED04564BE4B53C3F82B906C77F79C2FEC9BC8651E3E584E2BE7),
    .INIT_6D(256'h25698B2B57F2231C255BD6B86CF2A9A73B10E2630FC1DF78D9B47EDACECBCE6A),
    .INIT_6E(256'h4CF05F021AA7487FFA84A96833F3367620B30733F78D6807770DFBC50FC719EA),
    .INIT_6F(256'hCCF15A7FFC9C359AD37D8A281F7797953FB7A59DF4F9909B3F552DC3BD183AB9),
    .INIT_70(256'h09A2F0594A0E0BAAAA328FE652C23A252041A2E29B651BB19C592DAF0C7F1065),
    .INIT_71(256'h3ADCFCB99872E3ED6F4CED952083D028E967584D8D3C7BE9A3C8CDEABB168DFC),
    .INIT_72(256'h6A82AA6532CE2349BA3C6926B162547DA65A05698565D5EB506C5FA82B3C1529),
    .INIT_73(256'hD58672616FC354308ADDFA71DBC906EC25EC2D0EB68ACC3476EA140EC47C412D),
    .INIT_74(256'h6A4ED53943F5289D47D70DFFF0BA8A8346D18760DF2FE59D9EAB445CFA4A29CC),
    .INIT_75(256'h162F82F1DF2DDD6B65309B5ED78A2DCF9335EB0B5CB6855BDC0E0631CC721331),
    .INIT_76(256'h040981ACFE16AECBCFE5C86D0A2B0EF1DADEA1747CF342084640CEE67B8546C3),
    .INIT_77(256'h84BC55957B60349AC179F7D2ABEB5B96C7C343E89232DCB9C56BF7D00440B9CD),
    .INIT_78(256'hEA8F6EC30E5BEF601D3D4BC273B4104AE3ADFFE495B6C4E27534C7458D0C7438),
    .INIT_79(256'h86DC7AEBFA954CF580B990BE47546D6C6336C06471A85CFF79865925BA196A06),
    .INIT_7A(256'hB8B3ABCDB80594B8DED49C38FF7322D4BE72D714540044953BF207F51B468E8E),
    .INIT_7B(256'h185ABBE00D490820EBFCE09BC58C31B274F5A42CFE9B1DB22054194E604A7139),
    .INIT_7C(256'hD5EAD1D83743660C66F8927B2A7C6DF68509179FF60E5980EEC54FE48355DCF6),
    .INIT_7D(256'hA2F71B2869F16DF92AB1AAECD74D4849D7AE3E3261AC23BFC75EE7081AB873C1),
    .INIT_7E(256'h700CFC1F8EA047BB8F427CC402930C4B598A31E8DAA827F2D2666E47E97F261B),
    .INIT_7F(256'h00F994757375BA4DAC31053748A8894D73459C0B17CB910A58B4E60A6755CB6E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hE66CBB8EFB8EBCA13207E6E14C1C5AEF7B3FEB54064093179CD7A409A528610F),
    .INITP_01(256'hDDF4BF967380D7013BEF8A540E1026CC20DEA94844FCDE347597B9F154308839),
    .INITP_02(256'h79792999CE36C6C3C7BD7A57634B318D411EC6AC8C7B160BB6B2945CACD84001),
    .INITP_03(256'h8DE7BA8444583572EB5E4E0519A41C0A23A241E05EA7C1AA7159B44DBC55714E),
    .INITP_04(256'h37289B3929CDC2352AAB35082803A844C3A2BCAEDCB92F1ED1B442BF00DD22F3),
    .INITP_05(256'hC2A51A33A663538553F2515F41EA9D43B26F33DA9606F62E58BFF60EB1352BD6),
    .INITP_06(256'hEA328D2E9C87B1F7EF51A51F3E559B85D183DF361601AB031BD05FB2E97DC2E9),
    .INITP_07(256'hFE211F012B3AF3C6EBC2114F475EA803F5B36114697C9D9D1F656BA2D158D1A5),
    .INITP_08(256'h9B15BA8F973EA39647EFABC68C0710536DCF7A53D288CCEBC23783772569BBE3),
    .INITP_09(256'hA8883F9695029866BF358B71EEBAFF351E22296DF02D95491B7DACC6D4B1938D),
    .INITP_0A(256'h568BAC8886DEF0343A577F44FB4EEDF17CC757855E2B08F64932837A4CD97BFF),
    .INITP_0B(256'hF09E3A8129A22AA447AE4F0099245AB71DF8C0E1B005DE6640A1B7AA3C506BB0),
    .INITP_0C(256'h1AF39BAAA975D94FD54139B1A882F7F2FE78BDEF7C0938221F2F59E880D95C0B),
    .INITP_0D(256'hED3BBE32689B14AF7C2F504FC97B9AFF8C81B37B1C87FD80B665F33BB5B0342B),
    .INITP_0E(256'h4731A9182A9489F9B96DEE72E7CB5A786FE4A4B924F30D3F924E9F65A55C9E7F),
    .INITP_0F(256'h38A4B31EAED78122FEFFF5FAF5DC659B1D8C8849AC7CC920884336F0D83D7647),
    .INIT_00(256'h718E8208B74A255EAA0B9EDEFA15A6FAD2935F9C93792DEB7D51C2DF5B96EDFF),
    .INIT_01(256'h24C5F40B4A8713470822E596FCC7FA7D2D88F7048256A7EDBFBFF78BEC5469E9),
    .INIT_02(256'h223FAE02D2464F315D1070D04300FF07B9CA5B61E12F140DD4A1DEBBCAC358D1),
    .INIT_03(256'h6F56F676EAEA87C88EFD6A6FDACED76D1A72D0CD33B482A914942C856CA6C449),
    .INIT_04(256'h3F16AFE8F58D3822E2ED69000C9501F4B2FC4207CCACADE6F34EC291D7657760),
    .INIT_05(256'h41A8230FD84685583257739C6B3C7AE496F4625FFC162DAEBFC4BC40069F688F),
    .INIT_06(256'h1A0A736046904C921592CD5597629134E3399BB2CC0E26631968F9612AB98254),
    .INIT_07(256'hAF17624A788FFA9E1A53BD173F89D119B92B34571F6034E2B94D2B6216746817),
    .INIT_08(256'h75467EF1E2FE8C575DD69A7AFD38D8945D3F2955B3EA6C03CA47BD4A0AEC3A4D),
    .INIT_09(256'h50227681A06C38E43752FEA033DF1B4DFE960BB047861E66D4AAE3F46EE3F55A),
    .INIT_0A(256'h3CB779289977B2775123A31B6A115ABA69E9570ADCF22C528AF4EE9EEDAACB31),
    .INIT_0B(256'hADCC1A51C2BB34C6EFAEE9480E06C45E0761E48EB324B15D7D52BC803AF37BCD),
    .INIT_0C(256'hCE0F15EDF0F925C037540772232C131AD1D2A9B6DCC3E793F66BCEB7C201E836),
    .INIT_0D(256'hF6ECF9B5F11AF6A3FA38428CA3E11144F5A7F913A10EAAC37F118170B08B518A),
    .INIT_0E(256'hBD729DABD6941881A8C0297DC8F31F7524C1265AAE84FD4280FFFE057FF1E33C),
    .INIT_0F(256'h754CCE600C6BD55111F2E5DE6C5AF79D32E0BF2A766B0638C889782C01297C26),
    .INIT_10(256'h1A08191BEFC97000AA87C24F9A40DFEE3E07DA9944C76C1DC86A5E394F5DDCCE),
    .INIT_11(256'hE2104F63199B403B46E006BDB8EBA28CBCA699F906038A506E4F8F634BB6D0C9),
    .INIT_12(256'h5611AD33D9821A7AFD2E3118F6A18088B8746F56802543D6D4E786D0F8D13529),
    .INIT_13(256'hB62CA3007AF2FA6C65783F7D9481E90C380FF2CD96932FA96E8B9826F166B8B2),
    .INIT_14(256'hAEAD7C0916E7C697B3B65E5CB7F92EAFE8840CFF754DEBE3197968C8E94F66F3),
    .INIT_15(256'hC324A97F8951D9223DEBF0B627A65FBBEC624658712280DF448441FB782FD734),
    .INIT_16(256'h1362A2A332B54CAF850D8F8B4F42EE7BAA16F8A65E5D36F9F2CF9D5772F0CC70),
    .INIT_17(256'hB97534F1E79C851CBCC2E71BF68701819DA792606D0B33B3E68276EAAA688E46),
    .INIT_18(256'h814AB08B8FEA7962C6F7276023FF8EEC2E3B4CCFE1E02C9B83E8DE128D44E27E),
    .INIT_19(256'h70FE6765E0FAFA43DB79CD406FA563C0F15B4F2744E2B230EED1F23D58DCD39C),
    .INIT_1A(256'hD23210E11327192A5AEFE3DAA0510A9ECD2B107EF694CD81F7CA1423A84C09EA),
    .INIT_1B(256'h557D5A6AC14434D72BA269D1475E6762876AA5128B6808C641E79894464D0C99),
    .INIT_1C(256'h9F3F7B9684C4529E70C76243522EAF386CE9182C000EA0F78A22F65D637D3C2B),
    .INIT_1D(256'hDA4413B212A2DBDB6B3E6B1FDFEE8E80AFC47D8F8C88AB5C6F6C7A9EACB2A191),
    .INIT_1E(256'h183C63783430B00A7E189B2C027523204F3C26CFBA81783EC5FA1C6C53BDC3BA),
    .INIT_1F(256'hE1E83097E9FCE93C18E2B85EA0FFB06A79D7BAB83980AC715F6130281CB82FB7),
    .INIT_20(256'h4F5254195C9350B933CF391FD130CAFE925522A374A6540EAC659795DC00E3F0),
    .INIT_21(256'h8D72283FBB99B04A310BFAB2E25FD40E7E9D4E064D31A2A8A00ECC00A30CA462),
    .INIT_22(256'hC62EB4225E6DBA5FB624DAFD24560AD142A56B64B9AF34FBDDCBBA4E68514E87),
    .INIT_23(256'h9C4854C23BF647A383C3DA7EBFADE7C6334A67D5ED2D5D32CA16EBDE368DC488),
    .INIT_24(256'h80681C800E4305E6D4576DB7694DA15BD747AD8B2982546E8FEB1DB6E7612AB3),
    .INIT_25(256'h0CECEDCEBAD4B6C6C1AA3731D177F3DA4BB05AE33FA15BD00BAA082646EE8A6B),
    .INIT_26(256'h203F1109452B5329D75433F8FB58C561D0AE4F341D3BB8B88F22536555DB2D6C),
    .INIT_27(256'h3E4C5224381D47E67593D7A2A30E70D7357269E34E3FB9D4D96D5A2F68F402B8),
    .INIT_28(256'h05CF1DC641FE89669B6CEA769822BB4ACFC4C01A52EA54D8B01F55B7521F05EF),
    .INIT_29(256'h6A96757BC93BA09C12EFEB78D948C590017E3373CE3965D56AC47321EA66ED85),
    .INIT_2A(256'h91794B0CDF58EC5A5F0EBE030D37B736A59139CC714805F34AE689EA52023C97),
    .INIT_2B(256'h8B8A4165CB87BB5796302E15B3B79D6AD1EE4A58284F629BE8A23393C7A74ABD),
    .INIT_2C(256'hC12D4E49C367C139DD93BEE343B36A33A8E5E6F9F66E4CCF49CEEA939AC6183B),
    .INIT_2D(256'h72218D3B8A66EFC83C44DCDEC9ED56EC5B3AC1599FD5AF9980C58610B5A57F17),
    .INIT_2E(256'h745F06198EEAEBCF1DF667DDEDBA2654C305AC9DBC884449AC8415C270DE5A05),
    .INIT_2F(256'hB565860384BBE7501EF2D4268EB25B0D5FE3C27960FF5FDE9D7B5DB31677DD78),
    .INIT_30(256'hD1AED20E71ED84350D34376D5342E3CBD7AB877F04DE741AD36015CAB3AC5A97),
    .INIT_31(256'h23A0697A668CC31848A307B77D6B64F6E7A4D8DCAFC95EE52A8341B4E453EB1B),
    .INIT_32(256'hD3E9993542866C82312E7322B8DFF22A1A3569383791409EB8F442407A4409B6),
    .INIT_33(256'hBB02E530A7DE9E22331C996B5949DD3F29C171B52DE5F50DFFF5335C9D33A0CA),
    .INIT_34(256'hC8E4CF820C797B357E0B3CF0F599AAEEE6B26063B00D714591F9A3C8DD2FAC1E),
    .INIT_35(256'h6652582146BDEF6CA51B9E296DC9BF8A7A0A26BD91339ADB6B516ABE9C6319E9),
    .INIT_36(256'hF273262E0D2D392120BBE10D93210C82717195088E76A327426ED53780F75E60),
    .INIT_37(256'h212408B0830BB43FF0E2EB8539F68319F1CCAFCD7AC5A27FE18C8094DDCF0CBF),
    .INIT_38(256'hEAB73641CBC55F4CDD7852399FD0507A7AA3CD735ECCF54A44A2585BB95CB3F9),
    .INIT_39(256'h62594C41E5A847D690F1A5F7F5F7F5DCCD2C5ECBA981F47860D16047B644A79F),
    .INIT_3A(256'h00C1C8A835E439E741C55DA0236053F3E1B8DB2069D683FC91A08F4BF08ACB29),
    .INIT_3B(256'h0CD36561A6F19E43AC02987CCBF923472AD3F2BCDE6DA3DD8620EB84B6E7C162),
    .INIT_3C(256'h6B459BD3340ED7F1F0F1F392539DE0291CE03F4FF9A4E20BB869F2151E275108),
    .INIT_3D(256'h2F558B1B87CEB8DB8626F04FE4E4B900EE872CB668289B0C4B065C1A94B3B8F7),
    .INIT_3E(256'hA808B2C9C8646832CD27C569072414D8C86894F1A671991FCB631205278F1D5B),
    .INIT_3F(256'hFAF0CD1D3C2FDD17FEC29185A242F6B47FBAA4E701EEEEF10E3CF08C12ED72E2),
    .INIT_40(256'hAA81380EA21E31B74EFDC7F0F15DB1BD4445D1A08D0578754B18F90E3DB2ECFD),
    .INIT_41(256'hC0F24299A8CDBB0A145EAB1F77AEB1A303CE0E86F68E68DEF914AE2A5B033949),
    .INIT_42(256'h0DFC31CB77D22B3FB5D64D9DFD16C37BDD42A02399901E4A582DD7A173A75781),
    .INIT_43(256'hBC540FCA00EFF8404DF007B515875C45A2AAB71063D4BA4D03B69EDDA021055A),
    .INIT_44(256'h51EC4BCFBD3D2C5560C86CF0E4C4EB90FD909EEAA523D8499CF6DA9C9C65A536),
    .INIT_45(256'hB6BA5780126B13F5186D2503C60C1AE4452461C24F3A7978D3FF51BB573415C8),
    .INIT_46(256'hDD59DC0BC7F90F794743A7FF31605F81E098C954625A0C7A78D8D124B6836EDC),
    .INIT_47(256'hD4E65F826A744EF2B324453B5A2B3ACA1A3E037C2C595660835679972CD59001),
    .INIT_48(256'h9B2927E8BBC08C9DEFBCB07BE574D243BCE290479C6BA77A86FEE467DDFAB038),
    .INIT_49(256'hD940B701ECA1D4942F7BBA189EBAC65FC0D11622AAB4CB44FBF28881CF85B4A6),
    .INIT_4A(256'h1368EEE22CF1827297DF6BD7141C321B7A5490BC8348247CFC72D67288815CCC),
    .INIT_4B(256'hE6BC2598C6AF972C9A907B7D39B33B237B86BFC2D230DEEE59671BC75F61B0CB),
    .INIT_4C(256'hCCD8A5C6A7970DE0A225F650ED4FEBA20958F988A42E02E48D05D7AF7AF4F5F9),
    .INIT_4D(256'h57FB1F18192E762ECC3DEAE2EEA5A43090CDEC66E241EC7B813F04D9F3129EAF),
    .INIT_4E(256'h6CAFF84846EBCE56C710FA1753E6E2AE0D1349EC33C6D045CD62C5B6FDAEC2B0),
    .INIT_4F(256'h87D3BD8AEC401B9296B362F176F1513B7FE2813F72521DA37F87B34F087E95FC),
    .INIT_50(256'h4AF3C919D294764F4473E1588A81E1A7A6B24694354EAF9E8D298D5F2972D4C2),
    .INIT_51(256'h743697EA6ED9E2F44813C73D2BCC54A889E6AA74723540379F9D3DF9B25F981F),
    .INIT_52(256'h37C829F57505EF7E4CEF03DCA8B15EF2D2E6AF103081440A4F6B77AE9AAF2BCE),
    .INIT_53(256'hF922B54D87EF64DB1A62D7BAC73467DBB63DD308BDA9614454A700751DDBF3BA),
    .INIT_54(256'hB67C12E9D58EB5C0278C574288220F402A1062DA45BE0E3DB91B78CAA74878BF),
    .INIT_55(256'h2E31D6E9BA6D60B718F99C147A70F8B1928D3FB3BB41C79F50B8CD6EC3BD2963),
    .INIT_56(256'hCCA80547AA14088DADB9642DE13BB6BF9E6E2040ECA4130648386C11F7B3B2EE),
    .INIT_57(256'hD53D2A22CF79D2674B8C693709246329F4B25A7C72FB5027A786BB16B8C3AF26),
    .INIT_58(256'h9D26527A5FA3749E4DD834580435809183D6ADB9C25C60083598FE26594C185F),
    .INIT_59(256'hEF16A2DE23278FE9CA9984AFD27A09C8AA9054919F0B03040D128FC1B1778ADF),
    .INIT_5A(256'h9FDE7F949D98E21B95A5C28D4256DDF5D48F442894E6BCA25F40F4EF3C1DFB7C),
    .INIT_5B(256'h85545EA9BC319034CD7BF6FD6A05D71DF286793EA26B304D14F6EED264B53A8D),
    .INIT_5C(256'h94020466325834B5D2934819144B7DB69A6863F6C074B23E17B5F74C136942E5),
    .INIT_5D(256'h314A320E31AF535C33390E6D22AD1A6140C96ADAC5B2E80A6793F4FFE734E8AC),
    .INIT_5E(256'hBE71B80E9B7E5FD5945E67BD8562E0502F88435936BE42380856DB14C9739B24),
    .INIT_5F(256'hE9ED19BAC0CA2875939B2F69A29103FFBCD175C52D5DBED30D5962431B074184),
    .INIT_60(256'h1A63A11674C2466493DF1411DDEBC33F23A6B2A37D1C0C87E2A26369FDE7EAF6),
    .INIT_61(256'hF548DCB360560A8B29D3362D6A7A1EECAC593987DCFCE5BB69BB1865365FD706),
    .INIT_62(256'hDF73345BBDE5E155626002336E424960223028A405502EC15C42C56BC26E52DB),
    .INIT_63(256'h534D3E7028F5D92EC8D33F3C87F664F2AF168294C0112792DEF77D8A0514857A),
    .INIT_64(256'h7295829B4A9813B7597D6ECB9320BAC390B653AC530D2C0EEA4508AE2463FFE0),
    .INIT_65(256'h9BDCBC6083B22B2CDF9787CE79A956DE9F825D84F07F1109F97276AEF85B3636),
    .INIT_66(256'h60F4AB60C7C69245A8A55A51635BF918D75223958AF0D5A533B57EA6CC1443E8),
    .INIT_67(256'h1C8057EF4A3BF596E0C452808C6E0A29D8619DC244499959136610FD5595DDD2),
    .INIT_68(256'hE3EE76D26B408B240D87D878B3E9C49E75245B2A6C6B1C65F86A319D81149709),
    .INIT_69(256'hE67B37FE810907F01DCA3104716F1C8142452A046E0D11FB467FD1988DC6313C),
    .INIT_6A(256'hBDCAD7544FE11F631D54F94B662FE1D99828011DCEF410CDDC6BA418BA2D47FF),
    .INIT_6B(256'h559C3821CA965BF5EE519EE38B0C28A960CD72270C46370D0F8FD750A53B17C3),
    .INIT_6C(256'hC667C17310CEDB1C75C4D2097C9396AF7461982A31043482B636E59DE5D60E7C),
    .INIT_6D(256'h151669DB665472416D42378B812BC604C416D00961A56FE6829906A9762034F5),
    .INIT_6E(256'hC826AD7F229637FD01AA994765C9651EDDB58C0E3A48744963245114F6247D95),
    .INIT_6F(256'hA7E099DBA8E9A4129C335915871D037316E40366671C4A76EA8026931325C6A5),
    .INIT_70(256'hE91C691C0CFD69B00E9AA145A9FDDB34D55C6D9D5140279B03AA2E127347E2D8),
    .INIT_71(256'h4EEA07DCC35C9E8042AD443C4409EF6EEF65877E9ACFD2683D00E0CCE20D0671),
    .INIT_72(256'h745930703CFF4375AD6D5D53438FA21C9C022F9BD0C941A1586195F156F23D82),
    .INIT_73(256'h713491B26CF58FFBAE8CA73F61CD6A3DB8DF11906D7BFB0D876F2ED6C4F17CAA),
    .INIT_74(256'hA4DDE5285640D76C3DDF6474E5CF4C1CA6F6B524A3DBC78879D756C52A55A525),
    .INIT_75(256'h57177B145733528D5FDD4256D3DBC5C546364CFD2603381D374FB5882DA08504),
    .INIT_76(256'h581B3FFEB8548FCF5B60B9E8BB492537B5BDCF0BD01658EA9B65CC9CEC2CE5F1),
    .INIT_77(256'h9CAC3CBFFDBE37D02CF864FEE3EA9ED9459BC942671A163D257E31BD9B0C6C64),
    .INIT_78(256'h4E61D4FA083C8B10CBEE837814FCDCE4FD9BC261C9682F8A0E8E942C35DEC362),
    .INIT_79(256'hC703340153359C333D284127C7036E393A5B003CE3587088AB623C660D40340C),
    .INIT_7A(256'h6304026C05FDE27C0B67D95FBF068158577E1C57359A3227177504C852D2DC94),
    .INIT_7B(256'h72DA0E0ABDC5D05F42CB5612E3574C98913B0859931683CB9F3B5B39148545CE),
    .INIT_7C(256'h2B4012002CDD43EE63106510326517576667E624F235808049A4A98511644788),
    .INIT_7D(256'hCB95EE9D9D20F7B94B3FC1340F6CDAE4E5C362FBA9F2E0E2A98927C3B30AB955),
    .INIT_7E(256'h36822A382CBA72230349930289E839919351159E29CD09CE4E14E5D320DD5721),
    .INIT_7F(256'h98798AAF98ECE05F051874CB01CC9A365541DF810D1EE5FB846940EB7CA49787),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h931097859A91B6A5E56D895BE1ED0ACBC543AD37ECB5C0A3DA0BD059D3C97CBD),
    .INITP_01(256'hD57CD1EB9CD9F44DA365AF11A29748A18512E94588F5A6C7F62FDB3997AB2EAB),
    .INITP_02(256'h933295AFDC9BF42FA32FCB53A2D54AC9C551A977ECF5A0C7BA6D9A3B978B7CBD),
    .INITP_03(256'hFD3ED1C99C09B65FC303AF35EE978AA1D350EB058A93F485B46FD979F5EB4CCB),
    .INITP_04(256'h9332D7AD9E99B627E52FC951A0E70AC98541E975ACF7C0C1BA69D019D38B7CBD),
    .INITP_05(256'hBD7C91E99C59B65FA345AF33EA958AA3D312AB47CAF3E4C7B42FD93995A96EA9),
    .INITP_06(256'hD574D5A9DC9BF46DA367EF53E2D548A38513A955C8F5A6C5FA2D9A3BD7893EBD),
    .INITP_07(256'hFD3E93CBD80BD25F8303EF37AC9582A39350E707DA91B4A5A46D895BB5EB48CB),
    .INITP_08(256'hD31297AD9A91B625A52D895BE0ED0ACB8543AD35ECB7C0E3FA0BD05BD3C97CBD),
    .INITP_09(256'hF57C91EBDCD9B44DE365AF11AA9748A38512E94788F7A6C5F62FDB3B95AB2EA9),
    .INITP_0A(256'h973295AF9C9BF42FE327CB53E2D54AC98551A977ECF5A2C5BA6D9A3997893CBD),
    .INITP_0B(256'hFD3ED1CB9809965F8303EF35AE978AA3D350EF058A93F4A7A46DD979F5EB4CC9),
    .INITP_0C(256'hD312D7ADDE91B627A52F8951E0E70AC9C541E975ACF7C0C3BA4BD01BD3897CBD),
    .INITP_0D(256'hFD7C91EB9C59B65FE365AF33AA9588A18112AB47CAF3E4C5B42FD93995A92EA9),
    .INITP_0E(256'hD33295AFDC9BF62DA12FCB51A2D70AC9C551E977ACF5A0C5FA6D903B978B7CBD),
    .INITP_0F(256'hDEC9D059ECB5C0A1E56D8959E1ED0AC9C512E94588F5A6C5F22F9B39D7AB2EA9),
    .INIT_00(256'hB1FD9E75744B343C401C616E7C9561B0C6D893333A890AC323F0071E453C43FF),
    .INIT_01(256'hECDAFF67DDAE2B40161BECE16B1AA84D4F772464E8E14C134413C5D86FF6A3EB),
    .INIT_02(256'hD478D2722D8132C3B01722AC785BDE840FABDF4F15382F70B805EA7F5E1C0BFA),
    .INIT_03(256'hFB79255584D31CB373FE420E56D4DC0D857A6470B20C2FACC71A98277AC8DCD3),
    .INIT_04(256'hC4BB39F4D1E7B401799AC30EFBF8A19BECC23AC2A8E11D9B6E7B79D0D2ADD5FE),
    .INIT_05(256'hF54C93DF3242A4FB460E9879E278C32E6B5AC5EB4E34ABE186972F81F6602FE0),
    .INIT_06(256'hE16669ED8619AF82E4933F48F2BB8C6A309282DA7F8D3F43FF8D582DE88A15F4),
    .INIT_07(256'hFEB1B6CAD562926A9EECEBA2C92FF4EA9C3D02F314ADB275049CFECCFC2F1FC3),
    .INIT_08(256'hBBDCEC34A399F41F5D5B123EBC4781A6D94EE7FB713594B04936C0F78CF568FF),
    .INIT_09(256'hF193492308F8E81D2E9542ADA7C9363E5DE975271B8BD2FA65557AACB3ABE9E6),
    .INIT_0A(256'hDB551E305ACDF1A3CA55D07AB50BFE77201E31154AE2B75ADC49A156A3D39BF8),
    .INIT_0B(256'hFDE96E10AD1BD88F887597D8908268FC915CB332E35DF191E65B4BFABB7CFECB),
    .INIT_0C(256'hCC9A86B3FF3473E295D973DD3AAAC090FE378C89DF8CA68693C032A818657BFD),
    .INIT_0D(256'hF809DC9A5B8B60D75C86ED441C26501E78CC15AE80BB6DC7A7D9E4543814BADA),
    .INIT_0E(256'hE720B4AAB2646D61FDA196152F6B1B5C4004D49FB437C52B22D00F032C405CF0),
    .INIT_0F(256'hFF1FFE83FCA94D44B2623F6A02DC7FD7A71D50B444FC735922DCB09D3DE240BA),
    .INIT_10(256'hB66DC5558BF2942E4EBBBA569C6EF1ABD013BD17565FCFBA3693640B69198CFF),
    .INIT_11(256'hEEB72445F353892F225817C789F26F4656B04D4502B60F0755B420C291D0C6E9),
    .INIT_12(256'hD7E7F851432792B3BDB679939633367D18E50832300DF365CAA7466B80F853F9),
    .INIT_13(256'hFC314A3399777AA17E3A6DF373ABA2058BEB8C51CBB4909FD6BBF1119AA26DCF),
    .INIT_14(256'hC82A5FD4E98E13F187391BF61AD13095F5FD63A5C4B7E290811ED6BCF58933FD),
    .INIT_15(256'hF628B8BD47E602E9514AC25EFF4F8A267293EDCC67090CD497388A6A173A28DD),
    .INIT_16(256'hE4438FCC9CBE0E72F1326A2E1193536338CBABBD9A620237102EB4180A6538F2),
    .INIT_17(256'hFF20DAA6E806F057A8271586E506BAE0A2AD29D42C551367133C57B41C09B0BE),
    .INIT_18(256'hBF4C1214BA4054106BFA6B26DC1F11A0E38810DE8D0B59A55CD81DE4AFD144FF),
    .INIT_19(256'hF36F6E011D9D460C3AD16D93C4A1FD3664229D09355F4AEE76F6D597D4850CE3),
    .INIT_1A(256'hDEC4440E70735093D7F41361D4E3C57028585AF865B87B4EEDEBFD42C5AFF1F6),
    .INIT_1B(256'hFE4292EDC1BF357C93B1C1BDAD592EF397CCDB13FC055283F5FBA4E3DC568FC7),
    .INIT_1C(256'hD009AC9216DBD3D2A278CAC559824F8A0771B66CFA626B7BA6638E943B41C3FC),
    .INIT_1D(256'hF9C10178702FBEC568C2182939FD16167F043D8F9963CEBAB77A3E3E59EE4BD6),
    .INIT_1E(256'hEAFDDA89C809CC510ADEC1FB4D43E255483EFC81CE0C891F33716AED4E1B7FEE),
    .INIT_1F(256'hFFFB22600F4CAA31BC9D694F1EB244CDAC8D77945CA4D34B317C09865DBBD1B5),
    .INIT_20(256'hB435B265801F643547EB8E628C8129ADCB76A82548746CBF2CC13514572BD4FF),
    .INIT_21(256'hED481256E8815A371CBA01D47A060C4A53133955F5CCAD0D4CE4F2CD80E334EA),
    .INIT_22(256'hD5AFE561385462BBB6E74D9F8747A6801448F3412222916AC1D618756F0A2FFA),
    .INIT_23(256'hFB5538448FA54BAA789C570165C03F0988B37860BEE060A6CEEBC41C8AB5A4D1),
    .INIT_24(256'hC6F34CE4DDBBE4F9806AEF020BE56898F0604EB4B6CC8096784CA8C6E49B1EFE),
    .INIT_25(256'hF6BAA5CE3C14D3F24BACAD6CF064262A6FF7D9DB5B1EDCDA8F685D76064D60DF),
    .INIT_26(256'hE3D57CDD91ECDF7AEA62553B01A7F066342E97CC8D78A03D085E8622F977A7F3),
    .INIT_27(256'hFF69C8B8DF34C160A38A0094D71B57E59F7516E32081E26E0C6C2AC00C1CE8C0),
    .INIT_28(256'hBD14FF24AF6D2417642B3E32CC3349A3DEEBFBED7F20F6AA5207EFED9EE3FCFF),
    .INIT_29(256'hF2015C1212CB1715343357A0B5B5993A61858918287519F46E26A8A2C3987AE5),
    .INIT_2A(256'hDC8D311F65A0209BD125FC6EC5F7617424BB450658CD1954E51ACF4CB4C15FF7),
    .INIT_2B(256'hFDC580FEB7ED06868E13ACCB9E6DCBF79494C722F031218AED2B78EECB69C6C9),
    .INIT_2C(256'hCED199A30B08A3DA9BA89ED14996878D02D4A17AEC7709809D91609E2A539FFC),
    .INIT_2D(256'hF9E5EF89665D8FCE622402362B12B31A7C68299E8D8F9EC0AFA91149480182D8),
    .INIT_2E(256'hE88FC79ABD369C59043FAB083E577E5844A1E890C12227252AA13DF83D2DEEEF),
    .INIT_2F(256'hFF8E1072067B7B3BB700545D10C7E2D2AA5564A450D0A3522AACDC914DCF08B7),
    .INIT_30(256'hB8A4D84597C6C426568BE64AAC5AB9A8D4B0D209644A31B53F6492017A07D7FF),
    .INIT_31(256'hF0253734FD26B82628F62DBA98DED3425A4C61360EA070005D854DB7A2BE57E8),
    .INIT_32(256'hD91E0B404FFAC1ABC486A587A61F9A7A1C821C243DF8555FD378746192E677F8),
    .INIT_33(256'hFC0D5C21A349A99883D882E6829705008E23A041D788C098DE8B1E05AB8F35CD),
    .INIT_34(256'hCA6272C3F46143EA8E0947E92ABDF892F99A7897D1A2448B8AEF04B2077757FD),
    .INIT_35(256'hF796CAAC51B831E057E8D8510E3BED22753001BD74E63DCD9F09B75F2727F1DB),
    .INIT_36(256'hE5B2A2BBA7913E6AF7018022207FB75F3C68BFAEA74D643119FFE10D1B52CAF1),
    .INIT_37(256'hFFB0EC95F2D81E4EADC52A78F4F11CDCA4E53DC4382843601B0C83A92CF578BC),
    .INIT_38(256'hC1832604C614840872CA971AEB0CD99EE72525D09BF6BBA065AA4BDAC1BF8DFE),
    .INIT_39(256'hF4DE81F0276F7503406F8286D38C603268BEB1FA414A7AE77EC7028CE5739DE2),
    .INIT_3A(256'hE0F756FE7B46808ADEC32954E3CF296D2CF56EE972A2DD48F6BC2B37D69C83F5),
    .INIT_3B(256'hFEF9A4DBCB906473984FD6AFBB4491EE9A04EE0308D9827CFDCCD1D7EC4257C5),
    .INIT_3C(256'hD240BF8222AE02CAA947F6B8686E16870B0ECA5E074DCD76AF34BC8A4D2FE7FB),
    .INIT_3D(256'hFA9D13677A01EDBC6D602D1C48E979128242517FA638FFB3BF4A6B3369DB13D4),
    .INIT_3E(256'hEB6CEC78D2DCFB48107DD6EE5C2F45514BDA1072DBF7EA193B4298E35F0811ED),
    .INIT_3F(256'hFFB2334E191ED828C13B7E412C9EA7C8AFC58B8468770343394C357A6DA899B2),
    .INIT_40(256'hB2CBA3717740403A420F6C6B809093AFC7C0982F3D8422C225E4121C4A3843FF),
    .INIT_41(256'hEC750463E0A3363E1803F1DE6F15C14C505E2A60EBDC64114607D0D574F107EB),
    .INIT_42(256'hD445D76D30763EC1B10B2DA97B5610831092E44C1832486FBAF9F57D6218D4FA),
    .INIT_43(256'hFBB02A5187C728B174E5480B5ACFF50C8648696CB5013BABC90EA3247EC40ED2),
    .INIT_44(256'hC4893EF0D4DCC0FF7B8ECE0BFFF3D29AEDAA3FBEACDC369A716F85CDD7A967FE),
    .INIT_45(256'hF5E798DB3536B0F847F59D76E573DC2D6C42CAE7512FB7DF888B3B7EFA5B93E0),
    .INIT_46(256'hE1026EE9890DBB80E6874444F6B6A569317987D7838857410181642AEC8579F4),
    .INIT_47(256'hFE1FBBC5D7579E679FD4F19ECD2A0DE89D0B07EF17A2BE74069009C9002A51C2),
    .INIT_48(256'hBBAAF130A68E001D5E4F1D3BC042B3A5DA35ECF77530ACAE4B2ACCF590F08CFF),
    .INIT_49(256'hF12F4E1F0AEDF31B307C47AAAAC44F3D5ED07A241E85EAF9674986AAB7A64DE6),
    .INIT_4A(256'hDB23222B5DC2FDA1CC49DB77B9061776210636114EDDD058DE3DAD54A7CF32F7),
    .INIT_4B(256'hFD20730BAF0FE38D8A5D9CD5947D81FB922AB82EE652FD8FE84F56F7BF7730CA),
    .INIT_4C(256'hCC678AAF02297FE096CD7DDA3DA5F18FFF1E9185E287BF8496B53DA51D6044FC),
    .INIT_4D(256'hF840E1965E7F6CD55E6EF2402021691D79B31AAA83B079C5A9CDEF513C10ECD9),
    .INIT_4E(256'hE7BCB9A6B558795FFF899B123366335B41ECD99BB732DE2A24C41A00303BC0F0),
    .INIT_4F(256'hFFFB027FFE9E5942B34A456705D798D6A8EB55B047F17F5724D0BB9A41DD72B9),
    .INIT_50(256'hB73ACA518EE7A02C50AFC553A06923AAD1FAC213595AE7B838876F086D14D4FF),
    .INIT_51(256'hEF522941F548952C24401CC48DED88455797524205B1270557A82BBF95CC2AE9),
    .INIT_52(256'hD8B4FD4C461C9DB1BFAA84909A2E4F7C19CC0D2F33080C64CC9B516885F31CF9),
    .INIT_53(256'hFC684E2E9B6B869F7F2172F077A6BB038CB9914DCEA99C9DD8AFFD0E9F9D9FCE),
    .INIT_54(256'hC8F864CFEB831FEF892D26F31ECC6295F6E468A2C7B1FB8F8312E1B9FA85FCFD),
    .INIT_55(256'hF7C4BCB849DB0EE75331C85B034AA225737AF2C86A0318D2992C95681B355BDD),
    .INIT_56(256'hE4DF94C89FB31A70F225702B148E6C6239B2B0B99D5D1B361323BF150E609DF2),
    .INIT_57(256'hFF8EDFA2EBFAFB55A90F1B83E901D2DFA27B2ED02F491F66153062B22004E2BE),
    .INIT_58(256'hC01A1710BD35600E6DEE7623E01B43A0E46F15DB900671A45ECD28E1B4CDD7FF),
    .INIT_59(256'hF30B73FD2092520A3BB97290C89C16356509A205385A56EC78EBE094D88170E3),
    .INIT_5A(256'hDE92480A73685C91D9E8195ED8DEDE6F293F5FF468B2934DF0DF083FCAAA55F6),
    .INIT_5B(256'hFEB097E8C3B3417A9498C6B9B05447F2979AE00FFFFA5E82F7EFAFE0E051C1C6),
    .INIT_5C(256'hD0D7B18E19D0DFD0A46CD5C25D7D81890858BB68FD5D837AA8579991403C8CFB),
    .INIT_5D(256'hFAF806747323CAC369AA1D263DF82F1580D7428B9C58DAB8B96E493B5DEA7DD6),
    .INIT_5E(256'hEA99DE85CAFED84E0BC6C6F8513EFA544925017ED107A11E356675EB5216E4EE),
    .INIT_5F(256'hFFB2265B1241B62FBD856F4B21AD5DCCAD5B7C905F99DF493370148361B703B4),
    .INIT_60(256'hB367AD697D2A583745F783658886F7AECA8EA328447954C02ACD2A17522F43FF),
    .INIT_61(256'hEDAD0D5AE58C4E391BD2FCD8760BF34A522C3458F1D1950E4AEFE7D07CE8D0EB),
    .INIT_62(256'hD5E1E065355F56BDB5F343A3834C74811361EE441F28796CBFE20C786B0F66FA),
    .INIT_63(256'hFB1E33488CB03FAD77B4520461C5270A87E57364BBEB54A7CCF6B91F86BA72D1),
    .INIT_64(256'hC52547E8DAC6D8FB7E76E40507EA3699EF7849B7B3D1679775589CC8E0A08BFE),
    .INIT_65(256'hF51EA1D23A1FC8F44AC4A86FED690E2B6E10D4DF5724D0DC8C74517802522EDF),
    .INIT_66(256'hE23977E18EF7D37CE96E4F3EFEACD767334792CF897D883E06697B25F47C42F3),
    .INIT_67(256'hFFFBC4BCDC40B563A1A2FB97D4203EE69EA711E71D8CD6700A781FC30821B5C1),
    .INIT_68(256'hBC46FA28AC78181962373335C83817A4DD04F6F07C25DEAC5013E3F099E8D4FF),
    .INIT_69(256'hF166571610D60B17334B52A4B2BA813B609E841C257B0DF56C329CA4BF9D16E5),
    .INIT_6A(256'hDCBF2C2362AB159DCF31F171C1FC487423D4400A54D20155E226C44FB0C6FBF7),
    .INIT_6B(256'hFD8E7C03B4F8FB888C2CA7CE9B73B3F893C6C226ED3C158CEC376CF1C76E94C9),
    .INIT_6C(256'hCD0394A7081397DC9AB493D4459B558D01ED9C7EE97DF0829A9D54A02557D6FC),
    .INIT_6D(256'hF9AEEA8D636884D1613DFD3A27179A1B7B8124A28A9A92C2ADB5064C440650D8),
    .INIT_6E(256'hE8F3C29EBA42915B0258A60B3A5C655943BAE394BE270F2728AD31FB383289EF),
    .INIT_6F(256'hFFB20B760386703DB6194F600CCDC9D3A9875FA84DDB975428B8D19449D4D6B8),
    .INIT_70(256'hB59FC05989FD882F4DC7AF599872BFACCE2CB81A5264B6BB349E580D641D43FF),
    .INIT_71(256'hEE1B2049F05F7D31217012CB85F7564755C94849FEBBF60853C014C58DD562E9),
    .INIT_72(256'hD719F355413286B5BBC26E9693381D7E17FE03362C12DB66C8B33A6D7CFC8AF9),
    .INIT_73(256'hFCFA453796826EA37C5267F770B08A068A1D8755C8BF84A1D4C7E61396A73BCF),
    .INIT_74(256'hC75C5AD8E69907F3854510F916D6FE96F4155EA9C0BCC9927F29CABEF18ED4FE),
    .INIT_75(256'hF68DB3C144F2F7EB5062BD62FB54712771ACE8D0640E00D695447E6D133FF6DE),
    .INIT_76(256'hE4A88AD099CA0274EF3E65310D983B6437E4A6C19668EA380E3AA81A056AD4F2),
    .INIT_77(256'hFFB2D6ABE611E459A7401089E20BA1E1A1DF24D82960076912484CB7180E7EBF),
    .INIT_78(256'hBA0EE738A0A5E8215B670741B84B4FA6D866E1FE6E3A7BB14741B5FA88F943FF),
    .INIT_79(256'hF0F845280504DC202DAD3DB1A3CF1D3F5D02702B1890B9FC63616FAFAFB085E7),
    .INIT_7A(256'hDA88193457D8E5A5C961C57DB110E5781F372C1947E89F5BDA5596599FD8D2F8),
    .INIT_7B(256'hFDB26A14AA26CC91878E92DC8C8750FD908EAF36E068E593E46740FDB781CCCB),
    .INIT_7C(256'hC3ED34F8CFF2A80277A6B811F7FD6F9CEBDB34C6A5E6059C6C876ED2CEB243FE),
    .INIT_7D(256'hF4B08EE32F4D98FD4426927CDE7DAA2F6A73C0EE4B399FE284A32483F165CAE1),
    .INIT_7E(256'hD3AACD762A8C26C5AE2317AF745FAC840EC4DA53123D1771B611DE825A2142FB),
    .INIT_7F(256'h4C41FB20368EF1C53E28567179992FB14E901F67E5E73314421FBADA6BFA3EEC),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hEFB8E4E8ECDED2EEEED2DEECE8E4B9EFEFC8E1EAEAE1C9EFEDD8D8EDE6E639EF),
    .INIT_01(256'hEFA8E5E7ECDBD5EEEFCFE0EBE9E3C2EFEFC2E3E9EBE0CFEFEED5DBECE7E5A9EF),
    .INIT_02(256'hEFB2E4E8ECDCD4EEEED1DFEBE9E3BFEFEFC5E2EAEBE1CCEFEDD7D9EDE7E699EF),
    .INIT_03(256'hEF98E6E7EDD9D7EDEFCBE1EBEAE2C5EFEFBFE3E9EBDFD1EEEED4DCECE8E4B2EF),
    .INIT_04(256'hEFB5E4E8ECDDD3EEEED1DEECE8E3BCEFEFC7E2EAEAE1CAEFEDD7D9EDE6E689EF),
    .INIT_05(256'hEFA2E5E7EDDAD6EDEFCDE0EBE9E2C4EFEFC1E3E9EBE0D0EEEED4DCECE7E5AFEF),
    .INIT_06(256'hEFAFE5E7ECDCD4EEEED0E0EBE9E3C1EFEFC4E2E9EBE0CDEFEDD6DAEDE7E5A3EF),
    .INIT_07(256'hEF88E6E6EDD9D7EDEFCAE1EAEAE2C7EFEFBCE4E8ECDED1EEEED3DDECE8E4B6EF),
    .INIT_08(256'hEFB7E4E8ECDDD2EEEED2DEECE8E4BAEFEFC8E1EAEAE1C9EFEDD8D8EDE6E67AEF),
    .INIT_09(256'hEFA5E5E7EDDAD5EEEFCEE0EBE9E2C3EFEFC1E3E9EBE0CFEEEED5DBECE7E5ACEF),
    .INIT_0A(256'hEFB1E5E8ECDCD4EEEED0DFEBE9E3C0EFEFC5E2EAEBE0CCEFEDD6DAEDE7E59FEF),
    .INIT_0B(256'hEF92E6E7EDD9D7EDEFCBE1EAEAE2C6EFEFBDE3E9EBDFD1EEEED3DDECE8E4B4EF),
    .INIT_0C(256'hEFB4E4E8ECDDD3EEEED1DFEBE9E3BDEFEFC6E2EAEAE1CBEFEDD7D9EDE7E693EF),
    .INIT_0D(256'hEF9FE5E7EDDAD6EDEFCCE0EBEAE2C5EFEFC0E3E9EBDFD0EEEED4DCECE8E5B1EF),
    .INIT_0E(256'hEFACE5E7ECDBD5EEEECFE0EBE9E3C2EFEFC3E2E9EBE0CEEFEED5DBEDE7E5A6EF),
    .INIT_0F(256'hEF77E6E6EDD8D8EDEFC9E1EAEAE1C8EFEFBAE4E8ECDED2EEEED2DDECE8E4B7EF),
    .INIT_10(256'hEFB8E4E8ECDDD2EEEED2DEECE8E4B9EFEFC8E1EAEAE1C9EFEDD8D8EDE6E66CEF),
    .INIT_11(256'hEFA7E5E7ECDBD5EEEFCEE0EBE9E2C3EFEFC2E3E9EBE0CFEFEED5DBECE7E5AAEF),
    .INIT_12(256'hEFB1E4E8ECDCD4EEEED0DFEBE9E3C0EFEFC5E2EAEBE1CCEFEDD6DAEDE7E59CEF),
    .INIT_13(256'hEF95E6E7EDD9D7EDEFCBE1EAEAE2C6EFEFBEE3E9EBDFD1EEEED3DCECE8E4B3EF),
    .INIT_14(256'hEFB5E4E8ECDDD3EEEED1DFEBE9E3BDEFEFC6E2EAEAE1CAEFEDD7D9EDE6E690EF),
    .INIT_15(256'hEFA1E5E7EDDAD6EDEFCDE0EBE9E2C4EFEFC0E3E9EBE0D0EEEED4DCECE8E5B0EF),
    .INIT_16(256'hEFADE5E7ECDBD5EEEED0E0EBE9E3C1EFEFC3E2E9EBE0CEEFEED6DAEDE7E5A4EF),
    .INIT_17(256'hEF82E6E6EDD9D7EDEFCAE1EAEAE2C7EFEFBBE4E8ECDED2EEEED3DDECE8E4B6EF),
    .INIT_18(256'hEFB6E4E8ECDDD3EEEED1DEECE8E4BBEFEFC7E2EAEAE1CAEFEDD7D9EDE6E683EF),
    .INIT_19(256'hEFA4E5E7EDDAD6EEEFCDE0EBE9E2C3EFEFC1E3E9EBE0D0EEEED4DBECE7E5AEEF),
    .INIT_1A(256'hEFB0E5E8ECDCD4EEEED0E0EBE9E3C0EFEFC4E2E9EBE0CDEFEDD6DAEDE7E5A1EF),
    .INIT_1B(256'hEF8EE6E6EDD9D7EDEFCAE1EAEAE2C7EFEFBCE3E9EBDFD1EEEED3DDECE8E4B5EF),
    .INIT_1C(256'hEFB3E4E8ECDCD3EEEED1DFEBE9E3BEEFEFC6E2EAEAE1CBEFEDD7D9EDE7E696EF),
    .INIT_1D(256'hEF9BE6E7EDDAD6EDEFCCE1EBEAE2C5EFEFC0E3E9EBDFD0EEEED4DCECE8E4B2EF),
    .INIT_1E(256'hEFAAE5E7ECDBD5EEEFCFE0EBE9E3C2EFEFC3E2E9EBE0CEEFEED5DBECE7E5A7EF),
    .INIT_1F(256'hEF65E6E6EDD8D8EDEFC9E1EAEAE1C8EFEFB9E4E8ECDED2EEEED2DEECE8E4B8EF),
    .INIT_20(256'hEFB8E4E8ECDED2EEEED2DEECE8E4B9EFEFC8E1EAEAE1C9EFEDD8D8EDE6E65FEF),
    .INIT_21(256'hEFA8E5E7ECDBD5EEEFCEE0EBE9E3C3EFEFC2E3E9EBE0CFEFEED5DBECE7E5AAEF),
    .INIT_22(256'hEFB2E4E8ECDCD4EEEED0DFEBE9E3BFEFEFC5E2EAEBE1CCEFEDD6DAEDE7E69BEF),
    .INIT_23(256'hEF97E6E7EDD9D7EDEFCBE1EBEAE2C6EFEFBEE3E9EBDFD1EEEED3DCECE8E4B3EF),
    .INIT_24(256'hEFB5E4E8ECDDD3EEEED1DEECE9E3BCEFEFC7E2EAEAE1CAEFEDD7D9EDE6E68DEF),
    .INIT_25(256'hEFA1E5E7EDDAD6EDEFCDE0EBE9E2C4EFEFC0E3E9EBE0D0EEEED4DCECE8E5B0EF),
    .INIT_26(256'hEFAEE5E7ECDBD4EEEED0E0EBE9E3C1EFEFC4E2E9EBE0CDEFEED6DAEDE7E5A3EF),
    .INIT_27(256'hEF85E6E6EDD9D7EDEFCAE1EAEAE2C7EFEFBBE4E8ECDED1EEEED3DDECE8E4B6EF),
    .INIT_28(256'hEFB7E4E8ECDDD3EEEED2DEECE8E4BBEFEFC7E1EAEAE1C9EFEDD8D8EDE6E680EF),
    .INIT_29(256'hEFA5E5E7EDDAD6EEEFCEE0EBE9E2C3EFEFC1E3E9EBE0D0EEEED5DBECE7E5ADEF),
    .INIT_2A(256'hEFB0E5E8ECDCD4EEEED0DFEBE9E3C0EFEFC4E2EAEBE0CDEFEDD6DAEDE7E5A0EF),
    .INIT_2B(256'hEF90E6E6EDD9D7EDEFCBE1EAEAE2C6EFEFBDE3E9EBDFD1EEEED3DDECE8E4B4EF),
    .INIT_2C(256'hEFB3E4E8ECDDD3EEEED1DFEBE9E3BEEFEFC6E2EAEAE1CBEFEDD7D9EDE7E694EF),
    .INIT_2D(256'hEF9DE5E7EDDAD6EDEFCCE1EBEAE2C5EFEFC0E3E9EBDFD0EEEED4DCECE8E5B1EF),
    .INIT_2E(256'hEFABE5E7ECDBD5EEEFCFE0EBE9E3C2EFEFC3E2E9EBE0CEEFEED5DBECE7E5A6EF),
    .INIT_2F(256'hEF71E6E6EDD8D8EDEFC9E1EAEAE1C8EFEFBAE4E8ECDED2EEEED2DDECE8E4B8EF),
    .INIT_30(256'hEFB7E4E8ECDDD2EEEED2DEECE8E4BAEFEFC8E1EAEAE1C9EFEDD8D8EDE6E674EF),
    .INIT_31(256'hEFA6E5E7ECDBD5EEEFCEE0EBE9E2C3EFEFC2E3E9EBE0CFEFEED5DBECE7E5ABEF),
    .INIT_32(256'hEFB1E5E8ECDCD4EEEED0DFEBE9E3C0EFEFC5E2EAEBE0CCEFEDD6DAEDE7E59EEF),
    .INIT_33(256'hEF94E6E7EDD9D7EDEFCBE1EAEAE2C6EFEFBEE3E9EBDFD1EEEED3DDECE8E4B4EF),
    .INIT_34(256'hEFB4E4E8ECDDD3EEEED1DFEBE9E3BDEFEFC6E2EAEAE1CBEFEDD7D9EDE7E691EF),
    .INIT_35(256'hEFA0E5E7EDDAD6EDEFCCE0EBEAE2C4EFEFC0E3E9EBDFD0EEEED4DCECE8E5B0EF),
    .INIT_36(256'hEFACE5E7ECDBD5EEEED0E0EBE9E3C1EFEFC3E2E9EBE0CEEFEED5DAEDE7E5A5EF),
    .INIT_37(256'hEF7DE6E6EDD8D8EDEFC9E1EAEAE1C8EFEFBAE4E8ECDED2EEEED3DDECE8E4B7EF),
    .INIT_38(256'hEFB6E4E8ECDDD3EEEED1DEECE8E4BBEFEFC7E2EAEAE1CAEFEDD7D9EDE6E686EF),
    .INIT_39(256'hEFA3E5E7EDDAD6EEEFCDE0EBE9E2C4EFEFC1E3E9EBE0D0EEEED4DCECE7E5AEEF),
    .INIT_3A(256'hEFAFE5E7ECDCD4EEEED0E0EBE9E3C1EFEFC4E2E9EBE0CDEFEDD6DAEDE7E5A2EF),
    .INIT_3B(256'hEF8BE6E6EDD9D7EDEFCAE1EAEAE2C7EFEFBCE3E9ECDED1EEEED3DDECE8E4B5EF),
    .INIT_3C(256'hEFB3E4E8ECDCD4EEEED1DFEBE9E3BFEFEFC6E2EAEBE1CBEFEDD7D9EDE7E697EF),
    .INIT_3D(256'hEF9AE6E7EDDAD6EDEFCCE1EBEAE2C5EFEFBFE3E9EBDFD0EEEED4DCECE8E4B2EF),
    .INIT_3E(256'hEFA9E5E7ECDBD5EEEFCFE0EBE9E3C2EFEFC2E3E9EBE0CEEFEED5DBECE7E5A8EF),
    .INIT_3F(256'hEF52E6E6EDD8D8EDEFC9E1EAEAE1C8EFEFB9E4E8ECDED2EEEED2DEECE8E4B8EF),
    .INIT_40(256'hEFB8E4E8ECDED2EEEED2DEECE8E4B9EFEFC8E1EAEAE1C9EFEDD8D8EDE6E649EF),
    .INIT_41(256'hEFA8E5E7ECDBD5EEEFCFE0EBE9E3C2EFEFC2E3E9EBE0CFEFEED5DBECE7E5A9EF),
    .INIT_42(256'hEFB2E4E8ECDCD4EEEED1DFEBE9E3BFEFEFC5E2EAEBE1CCEFEDD6D9EDE7E699EF),
    .INIT_43(256'hEF98E6E7EDD9D7EDEFCBE1EBEAE2C5EFEFBFE3E9EBDFD1EEEED4DCECE8E4B3EF),
    .INIT_44(256'hEFB5E4E8ECDDD3EEEED1DEECE8E3BCEFEFC7E2EAEAE1CAEFEDD7D9EDE6E68AEF),
    .INIT_45(256'hEFA2E5E7EDDAD6EDEFCDE0EBE9E2C4EFEFC1E3E9EBE0D0EEEED4DCECE7E5AFEF),
    .INIT_46(256'hEFAFE5E7ECDCD4EEEED0E0EBE9E3C1EFEFC4E2E9EBE0CDEFEED6DAEDE7E5A3EF),
    .INIT_47(256'hEF87E6E6EDD9D7EDEFCAE1EAEAE2C7EFEFBCE4E8ECDED1EEEED3DDECE8E4B6EF),
    .INIT_48(256'hEFB7E4E8ECDDD3EEEED2DEECE8E4BAEFEFC8E1EAEAE1C9EFEDD8D8EDE6E67CEF),
    .INIT_49(256'hEFA5E5E7EDDAD5EEEFCEE0EBE9E2C3EFEFC1E3E9EBE0CFEEEED5DBECE7E5ACEF),
    .INIT_4A(256'hEFB1E5E8ECDCD4EEEED0DFEBE9E3C0EFEFC5E2EAEBE0CCEFEDD6DAEDE7E5A0EF),
    .INIT_4B(256'hEF92E6E7EDD9D7EDEFCBE1EAEAE2C6EFEFBDE3E9EBDFD1EEEED3DDECE8E4B4EF),
    .INIT_4C(256'hEFB4E4E8ECDDD3EEEED1DFEBE9E3BDEFEFC6E2EAEAE1CBEFEDD7D9EDE7E693EF),
    .INIT_4D(256'hEF9EE5E7EDDAD6EDEFCCE0EBEAE2C5EFEFC0E3E9EBDFD0EEEED4DCECE8E5B1EF),
    .INIT_4E(256'hEFABE5E7ECDBD5EEEECFE0EBE9E3C2EFEFC3E2E9EBE0CEEFEED5DBEDE7E5A6EF),
    .INIT_4F(256'hEF75E6E6EDD8D8EDEFC9E1EAEAE1C8EFEFBAE4E8ECDED2EEEED2DDECE8E4B7EF),
    .INIT_50(256'hEFB8E4E8ECDDD2EEEED2DEECE8E4BAEFEFC8E1EAEAE1C9EFEDD8D8EDE6E66FEF),
    .INIT_51(256'hEFA7E5E7ECDBD5EEEFCEE0EBE9E2C3EFEFC2E3E9EBE0CFEFEED5DBECE7E5ABEF),
    .INIT_52(256'hEFB1E4E8ECDCD4EEEED0DFEBE9E3C0EFEFC5E2EAEBE1CCEFEDD6DAEDE7E59DEF),
    .INIT_53(256'hEF95E6E7EDD9D7EDEFCBE1EAEAE2C6EFEFBEE3E9EBDFD1EEEED3DCECE8E4B3EF),
    .INIT_54(256'hEFB4E4E8ECDDD3EEEED1DFEBE9E3BDEFEFC6E2EAEAE1CAEFEDD7D9EDE6E690EF),
    .INIT_55(256'hEFA0E5E7EDDAD6EDEFCDE0EBEAE2C4EFEFC0E3E9EBE0D0EEEED4DCECE8E5B0EF),
    .INIT_56(256'hEFADE5E7ECDBD5EEEED0E0EBE9E3C1EFEFC3E2E9EBE0CEEFEED6DAEDE7E5A4EF),
    .INIT_57(256'hEF81E6E6EDD8D7EDEFCAE1EAEAE2C7EFEFBBE4E8ECDED2EEEED3DDECE8E4B6EF),
    .INIT_58(256'hEFB6E4E8ECDDD3EEEED1DEECE8E4BBEFEFC7E2EAEAE1CAEFEDD7D9EDE6E684EF),
    .INIT_59(256'hEFA4E5E7EDDAD6EEEFCDE0EBE9E2C4EFEFC1E3E9EBE0D0EEEED4DBECE7E5AEEF),
    .INIT_5A(256'hEFB0E5E8ECDCD4EEEED0E0EBE9E3C0EFEFC4E2E9EBE0CDEFEDD6DAEDE7E5A1EF),
    .INIT_5B(256'hEF8DE6E6EDD9D7EDEFCAE1EAEAE2C7EFEFBCE3E9EBDED1EEEED3DDECE8E4B5EF),
    .INIT_5C(256'hEFB3E4E8ECDCD3EEEED1DFEBE9E3BEEFEFC6E2EAEAE1CBEFEDD7D9EDE7E696EF),
    .INIT_5D(256'hEF9BE6E7EDDAD6EDEFCCE1EBEAE2C5EFEFBFE3E9EBDFD0EEEED4DCECE8E4B2EF),
    .INIT_5E(256'hEFAAE5E7ECDBD5EEEFCFE0EBE9E3C2EFEFC3E3E9EBE0CEEFEED5DBECE7E5A7EF),
    .INIT_5F(256'hEF62E6E6EDD8D8EDEFC9E1EAEAE1C8EFEFB9E4E8ECDED2EEEED2DEECE8E4B8EF),
    .INIT_60(256'hEFB8E4E8ECDED2EEEED2DEECE8E4B9EFEFC8E1EAEAE1C9EFEDD8D8EDE6E659EF),
    .INIT_61(256'hEFA8E5E7ECDBD5EEEFCEE0EBE9E3C2EFEFC2E3E9EBE0CFEFEED5DBECE7E5A9EF),
    .INIT_62(256'hEFB2E4E8ECDCD4EEEED0DFEBE9E3BFEFEFC5E2EAEBE1CCEFEDD6DAEDE7E69AEF),
    .INIT_63(256'hEF97E6E7EDD9D7EDEFCBE1EBEAE2C6EFEFBEE3E9EBDFD1EEEED3DCECE8E4B3EF),
    .INIT_64(256'hEFB5E4E8ECDDD3EEEED1DEECE9E3BCEFEFC7E2EAEAE1CAEFEDD7D9EDE6E68CEF),
    .INIT_65(256'hEFA2E5E7EDDAD6EDEFCDE0EBE9E2C4EFEFC1E3E9EBE0D0EEEED4DCECE8E5B0EF),
    .INIT_66(256'hEFAEE5E7ECDBD4EEEED0E0EBE9E3C1EFEFC4E2E9EBE0CDEFEED6DAEDE7E5A3EF),
    .INIT_67(256'hEF85E6E6EDD9D7EDEFCAE1EAEAE2C7EFEFBBE4E8ECDED1EEEED3DDECE8E4B6EF),
    .INIT_68(256'hEFB7E4E8ECDDD3EEEED2DEECE8E4BBEFEFC8E1EAEAE1C9EFEDD8D8EDE6E67FEF),
    .INIT_69(256'hEFA5E5E7EDDAD6EEEFCEE0EBE9E2C3EFEFC1E3E9EBE0D0EEEED5DBECE7E5ADEF),
    .INIT_6A(256'hEFB0E5E8ECDCD4EEEED0DFEBE9E3C0EFEFC4E2EAEBE0CDEFEDD6DAEDE7E5A0EF),
    .INIT_6B(256'hEF91E6E7EDD9D7EDEFCBE1EAEAE2C6EFEFBDE3E9EBDFD1EEEED3DDECE8E4B4EF),
    .INIT_6C(256'hEFB4E4E8ECDDD3EEEED1DFEBE9E3BEEFEFC6E2EAEAE1CBEFEDD7D9EDE7E694EF),
    .INIT_6D(256'hEF9DE5E7EDDAD6EDEFCCE0EBEAE2C5EFEFC0E3E9EBDFD0EEEED4DCECE8E5B1EF),
    .INIT_6E(256'hEFABE5E7ECDBD5EEEFCFE0EBE9E3C2EFEFC3E2E9EBE0CEEFEED5DBECE7E5A6EF),
    .INIT_6F(256'hEF72E6E6EDD8D8EDEFC9E1EAEAE1C8EFEFBAE4E8ECDED2EEEED2DDECE8E4B7EF),
    .INIT_70(256'hEFB8E4E8ECDDD2EEEED2DEECE8E4B9EFEFC8E1EAEAE1C9EFEDD8D8EDE6E669EF),
    .INIT_71(256'hEFA7E5E7ECDBD5EEEFCEE0EBE9E2C3EFEFC2E3E9EBE0CFEFEED5DBECE7E5AAEF),
    .INIT_72(256'hEFB2E4E8ECDCD4EEEED0DFEBE9E3C0EFEFC5E2EAEBE1CCEFEDD6DAEDE7E59CEF),
    .INIT_73(256'hEF95E6E7EDD9D7EDEFCBE1EAEAE2C6EFEFBEE3E9EBDFD1EEEED3DCECE8E4B3EF),
    .INIT_74(256'hEFB5E4E8ECDDD3EEEED1DFEBE9E3BCEFEFC7E2EAEAE1CAEFEDD7D9EDE6E68FEF),
    .INIT_75(256'hEFA1E5E7EDDAD6EDEFCDE0EBE9E2C4EFEFC0E3E9EBE0D0EEEED4DCECE8E5B0EF),
    .INIT_76(256'hEFADE5E7ECDBD5EEEED0E0EBE9E3C1EFEFC3E2E9EBE0CDEFEED6DAEDE7E5A4EF),
    .INIT_77(256'hEF82E6E6EDD9D7EDEFCAE1EAEAE2C7EFEFBBE4E8ECDED2EEEED3DDECE8E4B6EF),
    .INIT_78(256'hEFB7E4E8ECDDD2EEEED2DEECE8E4BAEFEFC8E1EAEAE1C9EFEDD8D8EDE6E679EF),
    .INIT_79(256'hEFA5E5E7EDDBD5EEEFCEE0EBE9E2C3EFEFC2E3E9EBE0CFEEEED5DBECE7E5ACEF),
    .INIT_7A(256'hEFB1E5E8ECDCD4EEEED0DFEBE9E3C0EFEFC5E2EAEBE0CCEFEDD6DAEDE7E59FEF),
    .INIT_7B(256'hEF92E6E7EDD9D7EDEFCBE1EAEAE2C6EFEFBDE3E9EBDFD1EEEED3DDECE8E4B4EF),
    .INIT_7C(256'hEFB5E4E8ECDDD3EEEED1DEECE8E3BCEFEFC7E2EAEAE1CAEFEDD7D9EDE6E689EF),
    .INIT_7D(256'hEFA2E5E7EDDAD6EDEFCDE0EBE9E2C4EFEFC1E3E9EBE0D0EEEED4DCECE7E5AFEF),
    .INIT_7E(256'hEFB2E4E8ECDCD4EEEED1DFEBE9E3BFEFEFC5E2EAEBE1CCEFEDD7D9EDE7E699EF),
    .INIT_7F(256'h91E6D8EDEAE1C8EFEED2DEECE8E4B9EFEFC2E3E9EBE0CFEFEED5DBECE7E5A9EF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13
   (douta,
    clka,
    addra);
  output [6:0]douta;
  input clka;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire [6:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_01(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_02(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_03(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_04(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_05(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_06(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_07(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_08(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_09(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_0A(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_0B(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_0C(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_0D(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_0E(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_0F(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_10(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_11(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_12(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_13(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_14(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_15(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_16(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_17(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_18(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_19(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_1A(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_1B(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_1C(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_1D(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_1E(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_1F(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_20(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_21(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_22(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_23(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_24(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_25(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_26(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_27(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_28(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_29(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_2A(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_2B(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_2C(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_2D(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_2E(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_2F(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_30(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_31(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_32(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_33(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_34(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_35(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_36(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_37(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_38(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_39(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_3A(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_3B(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_3C(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_3D(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_3E(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_3F(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_40(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_41(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_42(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_43(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_44(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_45(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_46(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_47(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_48(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_49(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_4A(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_4B(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_4C(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_4D(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_4E(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_4F(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_50(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_51(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_52(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_53(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_54(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_55(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_56(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_57(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_58(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_59(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_5A(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_5B(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_5C(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_5D(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_5E(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_5F(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_60(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_61(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_62(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_63(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_64(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_65(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_66(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_67(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_68(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_69(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_6A(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_6B(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_6C(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_6D(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_6E(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_6F(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_70(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_71(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_72(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_73(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_74(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_75(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_76(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_77(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_78(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_79(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_7A(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_7B(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_7C(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_7D(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_7E(256'h5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_7F(256'h1E1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F5F1F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hC8BFE4D21075D2787194214A5C99216D41A3262283477EAAAB1A53F345889FE7),
    .INITP_01(256'h4B53188C723B81AD360DF6D9B9555BA86850C74B9EF8D007204F14196244F692),
    .INITP_02(256'hE53BCF006AF60AB07DC70639AA4E2FCE1079AB84B458198B3E2838B63CA1AA2C),
    .INITP_03(256'h6508C6C31019684D13747143D0A1822EC67554CA2D98C36132DDF0A1659CA644),
    .INITP_04(256'h09D679E0BF571C7D107D6D4209BFF4DE07CD7D180A229ECA6CC88C046AF4A0B1),
    .INITP_05(256'hE903E9F9A374E212B10C7F8FEFEEA2627F2D4A3ED46DD7123C957B33D54140BB),
    .INITP_06(256'h4E377A4E8FBCD33829ED2ECB1B8C2BDC547FFFDCF0589C0151BC4E9B4E77F056),
    .INITP_07(256'h3B30660820F42BEFF621814AF39E36A9BA0F8B1987D75573A5BD6CA3AD64B127),
    .INITP_08(256'h1078187AEFF710181BB055F57E014E09187E1669777764BF2937404F839F9E56),
    .INITP_09(256'hD1AB73F18864D654D4888AE61D8D50F3193F50FE48F2040878C2816CD6662924),
    .INITP_0A(256'hCE770A5932EE012CAA82BF1F255106C67E179DAD7D9818D918B44AFAB29B05F4),
    .INITP_0B(256'hD2FBBEED8734701D4DEA84E402A910DE68EB1A0A56E380694FA12D7E4C4A7046),
    .INITP_0C(256'h39029B6D16AD73C145DC5B48A3E61C89C9944995EF21063262E0B3E990EF663C),
    .INITP_0D(256'h78BF142E337DC253727C2DA2B16A843463A6A3DF5F7B328B9D5E8B9545CC5A37),
    .INITP_0E(256'h2506D674935FF0C3DECF2AD591CC1DEB5B3E9FC88BFC3BB11489D84A593D774C),
    .INITP_0F(256'h6264F7A302D7DD3BE7D4E4F7495B88750E8CE7F94CF566C0EE7E84448150E505),
    .INIT_00(256'h74445BF407B5EC4F6F9BC08F6B08A075C03FDD63BA640A2BE8C1945B68EB6227),
    .INIT_01(256'h6DC9AE0A60B3B94CFFFFAF61ACFC580DAD67457EC56AAAA68B44D1E0C67A1622),
    .INIT_02(256'hBCBE7877D95DFE2C4B0882F328DB5B212149A10219F03E6C760F0C9002ACF115),
    .INIT_03(256'hAFD72ECC8C5D802ED3F0C5DEAE5E522A5EF2785DB4CE0221AE3792D399F86E1F),
    .INIT_04(256'hB6579291CED28939408AE1514A3FC3B174C9F5BDA9420B07517CC6A2A98E425F),
    .INIT_05(256'h7F8A8B7F98E718D94194DBAFFFBEEBEF001B699769F5106A9D1C3BE3EA13B34A),
    .INIT_06(256'h4F3D1AD8C74812A866DD3332314137CCD102BB77150FF4C434D09ABC9C85B972),
    .INIT_07(256'h8E3637A982B6704C2098A5C959DE1C9675EEE98A153D8D091EA3B9EB7FF953C5),
    .INIT_08(256'h368EE13CFA838A6A0DFB98A1BCDCBE174B9823A611B1375D11E72B41F720BB8F),
    .INIT_09(256'h7CEFEC9327FD3EE89B37AF9993D02E3FF21B0FEFE3A8CAB68A375546A0F81022),
    .INIT_0A(256'h2A0C2F14F8D5A6F098E9BE2184AD6216E7E9B10133F5720193A3450473AC2B6F),
    .INIT_0B(256'h4E6ADA5C21516D52D91092AD19D0A06B61498B6A446DB14D0230BC35E937C897),
    .INIT_0C(256'h6775AF79F2BB7D0AC2BC893997FBE4D6DC776C0E2106EA933FC624ECE1DAFCD6),
    .INIT_0D(256'hE988DB6037A1F47B7AA236FE82A3DC7484237CEA0354F84170515C3B16801DD1),
    .INIT_0E(256'h5C308151C0DAE2AAE663DBB1BA6A1D038646E0D163363529FBEAD931E9E4AB3F),
    .INIT_0F(256'h6B359D4F3FC63F823B1E0F8F066C210A03A8C739884F1C9DB1F86E83D6FE3634),
    .INIT_10(256'h34B68CBE7BFEF80B671D6C0E048CF551CBAABF90B771D21C73DB4B4581080943),
    .INIT_11(256'hC54CF6EB46971BF6A46F7A6708304B5C71D3CB5702F77D1462F5B4949C11004E),
    .INIT_12(256'h98C721A9AA6C4314BD8E6832047909B27A855CD9A7DF55582E3AB289DADB051F),
    .INIT_13(256'h231884E6967C3F6B678C738203F2D95373500BC92A085D09DA3B5A42F093F82E),
    .INIT_14(256'h123E3F0BFF621BBDBC173A9481050DA807F6AA584F4E938AD9D6B0233E8E181F),
    .INIT_15(256'h8C7E88670937FBEED30C122A45C4D8D178C2C844785227397497B7EF8DF44E6F),
    .INIT_16(256'hE4204AD5261A439A48559170C156C43237A4B860D4D175FB596A901788392546),
    .INIT_17(256'h2BB093273C157279D982DE50E8C6E8C1768C15A7A46D3594FEFB8ED27BC717AB),
    .INIT_18(256'h67C5803DF129B4F6D8265FDCC3CF00DC32FB2971FB0246FD35CF4CDBF605788D),
    .INIT_19(256'h6FAFBBD472CB36B0D54870C37FB60BC2253637159E5DA14E76F5CE8500074BC0),
    .INIT_1A(256'h5F8ACA88327D39485309A22BD7526FC65D6BC446F110A2761931E090FAF267A3),
    .INIT_1B(256'hDFC95D019FC1206E1B6E422B25D5B37D12D51E106EDE11759C04D23CB4BBE56F),
    .INIT_1C(256'hA6F70AAD16C3C3ACCA67ECD2BFFA514DE9415DAD52461F2FF8363A8CBE48EE13),
    .INIT_1D(256'h30A6AF3B920B190C2A4867F6EA3801E31A35AA5875DD900C07384657B58F275C),
    .INIT_1E(256'h956AEA1C036B0261BAF62FBD4D594B48B0E05896F71F425D903A919AEF5D507D),
    .INIT_1F(256'hBAC680F4FDB2EDF337625851E5ACD37F083D270D30C653ADB0897591C176B771),
    .INIT_20(256'hEBD092A0069062711DCFC8A5F7EE9CC66724807930221B6AB36E8CE7EC789499),
    .INIT_21(256'h8C671F9FBB13B4D0574B89FB3787941247E1F250F22AA6881469AC334E19E6C5),
    .INIT_22(256'h539B428699B77EDABFD009D6A5F57D14FAA10D20A4C16A9B635CE39538ED58F5),
    .INIT_23(256'h8ED57B2B887493F0B0E0F07C83BDCE116D6D06A9A284B1E26C9AC57433C20A1C),
    .INIT_24(256'h84A1732CF5DF397A744D30808C5AB6076495F0245A11758960D54B3255A18BC6),
    .INIT_25(256'h0861C12E000AC8CD966BDB1E66C31FB97937F06B64AD26E3EC30D51A42EBDAC8),
    .INIT_26(256'hFB8914E49612FE16D526E64D6F29C5623692B6B81ED94E119E5F8CAAC69D4C7A),
    .INIT_27(256'hE751F2509DF99940173505F2327835F8038CB0C758FD5A57FBB9647ED4708AA5),
    .INIT_28(256'h6A7E448F1F948B12878826B173832FD9A2FB4F98F19AE8B00B8152C2E29BF800),
    .INIT_29(256'hF0AC16E398D9FE9981D7FC525ABC5D9C866F8474C28444C780E8F57B62DD0876),
    .INIT_2A(256'hF1246850518348739282BC99B05431941267C063C9E4A7B14A26106E7683A6D3),
    .INIT_2B(256'hD478330CBB17F5A1D1E435C5BD705F04C25D10DFF1465F4CDA808E3D31FFAD74),
    .INIT_2C(256'hAB0D5DFDF78B02F89E92D6ADC63B68E74C947C840A77285D4AAF39A8A52F53DF),
    .INIT_2D(256'hA274721478D7C0CA22932BB9ED792AC2CFF761AB09AACAD601A1279660FA7B11),
    .INIT_2E(256'hE2A88DCFE58A4118913D82C16D4879C610D5108C499CD131005925C395EA5A73),
    .INIT_2F(256'hB85C1194BF573835166C6E637ABBAA4F98C41FDD3DBA2C4B80AF2AC597D4CA3B),
    .INIT_30(256'h8EF54F4A72FBAF0D5D82B0BC99DDAAD50DD29FA1564D30223904D5682E98C0A5),
    .INIT_31(256'h977A39E9113CF3AD0769859D24F57ECA4B3CD38FFBCD342D85E5EBF4B65D6341),
    .INIT_32(256'hCC4219DA1B7750CB5642A3FA4C63FF6BBFF291262A480284E3A87C5DEB72F59A),
    .INIT_33(256'h669F4CF9C471879115F252EA32FA74D1B0998BB65C57078707195632D5663716),
    .INIT_34(256'h9E30FC26F95731F226E801812D3CC6577AED27538FF764EDC97DF7656B4DE8EE),
    .INIT_35(256'h86E0E424C16AB32D157485CCA1BA171A1DBCF51B54E0175D464DE254D2270FDC),
    .INIT_36(256'h8603C2A6855EE326CD6B36932EC2371CF236C46B3EF16D6273EFA8F3E752445C),
    .INIT_37(256'h95511F286D05FEE9867A35DC82C436D10CEB1A25048A20B035663BD87AF8FB9A),
    .INIT_38(256'h6C6398407B3F080811D24716B4BA31E31896B42A37E651249DCF1C8036583BFC),
    .INIT_39(256'h76FAE05FC2D1E820B5870EE40AB83A92EE702CCE7E2EE4DE7B5DE5578170D985),
    .INIT_3A(256'h643D59B8AAC07C5EEA7D732400A31B8EE8F5C1A4B37566310CC0B75905F46DAC),
    .INIT_3B(256'h315E5C37DD4DF3ACD6AABBD957FB9CB88EB0BAF5CB32CAB959BB892676667149),
    .INIT_3C(256'h9732BC825D5FC018543ACF988930A2CAD07E12840070D1E857572A88301ECE77),
    .INIT_3D(256'h8D1C96D094390332B0BCEEAF7DDB64BB0BDF5AEB54EB4DD49116BE701C3B2275),
    .INIT_3E(256'hEF759E3227792A78808DE8A06096956A8566BDE973BA8A8EB9891EA8FD3A8FE1),
    .INIT_3F(256'hE572F16806D75FAFBBFED1544E3B9D7E9312E4C16E7092B3508350D95BDEFE99),
    .INIT_40(256'h01BE178C058E4E2B6DAEA3147A7076009A090F30DE1E9F6F4422C729585E88AB),
    .INIT_41(256'h21CAE96D8B7736EDDFDE3CBBA8DC7BA6E89A6C4D83B0352D6C4CB48BE6816386),
    .INIT_42(256'h758ED131321B204264433F40EB97BAB15A72BF1B38749719451CB312D6932451),
    .INIT_43(256'h8BF0986B0A54FFB4E7FA20C47439846A2EE7D054C2D8360F4592862674D2ED39),
    .INIT_44(256'h6B82F5EA0BBA39A9D4C2132782F8572C89CE7A631703F572F44A9ABCDEE6EECC),
    .INIT_45(256'h7119B32D7BDF8061CA16AE84AEBF0C501B3803AB163C5FFB64E18B51BAAC9674),
    .INIT_46(256'h83A9BB9619A4CD78F2F9B9A8DFB570B3153AB99D4F15D7CF18F045C369A67753),
    .INIT_47(256'h3AD738DE7D7A32EAA40FCA569B4B74CBB6AC4D02ADCCC765726C8845C5C17886),
    .INIT_48(256'hDB6166407CEB0FAEB8251B6A54F6F1960502F66D4EF773F174052AD2FF90241E),
    .INIT_49(256'hD63794A892E22B1A94EB57BEDCC9CEFAE0C567ED8CF733C640A268EE8C53A7E1),
    .INIT_4A(256'hD72BA2DBB2E90F804D1958D82FCE2C6BE89BB6ADD3C38D194F3FE864B83BA36E),
    .INIT_4B(256'hF7C70551C1358881E9D449F4907E62E36EA4602DFD41E4905BC716A7EE129A81),
    .INIT_4C(256'h22F3030D2215616A7AF97AE5883FDC57C611B57BDB31895B5B39DB565A05EBFF),
    .INIT_4D(256'hD85C9992CB9FE21F0DEC4568B09A830249AE6CFC9B85359E8266F737E0434D25),
    .INIT_4E(256'h58E765EDE371F88026645C26831DC90088FEEA585265E8AE408399A65483B059),
    .INIT_4F(256'hF4188AADCE5FB355AD42B24A2C8814846FC6CD4C388B66D73DEBC08E75A0B3D6),
    .INIT_50(256'h2E5DAA0F3420EB22B4BC9E3BD450FAF506C5C0DD65F3BA974C1B637C7A7D5075),
    .INIT_51(256'h0F71E5AA0B6D4FE602B992A9271FAC15F6430841B2C476EEA6B0ADC51FC5719E),
    .INIT_52(256'hADBE05EC2D5708EF9D4492BAB86A9C1007F36B3F840B0E4AEC115501E3995AF0),
    .INIT_53(256'hEA54CBB31E6B8ACDEAF57A1B1EB952BEC3799FA986790FA94B3580AC5DF0A04E),
    .INIT_54(256'h2B9318042E84642CDAD3CADC9206D245F7460F6460C6D6B33178746C93D2E6CB),
    .INIT_55(256'h0230785ABE33258B51F381CD30C23BD859168B5A3110EDB7D9052AACD6255703),
    .INIT_56(256'hBEB28905DA96ABF5D7E593E97AEB36B34B1CB9BAE56DC0D2664844DCA01B0602),
    .INIT_57(256'h6B7288737AC50CB94550C077990D8DA72E7AC7F0C154F666665A9D0B6AFF687C),
    .INIT_58(256'hF5C571EE49D3CD57F0D73932283B63F88AB3D3AACD08D88B31C734B8116C031F),
    .INIT_59(256'h571B203892BBDF148664ABC3F8B6EB5F9A1AAE22462A7CE1AE0FFE985B030773),
    .INIT_5A(256'hE4D0D1CD31B74A80ECB0B097819F6FF3F161C4325B7C2096E29185CB804D022D),
    .INIT_5B(256'hE648701966970D5CD68CAE18FE65BFE31B6337B09011C74CEB3564A95610E0E3),
    .INIT_5C(256'h419EDED7535144EE2B2442D5967C7C75EB238E73BC211A78E678E809615400C1),
    .INIT_5D(256'h1A9D40A61407CEA9EEF319216023EDDAC1F6CC5F427C4839D4F10C8505E07E31),
    .INIT_5E(256'h2F46771FA31ACAA43C6734292D2433A3BFD66E44CADB60721B8B61B1B1B3797B),
    .INIT_5F(256'hA0CB6C5FEB313F4BCDD9C1988799166D668A85E6805228406D0D0E60157E61A7),
    .INIT_60(256'h3C04B26284FB8ABD4348279F4063752A6CFB61BC1A7D270F2979C3EF9AA421BB),
    .INIT_61(256'hAE18A1B8B8A7B3B00B0429886EA119A93458C3B61A11B29EB0DE22B5AAD14B5A),
    .INIT_62(256'hBF7CB6389248E0199D2683312924CA2C461EF52A7E5DAD313CC39E15F1B4D8C5),
    .INIT_63(256'h776FBF1B08E08816D673B593DEE9425E342498FA38B30EF024C31F77C1B73C39),
    .INIT_64(256'h5126E5371E401149EEA33B3EA385D0D801347897F06A2A337B77DD04B4F09387),
    .INIT_65(256'h33854E052F71D8DB74822E3CE1C2A6B657C6479693986A378BEBD8EDE518A90C),
    .INIT_66(256'h57CE389C8109C3B02A9E93B6FEA9377E4802B7BDD3FA04764CB83EBA7E3240D9),
    .INIT_67(256'hDE6496B18B9C46649F5EFA6B0718817DFC7C30A04FACAE0DE077DD8FEF7D1477),
    .INIT_68(256'h745A97E90E738F02F4EBE2722F4AAA78B0348CE6BD6C4C1B71D2BD1274CE42E6),
    .INIT_69(256'h0E1628504B508AF306BB7E1A3FC06528A96F22B0FB6570193BFB3809ED45230D),
    .INIT_6A(256'h3AB7BEF9DEC06042C9E557944522132A7D5BBEDE1E3A27F22B01CD1AB9A6E1FE),
    .INIT_6B(256'h36CEB2A90E984B29E5BE9B8062CE42301EAF2268D2ADBB0FC66F7F2B92F68CF0),
    .INIT_6C(256'h433FD9D0247DA4E1E8E4209F20DF1DE1FD9F3D354F6A27C1E0AEE635BCB01707),
    .INIT_6D(256'h3153656CEC3A48C7E0E53F45E5852AA9ED185FDC1FAF1E694A0EDCE50500FCC5),
    .INIT_6E(256'h19A36BACF549A8B7FBD12F2EDD8C77E24DC502364598B633423BBF6FAA0608F5),
    .INIT_6F(256'h8B2CC4D00E27302E9AE9E1B466B059A63854F81F12C06E2E24461E2F550CFD5A),
    .INIT_70(256'h4BD47BA49AC5D83A654F24B46CD4B6AC9F5AB9935CE8B5A6AB76111BAAB485FB),
    .INIT_71(256'h96EC1E5776A3BF2E18F253802D43B1E5372C90B1B01B53024B109E53467352F5),
    .INIT_72(256'hD3944F970E66547238A82C708F8E3CB519DF4BBD23A9684D8E3DEF0EF7387333),
    .INIT_73(256'h87A1583F106CCE24D3F0623F3229290CF7ED7F2699847ABFA5151CBBB546154B),
    .INIT_74(256'h29AF7645AE26A68DEF2C961AAA0D0EEC3470429893CD1A57980ECADE0D670FAA),
    .INIT_75(256'h6D90B09C4F1BAA7234F197E1A1C43EFDF2350A6E2082311744FE281C73D50A39),
    .INIT_76(256'hE6531ED45F83B1701A947F574BC51A025FF3B64D1E27F8FC7264BD49996E08BF),
    .INIT_77(256'h39B2BDFD0742B34D6C7EF47C857A0DEFB0636D985771450FD86E6773C19D8BF9),
    .INIT_78(256'hA97F696E5204D86BAFA3FEAB5ECC5091A2F74A2E2764C5CBC1A50ABB12CF16F9),
    .INIT_79(256'h4A6B5DA9B1FA28DE784FFAD08FD756C35339BB349A49306B02A1268CE2B33E4B),
    .INIT_7A(256'hD3B2CE7D26A611953F89122F17925F1E16FEAA9DEC1C24CCF7DF839F563677C7),
    .INIT_7B(256'hEFD1CC8C854B2D3CBC17D0BCEE20A7132EB3BFE358854F5DE86D48A3176BBCE4),
    .INIT_7C(256'h2AF23E6E6ED2AD0BFD23994B4D8FF51E798E6C648F78EC96C488CF8E97535AF3),
    .INIT_7D(256'hD6BF7CF9ADD0887495DDFB3597BC93C43BC6D3C41D9C8F38092CCF604A8D96E7),
    .INIT_7E(256'h4BB42FEF6484B1508A9DB16FA426C35A12E981335060B1A9C3DB450E54DF82DE),
    .INIT_7F(256'h00993C9AE6A43FF1BB5BC6E094AC8FF0BAFC1FF36414EEECD613D027D2898DC4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h841CAA0B79980FE1722173B19E570B99FA4241620E88F5A135A6CA97E8193A57),
    .INITP_01(256'hE913C32443ED2B308E101BC025F0A44BCE905F96CB8E319DF2ACFCCD4EC97C6A),
    .INITP_02(256'h42949B58904FB208264C9C4617DAF84FAE3EE6B3EE7A8BA3AF353346B483B9AE),
    .INITP_03(256'hC6B2935FAA3E23E9DA2C7C458925C38D2DFE7AE30A7905DDECB93C3A40594F1E),
    .INITP_04(256'hC54FE800E53C160F1150F45A8E1C0008CD37808AF2BC31654A10F728AACB629E),
    .INITP_05(256'h4B68812E9698879EF9051CF8B56719C9CCAB19CEB6CD995B8B9DD9065E8BB4BA),
    .INITP_06(256'h60C891786CCB1EF6456973FF29B8668FAD49A4AF57380761941110F12481236B),
    .INITP_07(256'h54E1DB55418B4E67B959337D10C24D4FA6A52873849FA1331F84168DC015D55D),
    .INITP_08(256'hBE55F4316D83F7C9E4DE2F99826C50FD6EA91F50B2F602B0A89D06ABB4A36443),
    .INITP_09(256'hE17C9F1E57D774081A0BC7F2A99F79B47FAB03ACE7B5689EEB130AC552B3A462),
    .INITP_0A(256'h57FE8D408CA06DF14EE6485F2FE20F7A0EC7BA9D1341749E750ECF7668B96596),
    .INITP_0B(256'h6AFDCF6DA044DD700E57A075951F1DB21D2164D90652D3A1F0C2E08A1C69B1AB),
    .INITP_0C(256'hC370B43BB953ECB2582E2412D2267F41534DDE32EEF6C54CD6490D92F6F118AB),
    .INITP_0D(256'h569BDD1483235BB366DEC0C0E91FCC8C611D45A6ABF4432353C30F0E02B14896),
    .INITP_0E(256'h6A6BC72204756004B317406C4BE0A1C43230BAABF64551A2AB6EE86EEEF1022B),
    .INITP_0F(256'h532F3D8452B82B8A2E0A8DAEC46DC581424A13AE17F5E7A414FF61F71AF913DB),
    .INIT_00(256'h47B804C1A55BAF1205556FCF0AFD7D53C9694EAF3C49F516283E6F61CBADFFF6),
    .INIT_01(256'h6292857AC3A523099184CB72E37EBEFD449602FBAB4176535F5F457B2AF6F434),
    .INIT_02(256'h1F110157A36918A7882E68380021037F65DCB02D1770868A506ADD6FE165E8AC),
    .INIT_03(256'hAB37BBFB75F5E4C37E47B7B5E7EDB6EBB98D66E85A99D4C1CA0AC216D3362462),
    .INIT_04(256'h8B1F7457C6FA111C76718034CA867A00FE59832156E673D6A7F948E1B2EBB0BB),
    .INIT_05(256'h54208791236C2CC22B194E399E35F2BDFACB2FB18B7E5796E2DF20DE4F03C734),
    .INIT_06(256'h858DB0B948A3C9A6498A2A66B1CB1AC81CF1D9CD87E63113348C30FC5C15AA41),
    .INIT_07(256'h8BD725B1C73C4FFDA90D0BDEC49F0C6815DCAB9A308FF19A26DC3115BA8B0BB4),
    .INIT_08(256'hA33AF83FFF712B466B2EBDCD1C7E4A6C1FAE2A1475D901362365A5DE7685A61D),
    .INIT_09(256'h9128C0BBB650F21C299BD07FEF19A68D4BFFD88543A3B30FD5EAFAF17137AD7A),
    .INIT_0A(256'hDB1E143CBB4C3B5991A88DD188B55D2DF4B4852BF9EE29967A45CFF7D5761865),
    .INIT_0B(256'h6656288D5D61631AD7F7A47483872FE2308347F212D9AE58A93E405E799D663D),
    .INIT_0C(256'h0767760AFCF860922A1BB90316110D0969685BD4E16E49F3B5FB5B6780E11B74),
    .INIT_0D(256'h767BDAFC0DF8D1FB9CFD46A1F0D1A28853FA097C07D061D5883FB840C5584528),
    .INIT_0E(256'hB95ED5CE4A6BC08C60D43E1479643A0FE092AD13C257A1FE7F40027F783F9E71),
    .INIT_0F(256'hA6BAB067B586A86AF988EFF2AD364E7B709995DFB5BB9C8344E4963C940013BE),
    .INIT_10(256'h048D0D8CE4F70038C3D5A76120CD776F831F4C6D63220E3635641C2F2E27E76E),
    .INIT_11(256'h08F1B1A7CD0C1DA070A3DE83755C46D153DEFC4C81032845A737B147DBA56468),
    .INIT_12(256'h08AB1956C1EC3D0D977E8C9850FBC4C03A5CAB3792406BA1736A684368FC949A),
    .INIT_13(256'h965B0051793DB67D3C32BE1FC0CA06F4879C6679C94B549745B713CCB3F8595C),
    .INIT_14(256'hD65704BE730BCBE3DB592E2F7CDBD7974274FF86263AF1753C8C6434A7F4F933),
    .INIT_15(256'h92E13F54A84491EC759EDBF8D393DD2FB176ACA311B86FC0C222FD20973C9AEB),
    .INIT_16(256'hB1895151DA9957A60642C5C7A1273DF78BD5537CAE2F7C9BE7F92B4E7839B8E6),
    .INIT_17(256'hBA5CF89A4EF38E42E15E8DF343FBC000534E30C905B6D91941F3F53B34D5A347),
    .INIT_18(256'h25C0C5D8F5C7313CFB63B013FF11F6479D17E7A67070CD16F441096FA2C63FF1),
    .INIT_19(256'hFF38B2B37D70A17DBC6DA06652B7E0312DF893A7F1221859E8771E79EEACCE69),
    .INIT_1A(256'h9969F0089389158C77AD6DF1A850CF8595E63F084A7BC06665FB118A26D47584),
    .INIT_1B(256'h3E2A35AD2260EB9A519568B42F2331B3B54309523445E304F3A04ACC26234C06),
    .INIT_1C(256'h1F4FCB3D62C2CF2963B821B197291C577436960C87807B5011452E7B3EB1159E),
    .INIT_1D(256'hA2ED59895189EDED9F358F35F7EF40C7E257473EC4C62ED536374F3DD956C850),
    .INIT_1E(256'h9E0C3C31981A05588C3F964D3A8110111E27E793C05D9F3CFD62B68E5E295DE1),
    .INIT_1F(256'h74F04B18FEF49E74F18C2FDCFF50B5D86BBCDCDD409C38D630AF1418DC0E5B17),
    .INIT_20(256'h29270C2A492E5C28E7998F1C98E8FF652A495191533A07AAB2D6CACB006EF8F1),
    .INIT_21(256'hB9C69F144C5DA5580598D9FDAF71076ACE3F0327182654D107D080E686D1B1D2),
    .INIT_22(256'h97E3915AB6AF2F5D12DBFEED2B92E805522132B5D7DCFD9A656EA75DA8B443A7),
    .INIT_23(256'hA4CE612A7B1DD1A361C13FED565F63F32599EAB396F6192E0BE56FF5C69B44E2),
    .INIT_24(256'h3440408E218773022B6A5B362634ADD023EB45D64194372AF5475B0EB0735915),
    .INIT_25(256'h760667F66ADD63DB55E0189B3BE8EDF95825F1ADD01FE82D5505130477A33545),
    .INIT_26(256'h1F10048815A29429AAEB7C19ACFDB062D7E81A271D0E5CDC1147B2A9ED2AB616),
    .INIT_27(256'h261F92A98E1CF3A3493A51EB07D16B38399AF1341FA7EADC366C97AD7AB4DC01),
    .INIT_28(256'h6782E38E7F20B344364DBBF5914CA55D62670DE075A9ECAA8FD8DB2A8F297782),
    .INIT_29(256'hCB35BD3A1DE44E507789BCF5A4ECC8E2BF80B9999C676AB262351039B3F542F6),
    .INIT_2A(256'h3CC88625AC6F2DF6072F015F9B061BDBC8D2E69CA4387982732575C481A94B9E),
    .INIT_2B(256'h45C5B2A043652BDD984B0A97DBD9B5CE7768ACA52714CDB1D1F4C91953E35EA5),
    .INIT_2C(256'h9660242733619C60C9EE71DF59A119B572D4FC73B7FBE726E7244975634D9D8C),
    .INIT_2D(256'h90399D463345E4F7A29EEFEE766476AB9D2DAC606A4FCC57E2408843D2DA8BBF),
    .INIT_2E(256'h2FBA0C83F54767F5FB0E6EB35D76AA938261CE56445EA4A242D6610AEF38822D),
    .INIT_2F(256'hB2DA01435D4228F3798F13EAD947862D712FBC617FB06FAF3D4ED9AE3B0BBCEE),
    .INIT_30(256'hD7E807E976B89A429A06B69BA1A9E571D5EB3F436F020DBAB0E9658A56D9CB2D),
    .INIT_31(256'h5011BD3446B38CE1D1A4DB03353E7B32D273EE6CE4D7F2AF4195DAA029720DF5),
    .INIT_32(256'h74699A4CC32141B6171811396F5C95791A8D1CB4489BCFA07A5C2021223DDB84),
    .INIT_33(256'h81DD98726F53914F0E99354C242C9FEEE094DA38F29686FA7A7FAE99994E65D0),
    .INIT_34(256'h7264C1E7BC861ABD853FF81ECC7AF75559F3B13006D8A2B87CC86451976E8F56),
    .INIT_35(256'hA9B310ACDEA3B6F78D52944F6436C55F05BD5E939948ED4D2835DF35B1CEF48C),
    .INIT_36(256'h39F997139686101C5D9006709049C18638B884CA3B479351B7A19BEAFB40B0AF),
    .INIT_37(256'h9290588405C11FDA7178C2F57B1C0CC166F86657E2BDBF5146704AC0E7EE5F86),
    .INIT_38(256'hDBF5A01B6265A62FBC6E9C2968CF3D28D1BDB966662FA57A51A22DACAE5CFC59),
    .INIT_39(256'h2C31A026D4F2EBA3F8487BD2FB7AEE7A966665AF40D4BCFA68B023B0225B4FD3),
    .INIT_3A(256'hE00054E4729AF31CE220D0AEB09179295CF0906DEBB4FE4150C8A547C5F89465),
    .INIT_3B(256'hE986B0B2F853A14F01D6BECC7C65A391E9155EF9366FEE511043C275F35B3160),
    .INIT_3C(256'hA235694D871AF8EBF878C979CEA914F0708E279F52FC0571345C0A79130F84A8),
    .INIT_3D(256'hAA970DC567C3EDDC93C32778727200DC4377DB161434864D83250D2ED9CAFBDC),
    .INIT_3E(256'h045464D932E499B41366B4E212836C8AB4E4F8CA38538FCCB1E50209C7132D8E),
    .INIT_3F(256'hF8FD8EE6979E0BEE617F42C82151DA7B5D3FF352F780F8F71E0746787609F139),
    .INIT_40(256'h4055079C8F51DB18FE2778E32EF8DE5822A2D0E802C6BABC8CA507FC591EFEF6),
    .INIT_41(256'hF9E04C21665405DD2F0A8FD5D73BD1D867814307477BEFB48A7C95D7812DA49C),
    .INIT_42(256'hFE86E518693B1F956BDA4E260BFE3D61A1EE1150C8CC250F96AC50EB53B9C0AB),
    .INIT_43(256'hAA5E6587F780A07CF8A65A03C38AA2AED55188DB6AB126DDDB01EE4F1050AD82),
    .INIT_44(256'h76A867259EDE2A1664307836E272C8F5487EF54F1152246CFB4ECE6D324E9BD2),
    .INIT_45(256'hDD5B402BB509FA89B68C019286E3F28D12A261B01DA7BCBCFFE95D289A2B648A),
    .INIT_46(256'h2CEE856EFC63BC872123FFD3B09840AF4CF02AE42D31BD866CBC9268C15B6EB7),
    .INIT_47(256'h73EAC12F3AB5F9A712599D22952DE51D1F8DBE812C9630AB2BC14B3CEA9680C8),
    .INIT_48(256'h94CDF413E05D4E465EF7BDD83A72A16971DEA348354EBDD37FC33372FDEE9C58),
    .INIT_49(256'h206C805B50F6CAEABD178CDDDDCFAF6368E0118BDAD52265F9FD4044C26753DA),
    .INIT_4A(256'hB489F1F7781639416F4B6BB58E8A8D192ABDDE48A441BE12B97E396B40C4E62E),
    .INIT_4B(256'h5E73CC12D7E316CB484D3EBD591C119D433D61DF18E9F76FB32C638DB0AFE558),
    .INIT_4C(256'hECE663D2CBD3708612D1A8FB27F651F5AC84C4FC97D2F2810246D7EBFA3DFC7A),
    .INIT_4D(256'h7DAB8C8F978C97BB1E66F1F5D277985266C8337620F1BDF69F40EC820979D74F),
    .INIT_4E(256'h57B6A47CF523AB6708630B7D732957F10986F62463992268B1665BE2D77E58E1),
    .INIT_4F(256'h69C345DE20F6490D59CB783178BB1D28713F9FC0A9B9D18E43BFA759BF047ECA),
    .INIT_50(256'hF9250C64CAE9273BB9A2AC7040C5D370D953CAA3279ACFD794C6AFC6B994E1EA),
    .INIT_51(256'h9B3A754B6CB7FA7109249EE3661554AA73C43A551A399BA0CE4FFC9E2FD90FCC),
    .INIT_52(256'hE41BFA1482BA3FF777266E8158D4F9AF7369085740980522B5A7D7BBD74D6795),
    .INIT_53(256'h917CA6DAF7C36D32B18D5D6B9A63EDB39E5B8469D45EA2B053AA3A00ED0EDD79),
    .INIT_54(256'hBEDBF48947EAE0DAC613212B91C4208788956DB1DFA29E078DDCE5BC2453DF3C),
    .INIT_55(256'h1817F4EB36DD5BB0FC0C8A4EB83DD8FCC649D99FA0DDCFE3DC283766DE613114),
    .INIT_56(256'h54E623028A554684DCD696329DF05FDBB7CFA090527603091C2488B6D97B7759),
    .INIT_57(256'h9E6A9115BC6733E946A51B34128494B159FA3EADFDB9132843D30B5D61DC1357),
    .INIT_58(256'h134EBDA9D1AF4F3AEC26AC1A1A024840EB415CD62EE184B04C9A93FF262C2F0C),
    .INIT_59(256'h8B776F51131174474CE557C23D69E40448D5C8AA854F8281098660C73BD86FC5),
    .INIT_5A(256'h6FCFCABF4C4E0D71524A4661AB21FA6EC7EA9422F3CA51DEA02F77FA8E1E3EFD),
    .INIT_5B(256'h2A42D42F98DE9A48BDE6FEFB02B50E6BC3F91F3C35512618FB8A69F75A32C61D),
    .INIT_5C(256'h01CAB3022C99DA1A49690CA4A50A5B3EB44DFB313AE01FD95A8BA6FBB409F2A1),
    .INIT_5D(256'hA5180719D718AEA91C993687D691308DE4206D35D9E285F449337F7A1A735674),
    .INIT_5E(256'h385F07DC3FCDEA2F2FCA5EB3314228F044172CA15F9B1CA12B840AEDB964124D),
    .INIT_5F(256'hF6F4DD8C65603A144DC9B417C8D17F81685EE2BA2E9669DF2C862131030DC220),
    .INIT_60(256'h318D0B50613A3223EFC9880A75EE9F61D311D1598EBE43065171343173FEFBF5),
    .INIT_61(256'h247AD96EABB0C5856914169BBDB5F68FAC56C31C7EEEDD72DDB4328C2F9B036B),
    .INIT_62(256'hB96FAD9AF2DE2A703031190121B7B0241811D29428826017212E35E237616DA9),
    .INIT_63(256'hA6A9B89FFA9417ECE9649E9F7BC379320BD7CAC188E0C913FBEF45BE8A82BDC2),
    .INIT_64(256'h4AB94DC14CA55B093EAC6537104961DDDBC8D6A986298796A2F5D784311270FF),
    .INIT_65(256'hEECDB05ED9419615CB6F6743543CEF2B414FC2AE3FF8840839FCD7BB2D7C9B1B),
    .INIT_66(256'h7AB030D563E3A249D254A8ADAD318C7CA9EBCA1178C5D26ADA19533F8AE6F4A1),
    .INIT_67(256'h400EF72B1DA54BFAE2F0C0A93746948530ECE14E24A2ACCC33897E884AAA69EE),
    .INIT_68(256'h77F1E9BBA03592454386BCEC74594F62123A95ADB536320E357C4E980AC084CB),
    .INIT_69(256'h3DF3FF9B84407883E50E0298B738C00EA2A182950637FD883F23CCE863C69E98),
    .INIT_6A(256'h655EAA6BF0A7310F2A8E257C9733ECF094CC8E80FAE7E60835EE0C52165D7F23),
    .INIT_6B(256'h4EAA101CCBE57A2D28F7714F0645D41466B093B92306869BC707A8EB1DD2E18B),
    .INIT_6C(256'hB3E3396067888E6DE23A84E949BED7CB30BA954C0298419A9BDBCEF2EBF2BE87),
    .INIT_6D(256'h8B0AEDB4AAB320392136459B95C082E38B62846852307337CC41540390BBFA9A),
    .INIT_6E(256'h93643FD64B917E1B5580A34C64B28FB25A6E8746A41D243A12B10AA892FBCABE),
    .INIT_6F(256'hF0D36DCCF4D48952194E8AAC0EC3B981728BB3818EB33BA54075C993120952E3),
    .INIT_70(256'h0EF40EB4FE06D834CD07A250FED41A6D2EEACE36A0A84D93D5018997A3B9ECF1),
    .INIT_71(256'h75A7EE032E6140CFD6211E2284A237F732F7BF43E7CDB4E9801E66F08671B803),
    .INIT_72(256'h2C3A3898FF1E3A21B6D6A9AE47218ED1014E4D17E4E8D020302CF8CAF9ABC19E),
    .INIT_73(256'h9A3859C8FAB6FDC7C6D71FD3E6301E356FDC4888BD36067D37C3EB9778E2D53E),
    .INIT_74(256'hEED214F2A02BB6EBEF9E3A3267F28EA6FB53925A6DD144E3EB3CE2AB2A951252),
    .INIT_75(256'h0BAB8ABD19ABC629EE2F2BA1EDE9E2629BA37EA681930E9CA71BC4DA501602C2),
    .INIT_76(256'h0D2C7F9F2ADC67C730ADF45CA45D1B125EDA05670BE8F52CB2CDCEE616F6F872),
    .INIT_77(256'hD64E5F1EDF7EE89B7C16FFB27571EC4F4DA221E40DB39E0B3F12DE1806CD3236),
    .INIT_78(256'hB0A7FD6A1E8408457765BCC1FE8AF26ECD7EB0E1B4644597C707164AEF1AB1E1),
    .INIT_79(256'h01E3001A1AA9194E941E132001639CB72D1D9E80AC7144B8B1D5B39E2006061A),
    .INIT_7A(256'h02B13681FE823E71B305AFEC83DF2C40BFAB2B0E4D9A93193A0B648269294A6E),
    .INIT_7B(256'h6D398507E2DEAF6865A1092BABF14C261DC82C040BC965419D4F1C2D428AE722),
    .INIT_7C(256'hA0958089EE16F72188B18832B2992B0BB33312F39A79C04052A4C2543288C4A3),
    .INIT_7D(256'hCAE5CEF790CE5CFB9FA59AE0B687F2EDE1F2FDB1F954F170C4D4E19305D92ADC),
    .INIT_7E(256'h419B1C95DD9611B9A4818149F444C89C28C94F0A6614E7040A2769F26E1010AB),
    .INIT_7F(256'h003CD7C576CC2F700C8265BAE6001B4D20AAC0EF0F06FDF23442F520D2BE43CB),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h4F534192F02F676F76E6F40FC98ACAF36FF3FD0240BFCEF779EE779F40035B63),
    .INITP_01(256'hC6DA401379AEE6BEF6637C0B49BF4BF76FD2FD92D03EC66FF567F59EC8025B62),
    .INITP_02(256'h4F53C092F92FE62EF6E6740AC9BF4AF2EFD27D83C03ECE6EF967779E48035B62),
    .INITP_03(256'hC6DAC00279EEE69FE6737C02C1BE4BF64F537D93502E676F74E7F41E4983CAF3),
    .INITP_04(256'hCF53C192782F672FF6E6740AC98ECAF3EFF27D83403FCE67796F779E40035B63),
    .INITP_05(256'hC6DA4012F9EEE69EF6737C0BC9BE4BF64FD2FD92503E476EF467F49FC903DB62),
    .INITP_06(256'hC6DA4093792FE6AF76627C0A49BF4BF76FD27D92D03EC66E7967779FC8025B62),
    .INITP_07(256'h46DAC002F9EE769E6673FC02C0BF4FF7CF537193F02F676EF4E6F40E4983CAF2),
    .INITP_08(256'hCF534192F02F672F76E6F40FC98ACAF26FF3FD0340BFCE7779EE779F40035B63),
    .INITP_09(256'hC6DA4013F9AEE6BE76637C0B49BF4BF76FD2FD92D03EC66EF567F59EC9025B62),
    .INITP_0A(256'hC753C092F92FE62E76E2740A49BF4AF2EFD27D83C03ECE6FF967779F48025B63),
    .INITP_0B(256'h46DAC00279EEF69FE673FC02C1BE4BF6CF537593502E676F74E6F41E4983CAF2),
    .INITP_0C(256'hCF53C192782F672F76E6F40AC98ECAF2EFF27D83403FCE66796E779F40035B63),
    .INITP_0D(256'h46DA4013F9EEE69EF6637C0B49BE4BF6EFD2FD92503E476EF467F49FC9035B63),
    .INITP_0E(256'h4F53C092F92FE72EF6E6740AC9BECAF3EFD27D83403ECE6EF967779E48035B63),
    .INITP_0F(256'h2A03779F40BFCEF776E6F40FC98ACAF36FD2FD92D03EC66FFD67759EC8025B63),
    .INIT_00(256'hFED8BA4F253A9E9A8EA037304ABED830EC6399C9C49D610578918F839EA2FF21),
    .INIT_01(256'hEDF6B37F57EE20950D0B70760DB5A6D4BBA7B212707409268922EC627BB7F551),
    .INIT_02(256'hBCEA39E9C09661190BD8D691AD3CC26FD587276F1C0A381702DC3FF50E2FFD85),
    .INIT_03(256'hBCFD2A12E942D90EFF3907216A2B86EE3DC238B286D9D6170D6393CCE43DE9EE),
    .INIT_04(256'hDDE27A9C7368805ACDBC07E1FCFDCD506176611D70D44D8EBDB7683C56E9FFEA),
    .INIT_05(256'hA6FA6FC9A119FD5287233CCCBCF197612DB575621AA7F055CB43C01730FBF097),
    .INIT_06(256'h33F0F6340CC341D749F2A41F5D79B5464998EDC1C63F219F46FF16ACC574FA0A),
    .INIT_07(256'h58FFE55B316AB5C9764FD1751764757A1ECEF901D60ABAD94E82667F977EE10F),
    .INIT_08(256'h6EDD9A76CC518FFA2DAE1F8923DED3C0276C7DF39AB858CA1BA47BE07AC6FFB4),
    .INIT_09(256'hC9F891A4FC040EF44A1756A1E4D39F9BF4AE933A458DFDE92A32D6BD55D9F374),
    .INIT_0A(256'h2AED180F66AD5178AAE5BDE8855ABB7F0F900A98F1252DDBA4EE2B50E951FCCD),
    .INIT_0B(256'h74FE08378D56C76C3A44EC4B41487EB4AEC819D92EF1C878AD737D25BE5DE57F),
    .INIT_0C(256'h4DE659C31A7F71B96CCAEE39D51DC8E09B7F444646EF435360C95499320CFE3D),
    .INIT_0D(256'h04FC4DEE452DEBB0C32E22F6930E8F2866BC578ADDC0E3B66C53AA720A1CED5D),
    .INIT_0E(256'h10F3D55AB2D93036D0FE8A4B3597AE0D82A0CFEA9B5A1562E8110107A096F82E),
    .INIT_0F(256'h8FFFC17FD47EA226B159B59FEE816B3F8ED3DA287E22AC39EE914ED8719EDDA0),
    .INIT_10(256'h36DBAA62F94597CA5DA72B5D37CED5F889688BDEAFAB5D67499B85B28CB4FF46),
    .INIT_11(256'h5BF7A29229F917C4AC11638BF9C4A33758ABA2265B8103875A2AE19068C8F4E3),
    .INIT_12(256'hF3EB28FC93A15949DBDEC9BC994BBE1B728C198406183279D3E53523FC40FCA9),
    .INIT_13(256'h98FE1925BB4CD03D9D3FF9365539825175C528C65AE5CF48DD6B88F8D14DE7B6),
    .INIT_14(256'h15E46AAF477478899CC3FB0DE80DCA18FE7A52315BE248F18FC05E6B44FAFE19),
    .INIT_15(256'h14FB5EDC7323F48125282FE1A7FF93C5C9B9667604B3EA869C4BB5451D0BEE94),
    .INIT_16(256'hA1F2E647DFCE390719F897354988B1A9E59CDED5B14D1B0117080CDAB285F99C),
    .INIT_17(256'h10FFD36D0374ABF81354C38A037270DD56D1EA14AA16B3091E895AAB848EDFD8),
    .INIT_18(256'hA6DF8A89A05D882AFDB513B50FEED088C4716F0885C6522CECAE720E68D7FFA2),
    .INIT_19(256'h37F980B7CE0E0623E81D49B6D0E29BFE91B2844E2F9AF725FB3BCBEA42EAF106),
    .INIT_1A(256'h62EF072239B849A87AEBB009716AB8E2AC94FCADDC32273D75F6217ED762FB78),
    .INIT_1B(256'hA1FFF6495F60BE9AD849DE602C567917E6CB09ED02FEC1A97D7A7152AB6EE347),
    .INIT_1C(256'h84E849D6ED8B69E93CD1E265C12CC5A73883365B31FD3DB531D34AC7201DFE61),
    .INIT_1D(256'hE0FC3C001738E2DF6134140C7E1C8B8B02BF479EB1CCDDE73D5B9F9FF72CEB25),
    .INIT_1E(256'h7EF5C46D84E428666F057D6021A6AA711FA4C0FE86670FC4B819F6358DA7F7BF),
    .INIT_1F(256'hFDFFB091A68798554E5EA7B4D98F66A2C6D6CA3B522EA569BE9843045DAEDA68),
    .INIT_20(256'h9ADAB2590F409AB275A3314740C6D694BB6592D4BAA45F3660968A9A95ABFF6A),
    .INIT_21(256'h24F6AB8940F41BADDD0E6A8003BDA50689A9AA1C667A06567226E67971C0F51A),
    .INIT_22(256'h57EA30F2AA9C5D31F3DBCFA6A343C0D3A48A207911113548EBE03A0C0537FD17),
    .INIT_23(256'h2AFD221CD247D525CE3C002B6032841FD9C430BC70DFD330F5678EE2DA45E852),
    .INIT_24(256'h79E372A65D6E7C72B5C001F7F205CCB430785A2766DB4BC0A6BC63544DF2FF0F),
    .INIT_25(256'hDDFB67D28A1EF969562536D6B2F89593FBB76D6C0FADED6EB447BB2E2603EF30),
    .INIT_26(256'h6AF1EE3EF6C83DEF31F59D2A5380B378179AE6CBBC461ED02F0411C3BB7CF9D3),
    .INIT_27(256'h34FFDC641A6FB0E04551CA800D6B72ABBACFF10BC010B7F1368660958E86E074),
    .INIT_28(256'h0ADE927FB6578B1215B2199F19E6D124F56F76FD90BF55FB03A976F771CFFF7E),
    .INIT_29(256'h00F989AEE5090A0B191A50ABDADA9DCCC2B08C443A94FA0C1337D1D44CE1F23D),
    .INIT_2A(256'hC6EE0F1850B24D9092E8B7FE7B62BAB0DD9203A2E62C2A0C8DF22667E05AFBAF),
    .INIT_2B(256'hE2FEFF40765BC3830947E556364F7BE54ACA11E318F8C5909576773CB465E4E3),
    .INIT_2C(256'hE8E751CC04856DD154CDE84FCB24C6436A813D503BF6408448CE4FB02915FECF),
    .INIT_2D(256'h72FC44F72E33E7C792311B0189158D5934BE4F94C7C6E0CF5457A4880024ECC1),
    .INIT_2E(256'h47F4CD639BDE2C4E9F0284552B9FAC3F50A2C8F491601293D015FC1E969EF7F7),
    .INIT_2F(256'h47FFB988BD839D3D805BAEAAE38869712AD5D2326828A951D69548EE67A6DB04),
    .INIT_30(256'hD2DCA26CE34B93E245AB25732DD6D45C586A84E9A5B25A98329F80C983BDFF6B),
    .INIT_31(256'h92F89A9B13FE13DC7B145D96EFCCA16926AD9B30508700B8422EDBA65FD1F4AB),
    .INIT_32(256'h8FEC20057DA75560C3E2C3D28F53BD4D418E128EFC1E2FAABCE9303AF349FC3B),
    .INIT_33(256'h06FE102EA451CC546C41F3414B41808211C720D044EBCC60C56F820FC755E61A),
    .INIT_34(256'hB1E561B9307A75A184C7F423DE15C97CCD7C4B3C51E8452277C559823B03FEAB),
    .INIT_35(256'h4BFB56E55C28F098F42B28EC9D0791F698BA5E80F3BAE69E844FAF5B1313EDF8),
    .INIT_36(256'hD9F2DD51C8D3351F00FB91403F90AFDBB49ED7DFA6531832FF0C06F0A98DF865),
    .INIT_37(256'hD8FFCA76EC79A70FE256BC95F87A6E0EF2D2E21E941CB021068D54C17A96DE3C),
    .INIT_38(256'h41E082938A638442E5B90DCB06F5CFEC927368127BCD505DD5B26D255FE0FFC6),
    .INIT_39(256'h6FFA78C0B713013AB72043C1C6E999305FB47D5825A0F33DE33FC60139F2F1CE),
    .INIT_3A(256'hFBF0FF2B23BD45C061EFAA146771B6147A96F4B7D139246E5EFB1B95CE6BFA41),
    .INIT_3B(256'h7CFFED524865B9B2A74CD76B225D774882CD01F7EC04BEC1667E6B68A176E2AB),
    .INIT_3C(256'h20E941DFD791650123D4DC7BB734C30B07852F6526033BE61AD745DE1726FDF3),
    .INIT_3D(256'h4EFD3309003DDEF630360E16742489BCA1C13FA89CD3D9FF255F99B5ED34EA89),
    .INIT_3E(256'hB6F5BC766EE9247D3E08776B17AEA8A2EDA5B9087B6D0CF5A11DF14C84AFF688),
    .INIT_3F(256'hD9FFA7998F8C946C1D60A0BFCF9664D362D7C2453B34A181A69C3D1A54B6D9CC),
    .INIT_40(256'hE5D9B851203B9DA087A1353648C0D749E06397CCC29E611172928E899CA5FF21),
    .INIT_41(256'hBAF6B18251F01F9B010C6F780AB7A6E0AFA8B0156E7508328323EA6878BAF583),
    .INIT_42(256'hA2EA36EBBB98601F05D8D496AB3DC188C9882672190C3724FCDD3EFA0C31FDEA),
    .INIT_43(256'h58FD2815E343D814F23A0524672D86FA24C336B480DAD51D076492D1E23FE907),
    .INIT_44(256'hC4E2789F6E6A7F60C7BD05E7F9FFCD6955765F1F6ED64D9BB7B8664254EBFFB3),
    .INIT_45(256'h73FA6DCC9B1AFC587A233BCEB9F2966E21B6736517A8EF5BC544BF1D2DFDF0C9),
    .INIT_46(256'h01F0F43706C440DD43F3A2225B7BB4523C98EBC3C44120AB400015B2C276FA3C),
    .INIT_47(256'h8FFFE25D2B6BB3CF6A4FCF781566748605CEF703D10BBADF488364849580E128),
    .INIT_48(256'h55DD9878C7538E0027AF1D8E21E0D2D91A6D7BF698BA57D615A57AE678C8FF46),
    .INIT_49(256'h97F88FA7F6050DF93E1855A3E2D59EA7E8AF923D428FFCF52433D5C353DBF3A6),
    .INIT_4A(256'h11ED151161AE507EA4E6BBED835CBB8B0390089BEE272CE89EEF2A56E753FB19),
    .INIT_4B(256'h10FE05398757C6712E45EA4E3E4A7DC095C917DC29F3C77EA7747B2BBB5FE598),
    .INIT_4C(256'h33E657C5148170BF66CBED3ED21EC7F88F7F424843F1425F5ACB529E300EFEA2),
    .INIT_4D(256'hA0FC4BF03F2FEAB6B72F20F990108E3459BC558DD8C1E2BC6654A877081EEC76),
    .INIT_4E(256'hDEF3D35CACDA2F3CC4FF894D3399AD1976A0CDEC995B156FE212000D9D98F860),
    .INIT_4F(256'hFDFFBF81CF7FA12CA559B3A2EB826B4C75D4D82A7823AB3FE8924DDD6EA0DCB9),
    .INIT_50(256'h1DDBA865F34796D057A8296234D0D5117D6889E1ADAC5C73439C84B78AB6FF6A),
    .INIT_51(256'h29F7A09424FA16CAA012628EF6C6A2444BABA12958820293542BDF9566CAF415),
    .INIT_52(256'hDAEC26FE8EA3584ED5DFC8C2974DBE27668C178604193286CDE63428F942FC0E),
    .INIT_53(256'h34FE1727B54DCF43903FF839533B815D5CC626C854E7CE4ED76C87FECE4FE7CF),
    .INIT_54(256'hFCE467B24175778F96C4F913E60FCA31F27B513458E347FD89C15C7042FDFE7E),
    .INIT_55(256'hE2FB5CDE6D24F38718292DE4A50192D1BDB9647901B5E98C964CB44A1A0DEEAD),
    .INIT_56(256'h6FF2E44AD9CF380D12F99538478AB1B6D99CDCD8AE4E1B0D11090ADFB087F9CE),
    .INIT_57(256'h47FFD16FFD75AAFD0754C18D00746FE93DD1E817A417B30F188A59B18290DFF1),
    .INIT_58(256'h8DE0888B9A5E8730F7B611BB0DF0D0A1B7726D0A83C85238E6AF701466DAFF6B),
    .INIT_59(256'h05F97EB9C9100529DC1D48B9CEE49A0B84B282512D9CF62BF53CCAF040ECF138),
    .INIT_5A(256'h49EF052434B948AE74ECAF0C6F6CB7EF9F94FAAFD93426496FF81F84D565FBAA),
    .INIT_5B(256'hD8FFF44B5961BDA0CC4ADC632A587923CDCB07F0FDFFC1AF777B7057A870E360),
    .INIT_5C(256'h6BE847D8E88C68EF36D2E16ABE2EC4C02C84345D2EFE3DC12BD448CC1E20FDC6),
    .INIT_5D(256'h7CFD3A031139E1E55534130E7C1E8A97EBC045A1ACCEDCED375C9DA4F52EEB3E),
    .INIT_5E(256'h4CF5C26F7FE5276C63057C631FA8AA7D12A4BF0083680FD0B31AF53A8BA9F7F2),
    .INIT_5F(256'hD9FFAD93A089975B425EA5B7D69066AEADD6C83E4C2FA46FB899410A5BB0DA81),
    .INIT_60(256'hB3D9B456153E9BAC7BA2324143C4D77BC76594D1BCA2602A66958B9597A9FF21),
    .INIT_61(256'h56F6AD8646F21CA7E90D6C7E05BBA5F996A9AC1A6878074A7725E87374BEF5E8),
    .INIT_62(256'h70EA32F0AF9A5E2BF9DAD1A1A641C0BAB0892277140F363CF1DF3C060735FDB3),
    .INIT_63(256'h8FFD2419D846D61FDA3B022962308513F2C332B975DDD32AFB668FDCDD43E839),
    .INIT_64(256'h92E274A3636D7D6CBBBF02F2F503CC9B3C775B2468D94BB3ACBA644E50F0FF45),
    .INIT_65(256'h0FFA69D08F1DFA64622537D4B4F6958708B76F6A12ABEE68BA46BC282901EF17),
    .INIT_66(256'h9CF1F03BFBC73EE937F49F27567FB36B2399E7C9BE441FC4340312BDBE7AF9A1),
    .INIT_67(256'hFDFFDE62206EB1DA5150CB7D106A739FD3CFF308C60EB8EB3C85618F9084E05A),
    .INIT_68(256'h23DE947DBC568C0C1BB11A991CE4D20B026E78FB92BE56EF09A878F174CCFF6A),
    .INIT_69(256'h33F88BABEB080B05251952A9DDD99DC0CFB08E423D92FA061936D2CE4EDFF20B),
    .INIT_6A(256'hDFEE111655B14E8A98E7B8F87E60BAA4EA9105A0E92A2A0093F12762E358FB7D),
    .INIT_6B(256'h47FE013E7C5AC47D1646E753394D7CD963C913E11EF6C68A9B767836B763E4CA),
    .INIT_6C(256'h01E653CA09846ECB5ACDEA49CD22C62A76803F4E3EF441784ECD50AA2B12FE6B),
    .INIT_6D(256'hD7FC46F53431E8C29E301DFE8B138D4D40BD5192CDC5E1C95A56A6830322ECA8),
    .INIT_6E(256'h79F4CF61A1DD2D48AC0185532E9DAC325DA1CAF1935F1387D614FD18999CF7C4),
    .INIT_6F(256'hD9FFBB85C3819E388C5BB0A7E686696443D4D42F6D26AA4BDC944AE86AA4DCEB),
    .INIT_70(256'h4FDAAC60FE4497C463A62C5739CCD6DF96678DDCB2A95D5B4F9A86AC8EB2FF21),
    .INIT_71(256'h8DF7A4902FF818BEB8106589FBC2A32B64AAA4245D7F047B6029E28A6AC6F4B1),
    .INIT_72(256'h0CEB2AF999A05A43E1DDCBB79C49BF0E7F8B1B810916336DD9E4361DFE3EFC45),
    .INIT_73(256'hFDFE1B22C14BD137A93EFB33583883458EC52AC35FE4D042E36A89F3D34BE79D),
    .INIT_74(256'h2EE36CAD4C737983A2C2FC08EB0BCBFF0A7A542F5EE049E494BF5F6547F8FF6A),
    .INIT_75(256'h46FB60D97922F57B312831DEAAFD93B8D6B8687407B2EB80A24AB63F1F09EF7B),
    .INIT_76(256'hD4F2E845E5CC3A011FF798324C86B29DF29BE0D3B44B1CF51D070DD4B582F96A),
    .INIT_77(256'hD9FFD56B0873ACF22053C488057170D06FD0EC12B014B40324895BA6878CDFBF),
    .INIT_78(256'h87DD9C73D25090F433AD208325DCD3A7336C7FF09DB758BD20A37DDA7CC4FF21),
    .INIT_79(256'hFCF894A2020210EE5616589EE7D19F8E01AE9538488CFEDC3031D7B758D7F342),
    .INIT_7A(256'h44ED1A0C6CAB5272B0E4BEE28858BC721B8F0C96F4232DCFAAED2C4BEC4FFC69),
    .INIT_7B(256'hD9FE0A359355C8664743EE4943467EA8C7C81BD734F0C972B3727E20C05BE566),
    .INIT_7C(256'hF6E17C9A79678154D3BB08DCFEFBCE376D75631A73D24E82C3B6693759E7FF21),
    .INIT_7D(256'hD8FA71C7A617FE4C93223EC9BEEF975539B577601CA5F14FD142C11232F8F065),
    .INIT_7E(256'hD5E93BE6C695621311D7D78BAF3AC256E287296D1E09380B08DB41EF102DFD21),
    .INIT_7F(256'h00A0907DC79B62F8949F382B4CBCD817C8A7B30F73720A198F21ED5D7DB5F61F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hDCF7F4F2EFF6F7E9E9F7F6EFF2F4F7DCE4F7F5F0F0F5F7E4ECF6F6ECF3F3F79C),
    .INIT_01(256'hD4F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D4),
    .INIT_02(256'hD9F7F4F2EEF6F7EAE8F7F5EFF1F4F7DFE2F7F5F1F0F5F7E6EBF6F6ECF3F3F7CC),
    .INIT_03(256'hCCF7F3F3ECF6F6EBE5F7F5F0F1F5F7E2DFF7F4F1EFF5F7E8EAF7F6EEF2F4F7D9),
    .INIT_04(256'hDAF7F4F2EEF6F7E9E8F7F6EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C4),
    .INIT_05(256'hD1F7F3F2EDF6F6EBE6F7F5F0F1F4F7E2E0F7F4F1F0F5F7E8EAF7F6EEF2F3F7D7),
    .INIT_06(256'hD7F7F3F2EEF6F7EAE8F7F5F0F1F4F7E0E2F7F4F1F0F5F7E6EBF6F6EDF2F3F7D1),
    .INIT_07(256'hC4F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F2EFF6F7E8E9F7F6EEF2F4F7DB),
    .INIT_08(256'hDBF7F4F2EEF6F7E9E9F7F6EFF2F4F7DDE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7BD),
    .INIT_09(256'hD2F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E0F7F4F1F0F5F7E7EAF7F6EDF2F3F7D6),
    .INIT_0A(256'hD8F7F4F2EEF6F7EAE8F7F5EFF1F4F7E0E2F7F5F1F0F5F7E6EBF6F6EDF2F3F7CF),
    .INIT_0B(256'hC9F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F1EFF5F7E8E9F7F6EEF2F4F7DA),
    .INIT_0C(256'hDAF7F4F2EEF6F7E9E8F7F5EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C9),
    .INIT_0D(256'hCFF7F3F2EDF6F6EBE6F7F5F0F1F5F7E2E0F7F4F1EFF5F7E8EAF7F6EEF2F4F7D8),
    .INIT_0E(256'hD6F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D3),
    .INIT_0F(256'hBBF7F3F3ECF6F6ECE4F7F5F0F0F5F7E4DDF7F4F2EFF6F7E9E9F7F6EEF2F4F7DB),
    .INIT_10(256'hDCF7F4F2EEF6F7E9E9F7F6EFF2F4F7DCE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7B6),
    .INIT_11(256'hD3F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D5),
    .INIT_12(256'hD8F7F4F2EEF6F7EAE8F7F5EFF1F4F7E0E2F7F5F1F0F5F7E6EBF6F6EDF2F3F7CE),
    .INIT_13(256'hCAF7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DFF7F4F1EFF5F7E8E9F7F6EEF2F4F7D9),
    .INIT_14(256'hDAF7F4F2EEF6F7E9E8F7F5EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C8),
    .INIT_15(256'hD0F7F3F2EDF6F6EBE6F7F5F0F1F4F7E2E0F7F4F1F0F5F7E8EAF7F6EEF2F4F7D8),
    .INIT_16(256'hD6F7F3F2EDF6F7EAE8F7F5F0F1F4F7E0E1F7F4F1F0F5F7E7EBF7F6EDF2F3F7D2),
    .INIT_17(256'hC1F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DDF7F4F2EFF6F7E9E9F7F6EEF2F4F7DB),
    .INIT_18(256'hDBF7F4F2EEF6F7E9E8F7F6EFF2F4F7DDE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C1),
    .INIT_19(256'hD2F7F3F2EDF6F7EBE6F7F5F0F1F4F7E1E0F7F4F1F0F5F7E8EAF7F6EDF2F3F7D7),
    .INIT_1A(256'hD8F7F4F2EEF6F7EAE8F7F5F0F1F4F7E0E2F7F4F1F0F5F7E6EBF6F6EDF2F3F7D0),
    .INIT_1B(256'hC7F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F1EFF5F7E8E9F7F6EEF2F4F7DA),
    .INIT_1C(256'hD9F7F4F2EEF6F7E9E8F7F5EFF1F4F7DFE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7CB),
    .INIT_1D(256'hCDF7F3F3EDF6F6EBE6F7F5F0F1F5F7E2E0F7F4F1EFF5F7E8EAF7F6EEF2F4F7D9),
    .INIT_1E(256'hD5F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D3),
    .INIT_1F(256'hB2F7F3F3ECF6F6ECE4F7F5F0F0F5F7E4DCF7F4F2EFF6F7E9E9F7F6EFF2F4F7DC),
    .INIT_20(256'hDCF7F4F2EFF6F7E9E9F7F6EFF2F4F7DCE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7AF),
    .INIT_21(256'hD4F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D5),
    .INIT_22(256'hD9F7F4F2EEF6F7EAE8F7F5EFF1F4F7DFE2F7F5F1F0F5F7E6EBF6F6EDF3F3F7CD),
    .INIT_23(256'hCBF7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DFF7F4F1EFF5F7E8E9F7F6EEF2F4F7D9),
    .INIT_24(256'hDAF7F4F2EEF6F7E9E8F7F6EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C6),
    .INIT_25(256'hD0F7F3F2EDF6F6EBE6F7F5F0F1F4F7E2E0F7F4F1F0F5F7E8EAF7F6EEF2F4F7D8),
    .INIT_26(256'hD7F7F3F2EDF6F7EAE8F7F5F0F1F4F7E0E2F7F4F1F0F5F7E6EBF7F6EDF2F3F7D1),
    .INIT_27(256'hC2F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DDF7F4F2EFF6F7E8E9F7F6EEF2F4F7DB),
    .INIT_28(256'hDBF7F4F2EEF6F7E9E9F7F6EFF2F4F7DDE3F7F5F0F0F5F7E4ECF6F6ECF3F3F7C0),
    .INIT_29(256'hD2F7F3F2EDF6F7EBE7F7F5F0F1F4F7E1E0F7F4F1F0F5F7E8EAF7F6EDF2F3F7D6),
    .INIT_2A(256'hD8F7F4F2EEF6F7EAE8F7F5EFF1F4F7E0E2F7F5F1F0F5F7E6EBF6F6EDF2F3F7D0),
    .INIT_2B(256'hC8F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F1EFF5F7E8E9F7F6EEF2F4F7DA),
    .INIT_2C(256'hD9F7F4F2EEF6F7E9E8F7F5EFF1F4F7DFE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7CA),
    .INIT_2D(256'hCEF7F3F2EDF6F6EBE6F7F5F0F1F5F7E2E0F7F4F1EFF5F7E8EAF7F6EEF2F4F7D8),
    .INIT_2E(256'hD5F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D3),
    .INIT_2F(256'hB8F7F3F3ECF6F6ECE4F7F5F0F0F5F7E4DDF7F4F2EFF6F7E9E9F7F6EEF2F4F7DC),
    .INIT_30(256'hDBF7F4F2EEF6F7E9E9F7F6EFF2F4F7DDE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7BA),
    .INIT_31(256'hD3F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D5),
    .INIT_32(256'hD8F7F4F2EEF6F7EAE8F7F5EFF1F4F7E0E2F7F5F1F0F5F7E6EBF6F6EDF2F3F7CF),
    .INIT_33(256'hCAF7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DFF7F4F1EFF5F7E8E9F7F6EEF2F4F7DA),
    .INIT_34(256'hDAF7F4F2EEF6F7E9E8F7F5EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C8),
    .INIT_35(256'hD0F7F3F2EDF6F6EBE6F7F5F0F1F5F7E2E0F7F4F1EFF5F7E8EAF7F6EEF2F4F7D8),
    .INIT_36(256'hD6F7F3F2EDF6F7EAE8F7F5F0F1F4F7E0E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D2),
    .INIT_37(256'hBEF7F3F3ECF6F6ECE4F7F5F0F0F5F7E4DDF7F4F2EFF6F7E9E9F7F6EEF2F4F7DB),
    .INIT_38(256'hDBF7F4F2EEF6F7E9E8F7F6EFF2F4F7DDE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C3),
    .INIT_39(256'hD1F7F3F2EDF6F7EBE6F7F5F0F1F4F7E2E0F7F4F1F0F5F7E8EAF7F6EEF2F3F7D7),
    .INIT_3A(256'hD7F7F3F2EEF6F7EAE8F7F5F0F1F4F7E0E2F7F4F1F0F5F7E6EBF6F6EDF2F3F7D1),
    .INIT_3B(256'hC5F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F1EFF6F7E8E9F7F6EEF2F4F7DA),
    .INIT_3C(256'hD9F7F4F2EEF6F7EAE8F7F5EFF1F4F7DFE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7CB),
    .INIT_3D(256'hCDF7F3F3EDF6F6EBE6F7F5F0F1F5F7E2DFF7F4F1EFF5F7E8EAF7F6EEF2F4F7D9),
    .INIT_3E(256'hD4F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D4),
    .INIT_3F(256'hA9F7F3F3ECF6F6ECE4F7F5F0F0F5F7E4DCF7F4F2EFF6F7E9E9F7F6EFF2F4F7DC),
    .INIT_40(256'hDCF7F4F2EFF6F7E9E9F7F6EFF2F4F7DCE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7A4),
    .INIT_41(256'hD4F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D4),
    .INIT_42(256'hD9F7F4F2EEF6F7EAE8F7F5EFF1F4F7DFE2F7F5F1F0F5F7E6EBF6F6ECF3F3F7CC),
    .INIT_43(256'hCCF7F3F3ECF6F6EBE5F7F5F0F1F5F7E2DFF7F4F1EFF5F7E8EAF7F6EEF2F4F7D9),
    .INIT_44(256'hDAF7F4F2EEF6F7E9E8F7F6EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C5),
    .INIT_45(256'hD1F7F3F2EDF6F6EBE6F7F5F0F1F4F7E2E0F7F4F1F0F5F7E8EAF7F6EEF2F3F7D7),
    .INIT_46(256'hD7F7F3F2EEF6F7EAE8F7F5F0F1F4F7E0E2F7F4F1F0F5F7E6EBF7F6EDF2F3F7D1),
    .INIT_47(256'hC3F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F2EFF6F7E8E9F7F6EEF2F4F7DB),
    .INIT_48(256'hDBF7F4F2EEF6F7E9E9F7F6EFF2F4F7DDE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7BE),
    .INIT_49(256'hD2F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E0F7F4F1F0F5F7E7EAF7F6EDF2F3F7D6),
    .INIT_4A(256'hD8F7F4F2EEF6F7EAE8F7F5EFF1F4F7E0E2F7F5F1F0F5F7E6EBF6F6EDF2F3F7D0),
    .INIT_4B(256'hC9F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F1EFF5F7E8E9F7F6EEF2F4F7DA),
    .INIT_4C(256'hDAF7F4F2EEF6F7E9E8F7F5EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C9),
    .INIT_4D(256'hCFF7F3F2EDF6F6EBE6F7F5F0F1F5F7E2E0F7F4F1EFF5F7E8EAF7F6EEF2F4F7D8),
    .INIT_4E(256'hD5F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D3),
    .INIT_4F(256'hBAF7F3F3ECF6F6ECE4F7F5F0F0F5F7E4DDF7F4F2EFF6F7E9E9F7F6EEF2F4F7DB),
    .INIT_50(256'hDCF7F4F2EEF6F7E9E9F7F6EFF2F4F7DDE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7B7),
    .INIT_51(256'hD3F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D5),
    .INIT_52(256'hD8F7F4F2EEF6F7EAE8F7F5EFF1F4F7E0E2F7F5F1F0F5F7E6EBF6F6EDF2F3F7CE),
    .INIT_53(256'hCAF7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DFF7F4F1EFF5F7E8E9F7F6EEF2F4F7D9),
    .INIT_54(256'hDAF7F4F2EEF6F7E9E8F7F5EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C8),
    .INIT_55(256'hD0F7F3F2EDF6F6EBE6F7F5F0F1F5F7E2E0F7F4F1F0F5F7E8EAF7F6EEF2F4F7D8),
    .INIT_56(256'hD6F7F3F2EDF6F7EAE8F7F5F0F1F4F7E0E1F7F4F1F0F5F7E7EBF7F6EDF2F3F7D2),
    .INIT_57(256'hC0F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DDF7F4F2EFF6F7E9E9F7F6EEF2F4F7DB),
    .INIT_58(256'hDBF7F4F2EEF6F7E9E8F7F6EFF2F4F7DDE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C2),
    .INIT_59(256'hD2F7F3F2EDF6F7EBE6F7F5F0F1F4F7E2E0F7F4F1F0F5F7E8EAF7F6EDF2F3F7D7),
    .INIT_5A(256'hD8F7F4F2EEF6F7EAE8F7F5F0F1F4F7E0E2F7F4F1F0F5F7E6EBF6F6EDF2F3F7D0),
    .INIT_5B(256'hC6F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F1EFF5F7E8E9F7F6EEF2F4F7DA),
    .INIT_5C(256'hD9F7F4F2EEF6F7E9E8F7F5EFF1F4F7DFE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7CB),
    .INIT_5D(256'hCDF7F3F3EDF6F6EBE6F7F5F0F1F5F7E2DFF7F4F1EFF5F7E8EAF7F6EEF2F4F7D9),
    .INIT_5E(256'hD5F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D3),
    .INIT_5F(256'hB1F7F3F3ECF6F6ECE4F7F5F0F0F5F7E4DCF7F4F2EFF6F7E9E9F7F6EFF2F4F7DC),
    .INIT_60(256'hDCF7F4F2EFF6F7E9E9F7F6EFF2F4F7DCE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7AC),
    .INIT_61(256'hD4F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D4),
    .INIT_62(256'hD9F7F4F2EEF6F7EAE8F7F5EFF1F4F7DFE2F7F5F1F0F5F7E6EBF6F6EDF3F3F7CD),
    .INIT_63(256'hCBF7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DFF7F4F1EFF5F7E8E9F7F6EEF2F4F7D9),
    .INIT_64(256'hDAF7F4F2EEF6F7E9E8F7F6EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C6),
    .INIT_65(256'hD1F7F3F2EDF6F6EBE6F7F5F0F1F4F7E2E0F7F4F1F0F5F7E8EAF7F6EEF2F4F7D8),
    .INIT_66(256'hD7F7F3F2EDF6F7EAE8F7F5F0F1F4F7E0E2F7F4F1F0F5F7E6EBF7F6EDF2F3F7D1),
    .INIT_67(256'hC2F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DDF7F4F2EFF6F7E8E9F7F6EEF2F4F7DB),
    .INIT_68(256'hDBF7F4F2EEF6F7E9E9F7F6EFF2F4F7DDE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7BF),
    .INIT_69(256'hD2F7F3F2EDF6F7EBE7F7F5F0F1F4F7E1E0F7F4F1F0F5F7E8EAF7F6EDF2F3F7D6),
    .INIT_6A(256'hD8F7F4F2EEF6F7EAE8F7F5EFF1F4F7E0E2F7F5F1F0F5F7E6EBF6F6EDF2F3F7D0),
    .INIT_6B(256'hC8F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F1EFF5F7E8E9F7F6EEF2F4F7DA),
    .INIT_6C(256'hDAF7F4F2EEF6F7E9E8F7F5EFF1F4F7DFE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7CA),
    .INIT_6D(256'hCEF7F3F2EDF6F6EBE6F7F5F0F1F5F7E2E0F7F4F1EFF5F7E8EAF7F6EEF2F4F7D8),
    .INIT_6E(256'hD5F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D3),
    .INIT_6F(256'hB9F7F3F3ECF6F6ECE4F7F5F0F0F5F7E4DDF7F4F2EFF6F7E9E9F7F6EEF2F4F7DB),
    .INIT_70(256'hDCF7F4F2EEF6F7E9E9F7F6EFF2F4F7DCE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7B4),
    .INIT_71(256'hD3F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D5),
    .INIT_72(256'hD9F7F4F2EEF6F7EAE8F7F5EFF1F4F7E0E2F7F5F1F0F5F7E6EBF6F6EDF2F3F7CE),
    .INIT_73(256'hCAF7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DFF7F4F1EFF5F7E8E9F7F6EEF2F4F7D9),
    .INIT_74(256'hDAF7F4F2EEF6F7E9E8F7F5EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C7),
    .INIT_75(256'hD0F7F3F2EDF6F6EBE6F7F5F0F1F4F7E2E0F7F4F1F0F5F7E8EAF7F6EEF2F4F7D8),
    .INIT_76(256'hD6F7F3F2EDF6F7EAE8F7F5F0F1F4F7E0E1F7F4F1F0F5F7E6EBF7F6EDF2F3F7D2),
    .INIT_77(256'hC1F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DDF7F4F2EFF6F7E9E9F7F6EEF2F4F7DB),
    .INIT_78(256'hDBF7F4F2EEF6F7E9E9F7F6EFF2F4F7DDE4F7F5F0F0F5F7E4ECF6F6ECF3F3F7BC),
    .INIT_79(256'hD2F7F3F2EDF6F7EAE7F7F5F0F1F4F7E1E1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D6),
    .INIT_7A(256'hD8F7F4F2EEF6F7EAE8F7F5EFF1F4F7E0E2F7F5F1F0F5F7E6EBF6F6EDF2F3F7CF),
    .INIT_7B(256'hC9F7F3F3ECF6F6EBE5F7F5F0F1F5F7E3DEF7F4F1EFF5F7E8E9F7F6EEF2F4F7DA),
    .INIT_7C(256'hDAF7F4F2EEF6F7E9E8F7F6EFF1F4F7DEE3F7F5F1F0F5F7E5EBF6F6ECF3F3F7C4),
    .INIT_7D(256'hD1F7F3F2EDF6F6EBE6F7F5F0F1F4F7E2E0F7F4F1F0F5F7E8EAF7F6EEF2F3F7D7),
    .INIT_7E(256'hD9F7F4F2EEF6F7EAE8F7F5EFF1F4F7DFE2F7F5F1F0F5F7E6EBF6F6ECF3F3F7CC),
    .INIT_7F(256'hF8F3F6ECF0F5F7E4E9F7F6EFF2F4F7DCE1F7F4F1F0F5F7E7EAF7F6EDF2F3F7D4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7EFB9E37B1C47A470A079E06DC876394C239048D5252867FEF12B4AF2F5990CB),
    .INITP_01(256'h22DDDF0D9892988BA3277407E149565FDA00AB097F0BF07D1DCC0E7B95EAFE89),
    .INITP_02(256'h25248DACBF432D3C70DCAEAA7761DA8603B0E00065CC53A2D39F9719EB495498),
    .INITP_03(256'hE5E0D57899AEC25C0DB7E59686029E7B7538E00538F77249CA998A67C786423E),
    .INITP_04(256'hFB0C77A098DC100ED2549D504A36A7FF70755CC89A90188AA2913D9DD52E9F6E),
    .INITP_05(256'h5617CDC41596CFBC22C5294F4E9083BE0E0517BF077EB1C72C3EBC2BEEB61E0A),
    .INITP_06(256'h0AE44E9D62830E3443CC086FD455EBB2DDD44DBADAF5D9A50BAA46D9DF2A3323),
    .INITP_07(256'h419FAFCEE9E15E79B475C8ADCAF1A7CB189CFD37AD6D99EF44C7BB87F0CBDCB4),
    .INITP_08(256'h758A0238F1E4934AA43BD7082CE2DD92E58CE7F7227CFDF6B92B83550A605799),
    .INITP_09(256'h6A8535BAAD6B2060B88871AB32B24601DEBB342AC2138C9E7F1E4527799719ED),
    .INITP_0A(256'h9A40979A05933A7CADA3CC73EFB216E91CF859D52FA79921298C59E51D8EC3F2),
    .INITP_0B(256'h294E900545B9B8238456D3954650283B5584D5206E73027080B2FAFCC279FAF6),
    .INITP_0C(256'hD84012C6A77CFED9578FEC48728237D94581D6D58F1A8573BED5B816A4679835),
    .INITP_0D(256'hB27FC8B2E84B835E45B99909E315C3EED2DC96105BB1311F4A8E3B54B8861E7D),
    .INITP_0E(256'hF8EFCAC7F9B16EC3D19AE9C69C795D78B499F880F2129C70A2966366CE0B8DE2),
    .INITP_0F(256'hD867ADED3C00228FEC62069D31EEC32C66912B86D109351CF19E6BD7EE839968),
    .INIT_00(256'hAF2F2FAFEFEF2F2FEF2F2FEFAF6F2FEF6F2F6FAFAFAFAF2FAFAFEF6FEFEF6F6F),
    .INIT_01(256'h6F6FEF2FAF2F6F6F2FEF2FEF6FEF6F2FAFEF2F2F6F2F2FEF2F2F6FEFEFAF6FAF),
    .INIT_02(256'h6FEF2F2FAF2F6FAFAF2F2F6F6F6FEF2FEFEF2F6FAFEF2FAF2FAFAFAF6FAF6F6F),
    .INIT_03(256'hAF2FEFAF2F2FAF2FEFAF6FEFEF2F6F2FEFAF6F2F6F2F6F6F2FAFEF2F6FEFEFEF),
    .INIT_04(256'hEF2FEF2FAF2FEF6FAFAF6F6FAF6FAF2FEF2F2FEFAF6F2FAF2F6FAFEFEF6F6F2F),
    .INIT_05(256'h6FEF2FAF6F2FEF2FEF2FAFEFAF2F6F6F6FEFAFEFAF6FAF2F2FEFEF2F6FEFAF2F),
    .INIT_06(256'hAF6F2F2FEFAF6F6F6FEF2F6F2F2F2FAFAFEF2FEF2FAF6FAFAFAF6F2FEF6FAFAF),
    .INIT_07(256'hAF2F2FEFEFEFAF2F6FAFEF2FAFEF2FAF2F6FEF6FAFEF2FEFEFEFEF2F6FEF6FAF),
    .INIT_08(256'h6F6FEF2FAFEFAFEF2FEF6FAFAF6F6FEFEF2F2F6FAFEFEF6FAFEF6FAF6F6FEFEF),
    .INIT_09(256'hAF2FEFAFAFAFAF6FAF2F6F2F6FAFAFAF2FEF6FAF2F2F6FAFAFEF2FEF6FEFAF2F),
    .INIT_0A(256'hAF2F6FAFAF2F6FEFEFAFAFEFAFEFAF2F6FAF6FAFEFEF6FAF2F6FAFAF2FAF6FEF),
    .INIT_0B(256'hAFAF2FAF6F6FAF2FEF2F6F2F2F2F6FEFEF2FAFEF6FEFAF6FEF2F2FEFAFAFAF2F),
    .INIT_0C(256'hEFEFEF6F2F6F6FAFAF2FEF6FAFEFAF2F6FAFAF6FAF6F6F2F6FAFEF2FAFEFAFAF),
    .INIT_0D(256'h2F6F2FAF6FEF2F2F6FAFAF2F6F6F6FEFAFAF6FEF2F2FEF6F6F6FEF6FAFAF6F6F),
    .INIT_0E(256'hEFAF2F6FAFEF2F6FAFEF2FEF6FEFAF2F2FEFAFAFAF2F6F6F6FEF2F2FAF6F2F6F),
    .INIT_0F(256'h2FAFEFEFEFAF2F6FEF6F6FEFAFEF6F2F6F6F2F2F6FAF6FEFEF2FEFEFAF6FAF2F),
    .INIT_10(256'h6FEF6FAF6FEF2F6F2F6F6FEFAFAFEF2F2FEF2F2FAF6FAFEF6F6FEF6F6FEF2F2F),
    .INIT_11(256'h2F6FEF6F6F6F6FEF2FAFAFAFEF2F6F6F6F2F6FAFAFAF2FEF6F2FEFEF2FEF6FAF),
    .INIT_12(256'h6F6F6FEFAFEF2F6F2FEF2FEF2FEF6FAFAF6FEFEF2F6F2F6FEF2FEF6F2FAFEF6F),
    .INIT_13(256'h6FAFEFEF2F2F2FEFEF2FAFAFEF6F6F6FEF2FEFEFEF6FAFEFEF2FAF2F2F2FEFEF),
    .INIT_14(256'h6FAF6F6FEFEFAF2FAF6FEF2FEFEF6F6F2FEFEFEF2FEFEFAFAF6FAF2FAF2F2FEF),
    .INIT_15(256'hEF2FAF2F6FEF2FAF2FEF6F2F2F2FEF6FAF2FAF6F6F6F6FEF2F2FAF2FEF2FAFEF),
    .INIT_16(256'h6F2F6FAF2FAFAF2F2FAFAFAFEFAF2FEFAFAF6F6F6FAFEFAFAF2F6F2F2F2FAFAF),
    .INIT_17(256'hAFAF6F6F2FEF6FAFAF2F6F2F2F6FEFEFEF6F6FEFAFAF6FAF2FAF6F2FAF6FEFAF),
    .INIT_18(256'hAFEF6FAF2FAF6FEFAF2FEF2FEF2FEFEF6F2F2F6F6F6FEF6F6FAF6FAF2F2F2F2F),
    .INIT_19(256'h2F6FEF2F6F6F2F2F6F2F2FEF6FAF6F6FAFEF6F6F2FEFEFAFEF6FAFAFEF6F2F2F),
    .INIT_1A(256'hEF2F6F6F6F2F6FEF6F2F2FEFAFEFEFEFEF2FAFAF6F6FAFEFEFEFAFEFEFAF6F2F),
    .INIT_1B(256'hEF2FEFEFEF6FAFEFAF2FAF2F2F6F6F2FEFEF2F6F6FEF2F6F2F2FAF6FAF6FEF6F),
    .INIT_1C(256'h2FEFAFEF6FAFEFAF6F6FAF6F2F6FEF6F2F2F6F6F2FEF2FEFAF6F2F6F6F6F6FAF),
    .INIT_1D(256'hEF6FEFEF2FAFAF2FEFEFAF6FAFEFEFEFEF2FAF6F6F6FAF6F6FEF2FAF2FEF6F2F),
    .INIT_1E(256'hEFEF2F6F6FEFAFEFEF2FAF2F6F2FEFAF2F2F2F6FEF6FAFAF6F6F6FAF2FAFAF2F),
    .INIT_1F(256'hEFAFAF6F2FEFEFAFAF2FEFAFAF2FEFEF2FEF2FAF2FEF2F2F2FAF2FAF2FEFAFEF),
    .INIT_20(256'h6FEFEFEFAFEF2F6F6FAFAF2FAF2F2F6FAF6FEF6FEF2FEFAFEF6FEF6F2F6FAFAF),
    .INIT_21(256'h6FEFEFEF2FAFAFEFEFAF6F6FEFAFAFAFEFEF6FAF2F2F6FEF2F6F6F6FAFEFAFEF),
    .INIT_22(256'h6FAF2F6FEFEF6F2F2F6FAF6F6FAFEFAFEF6FEFAFAF2FAF2FAF6FAFEF6F2F2F2F),
    .INIT_23(256'h6F2FEF6F2FEF6F2F2FAFAFEFEF6FAFAFEF6FAF6FEFEFEF2F2F6FEFEF6FAFEFEF),
    .INIT_24(256'h6F6F6FAFAF2F2FAF6F6F6FEFEF2FAFAFEFAF2FEF6FAF2FEF6FEFEFEF2F6FAF6F),
    .INIT_25(256'hEFAFAFEFEFAF6FEF6F2FAF6FEFAF2FAF6F6F2FEF2FEFEF2FEFAF2F2F2F6FAFAF),
    .INIT_26(256'hEFEF2FAFAF2FEF2F2FAFEFAF6FAF2FEF6FEF6F2F6F6FEFAF6FAFAFAF2F2FAF2F),
    .INIT_27(256'hEF2FAF2FAFEF6FAFEFAFEFEF2F6F6F6F6FAF2FAF2F2FAFAF6F2FAFAF2F6FAFAF),
    .INIT_28(256'hEF2F2FEF6F6FEF6FEF6F6F2FAFEF2F6F2FAF2F6FAF6FEFAF2FAF2FAFAF6FAF2F),
    .INIT_29(256'h6FAFEF2FAF2FAF2FEF6F6FEF6F2F6F2F2F6FEF2FEFEFAF2F2FEF6FEF6F6FAFAF),
    .INIT_2A(256'h2FEF6FEF2FAF2F6FEF6F6F2FEF2F6FEF6FAF6FEFEF6FEF2FAF2F2F2F2F6FAF6F),
    .INIT_2B(256'h2FEF2F6FAFAFAF2F2F6FEFEF6FAF6F6F6F6FAF2F6F2F2FEFAF2F6F6FEFEF6FEF),
    .INIT_2C(256'hEF2F2FEFEFEFAF6F6F6F2F2F2FAF2FEF2FAFAF6F6FAF6FAFEFAF6FAFEF6FAFAF),
    .INIT_2D(256'hEF2F6FAFEF6FAF2FEF2FAF6F6F2FEFEFEFEF2FEF6FEF6FEFAF2F2FAF2F2F6F2F),
    .INIT_2E(256'h2F2F2FEF2F2FEF2FEF2FAF6F6FAF2FEF6F6FEF6F6FEF6F6F6FEFAF6F6F2FAFEF),
    .INIT_2F(256'h6F2FAF6F6F2F2F2F2F6F6FEF6F6FAF2F2F6F2FAF2FEF6F2F2FAFAFEF6F6FEF6F),
    .INIT_30(256'hEFEFEF2FAF2FEFAFAFAFAF2FAFAFEF2F2F2F2F6FAF2FEFEFEFAF2FEF2FAFAF2F),
    .INIT_31(256'h2F2FEF6F6FEFEF6F2FAF6FEFEFAFEF2F6F6F2F2FAF6F6F6FEFAFAFAFAF6FEFEF),
    .INIT_32(256'hAF6FAF6FEFAFEF2F2F2FAFAFAF6FAFAFEFEFEFAFEF6FAFEF2F2FAFEFAF2F6FAF),
    .INIT_33(256'hAF6FEF6FAF6F6FEF6FEFAF2FAF6F6FEF6FEF6F6F2F2F6FEFEFEFAFEF2FEFAFEF),
    .INIT_34(256'h6F2F2F6F2F2FAF2FAFAFAFEFAF2FAF6F6FAFEF6FEF2F6FAFEF2F6F6FEF2FAFAF),
    .INIT_35(256'h6F2F6FEFAFAF2FEF2FAF2F2FEF6F6F6FEF6F6FEFEF2F6F6FAFAFAFAFEF6FAFEF),
    .INIT_36(256'hAFAF2F2F2FEFEF6F2F6F6F6FAFAF2F6F2F6FAFAF2FAFAFAFEFAFAF2FAF2F2F2F),
    .INIT_37(256'hAFEF2F6FEFAF6FAFAF2F2FAFEFEF2FAFEF6FEFEFEF6FEFEFEF6FEF6F6FAF2FEF),
    .INIT_38(256'h6F6FEF6FEF2FEF6FAFEF2F6F2F6F2FEFAF2FEFAF2FEFEFEF6F2F6FEFEF2F2F2F),
    .INIT_39(256'hEF2FEFAF2FAFAFAF2FAFAF2FAFAFEF2F2F6F2F6F2FAFEFAF2F2FAF2FEF6FEF2F),
    .INIT_3A(256'hAF6FAF2F2F6F6F6F6FAF2FAF6FEFAF6FAF6F2FEF6FAFAF6F2F2FEF2FEFAFAF2F),
    .INIT_3B(256'hAF6FAFEFEF2FEFEFAF6F6F6FEF2FEFAF2FEF2FEFAFEF2FEF6FAF2F6F2F6FAF2F),
    .INIT_3C(256'hEFAF6F6FAF2FAF6F2F2F6FEF6F2FEFAF6FEF2FEFAFEFEFEF2F6F2FAFAFEFAFAF),
    .INIT_3D(256'h2F6F6F2FEF6F2F2FEF6FEFAFAFAF6FAFEFAFEFAF2FEFEFAF2F6FAF6F2FAFEFAF),
    .INIT_3E(256'hEFAF6F6FAFEFAFAFEFEF6FAFAF2F2F2F6F2F2FAFAF6FAF2F2FEFAF6F6F6F6FAF),
    .INIT_3F(256'hAFEF2FEFAF6F6FEFEFAF2FAF6FAF6F2FEFEFEFAFAFEFAF2F2F2F6F6F6F2FAFAF),
    .INIT_40(256'hAF6F6F6FAFEF2F6FEFAFAF2FEFAF6F6FAF2F6FAF6F2FEFEFEF6FAFAFAF2FEF2F),
    .INIT_41(256'hAFEF2F6F2FAF6F6F2FAF6F2F6FEF6FEF2F2FEFAF2FAF6FAF2F6F2FAFEF2F2FAF),
    .INIT_42(256'hAFEFEFAF6F6F6F6F2F6FAFAF6F2F6FAF2FEF6FAFAF6FAFAFEFEF2FEF2FEFAFAF),
    .INIT_43(256'hAFAFAFEFEF6F6F2FAFEF6F6F6FEF6FEFEF6FAFEF6FAFEF6F2FEFAFEFEF2FEF2F),
    .INIT_44(256'h2FEF2FEFAFAF6F6F6FEFAFAFEFEF2FEFEF6FAFAFAF2F2F6FAF2F2F6FEFEF2FAF),
    .INIT_45(256'h2F2FAFEF2FAFAFEF6F6FAF2FEFEF2FEFAFEF6F6FEF6F2FAF6F6F2FAFEF2FAF2F),
    .INIT_46(256'h2FEF2F6F2FEFAF6FAFEFEF2F6FEFEF2FEFAFEFAF6FEF6FAF2F2F2F2FEF6F6F6F),
    .INIT_47(256'hEF2F6F2FAF6FAFEFEF2F2FAF6FAFEF2F2F6F2F2FEF2F2FEFEFAF2F2FEF2FAF2F),
    .INIT_48(256'h2FAFAFAFEFEFEF2F6F6F2F2F2F6FEFEFEFEFAF6F2FAFAFAF6F2FAFAF2F2F6F2F),
    .INIT_49(256'hEFEF6FEFAF2F2FAF6F2FAFAFAF2F6F2F2F2FAFAFAFEF2FAF6F6F2F2FEF2FEFEF),
    .INIT_4A(256'h2F6FAF6FEFAFAFEF2FAF2FAFEFAFAF2F2F2FAF6FAF2FEF2FEFAF6FEFEF6FAF6F),
    .INIT_4B(256'hEFEF2FAFAF2FEF6FEF6F2F2FEF6FAF6FEF2FAFAF2FAF2F2F6FEF6F2F2FAFEFAF),
    .INIT_4C(256'h6F2FAFAF6F2FAFEFEF2F2F2F6F6F6FAFAFEF2F2F2FAFEF6F2F2F6FEFAFAF6F2F),
    .INIT_4D(256'h2FAF6FAFAF2F2F2FAF6F6FAFAFEF2FEFEF2F6F6F6F6FAFEF6FEFEF6FAF6F6F6F),
    .INIT_4E(256'hAF6FAF2F6FAF2FEFEFAFEFEF6FEF2FEF6F2F6FEF2FAF2F6FEFAFAFEFEF6F2FAF),
    .INIT_4F(256'hEF2FAF2FEFAF2F2FEFEF6FEFEF2F2F2F2F6F2F6F6F2FEF6FAFAFAF6FEF2FEFEF),
    .INIT_50(256'hEFAF6FAFAFAF2FEFEFEF6F6F6FEF2F2FAF6F6F2FEF6F2F2FEFAF2FEF6FEF6FAF),
    .INIT_51(256'h6FAFEFAF6F6F6FEFAF6FAFEFAFAF2FEF6F6F2F6FAF6FEF2FAFAFEF6F6F2F2F6F),
    .INIT_52(256'h2F6FAF2F6F2F2F6FAFEFAF6FAFAFEF2F6FEFEFEFAF6F6F6FEF6F6F2FEF2FEF6F),
    .INIT_53(256'h2F2F2F2F6FEF2F2FEFAF6FAF6FEFEFEF2FAFEFEFAF6FEFAF6FEF6F2F6F6F6F2F),
    .INIT_54(256'h6FEFEFAFEF2FEF6FAFAFEFEFAF6F2F6FAFAFEFAF2FAFEFEF6FEFEF2F2F6F2F2F),
    .INIT_55(256'h6F2FEFEF6FEFEF2FAF6F2FEF2FAFAF6FEF6F6FAF2FEF2FEF6F2F6F2FAF2FEFAF),
    .INIT_56(256'hEF6F6F6F2FAF6FEF2FEF6FAFEF2F6FEF2FAF6F6FAF6FEFEFAF6FAF2F2FAFEF2F),
    .INIT_57(256'hEF6F6F6FAFAFAF6F6FEFAFAF6F6FEFAF6FEFAF6F2F2F2F6FAF6FEF2F6FEFAFEF),
    .INIT_58(256'hEF2F2FAFAF2F6F2F2FAF6FEF6F2F2FEF2FAF6F2FEFAFAF2FAF6F6FAFAF6F2FEF),
    .INIT_59(256'h2FEFEFAFEF2F6F2F2FAF6FAF6F2F6FAF6FAFEF2FEF2FAFEF2FEF2FAFAFEFAF2F),
    .INIT_5A(256'h6FEFAFAFEF2FAF2F6F2F2F2F6F2F2FAFEFEFAF2FAF6F2F6F6F6FAF6F6F6FAF6F),
    .INIT_5B(256'hEFAF6F2F2F6F2F6FEFEFEF2F2F6F6FEFEF6F2F2F6FEFAFAF6FEFAFEF2F6FEF2F),
    .INIT_5C(256'hEF6F2F6FEF6F6FAF6FAFEFEF2F6F6F2F2FEFEF2FEF2F2F2FEFAF6FAF6FEFAF2F),
    .INIT_5D(256'hEF6FAFEFEFAF6F6F6FEF6FAFAF6FAFAFAFEFAFAFAF6FEF2FEF6F2F6FEFAF2FAF),
    .INIT_5E(256'h2F2FAFEFEFAF2FAFAFAFAFAF2F6FAFEF6FEF6FAFAFEF2F2F6F6F6FAFEF6F6F2F),
    .INIT_5F(256'hEFAF6FAFEF2FEF2FAFEF6F6F2FAFAF2FEFEFEFEFAFAFEFEFEF2FEFAFAFAF2F2F),
    .INIT_60(256'h2F6FAF2FAF2FAF2F2FAFAF6F6F6FEFEF2FEF6FAFEF2FEFAFEFAF2F2FAF2FEFAF),
    .INIT_61(256'h6FEF2FAF6FEFAF2F6FAFEFEF2F6F6F2F2F2FAFEF2F6FAFAF2F2FEFAFEF2F6F2F),
    .INIT_62(256'h6F6FAF2FEFEFAF2FAF6FEFAFAF2FEFAF2F2F6F6FAF6F2FAFEF6FEFAFAFEFAF2F),
    .INIT_63(256'hAFEF2FAF2F2FEF6FEF6F6F6F6FAFEFAF2F6F2FEFEF6FEF6FAFEFEF6F6F2FEF2F),
    .INIT_64(256'h2F2FAF2F6FAFAF2FAF6F2F6F6FEFEFEF2F2F2F6F2F6FAF2F2F6F2F6FAF2FAFEF),
    .INIT_65(256'h2FAFEF2FEFAFAF6FEFEFEF6F2F2F2FEFEF2F2F2FAF6F2FAFAFAFEFEF2F2FAFAF),
    .INIT_66(256'h6FEF6F2F2FAFAFAFAFAFAF2FAFEF2F6FAFEF6F6FEFAF2FAFEFAF2F2FEF6F2FEF),
    .INIT_67(256'hEFEFAF6FEF2F2F2F2FEF6FEFAF2FAF6FEFEF2F2F6FAF2FAF2FAFAF2F6FEFAFEF),
    .INIT_68(256'h6FEFEF2F6F2FEF2F2FEFAFEF6FEFAFEFAF2F6F6F2FEFEF2FEFEFEFAF6F6F6FEF),
    .INIT_69(256'hEFEF6FAF2FEF2F6F6FEF6FAF6FAFEFEFEFAF6FEFEF2FAFEF6FAF6FAF2FEFEF6F),
    .INIT_6A(256'hAFEF2F6FAF6F6FEF6F2F6F6FEFAF6F6F6F6F2F6FEFEF6FEFEF6FEF2FEF2FEF6F),
    .INIT_6B(256'hEF2F6FAFEFEF6FEFEF2F6FEF6FAF2F2FAF2F6FEFAFAFEF6F6FAFEFEFAF6F6FAF),
    .INIT_6C(256'h2F6F2F6FAFAF2FEF2FAF2F6FAFAF6FEF2FAF6FAFEF6F2F2F2F6FEF6F2FAFAFEF),
    .INIT_6D(256'hAFAF2F6FAF6F6FAFEFAF6FAF6FEFAF6FAFAFEF6F2FAFEF2F6FAFEF6F6FEF2F2F),
    .INIT_6E(256'hEFEFEF6F6F2FEF6FEF6F6FAF2FEFAFEF6FEF6FEF6F2FAFAFAFEF6F2F2F2F6F6F),
    .INIT_6F(256'h6F6FAFAFAF6FAFEF6FEFEFEF2F2F2FAF2F2FAFAFAFAFAFEF2F6F6F2F2FAF2F6F),
    .INIT_70(256'h2F6FEF2F6FAFEF2F2FEFEF6F2F2FEFAFAFAFAFAFAFEFEF6F6FAF6F2FAFAF6FAF),
    .INIT_71(256'h2F2FEFAFAFAFAF6FAF2FAFEF6F6FEF6FEFAFAFAF6F2F6F2FAFAF6F2FEFAF2FEF),
    .INIT_72(256'hEFEFEFEF6FEFAFEF2F2FEFEFEF6F6F2FEF2F6FAF2FEFEF2F2FAFEF2F2F2F2F6F),
    .INIT_73(256'hEFAFAFEFEF2F2FAF6F2F2FAFAF6F6F2FAFAFAF6FEFAF2F6FEF6F6FEFAF2FAF2F),
    .INIT_74(256'hAFAF6F6FEFAF2FAFAF6F2FEF6F6F6F2FAFEF6F2FEF6FEF2FAFAFEFEF2FEF6F6F),
    .INIT_75(256'hAFEFEF2F2FEF6F2F6F2FEF2F6F2FAF2FEF2F2F6F2FAFEF2FAFAFAF6FEFAFEF6F),
    .INIT_76(256'h6F6F2FAFEF6F2F6FEF6F2FEFAFAF2F6F6FAFEFAF6F2FAF2F6F2FEF6FEF6F6F2F),
    .INIT_77(256'hEF2F6F6FAFEFAF6FEFEF6F2F6FAFAFEFEFAFAF6FAF2F6F6F2FEF2FAF2FEFAFEF),
    .INIT_78(256'hAFEFEFEFEFEFEFEF6F6F2F2FEFAF6F2FEF2FAF6F2F2FEF2F2F6FAFAFAF2FAFAF),
    .INIT_79(256'hEFEFEF6FAFEF6F2F6F2F6F6FAFEFEF2FAFEF6FAFEFAFEF6F6F2F2FAFAFEFEF2F),
    .INIT_7A(256'h2FAFEF2F2FEFEF2FEF6FEFAF6FAFEFAFAF2FEFEFEFEF2F6FAF6FAFEF6F2F6F2F),
    .INIT_7B(256'h6F6FEFAF2FAFAF2F6FAFEF2F2F2FAFAF6F6F2FAF6F6F6F2F2F6F6FEFEF6FAF2F),
    .INIT_7C(256'h6F2FEFEFAF6FAF6F2F6F6F6F6F6F6FEFEF6F6FAF6F6F6F6FAF2F6FEFAFAF6FEF),
    .INIT_7D(256'h6F2F2F6F2F2FEFEF6FEF6FAFEFAF2FEF6F2FAFAFAFEF6FAF6FEFAF2FEFAF6F6F),
    .INIT_7E(256'hAF2FEFAF2FAF2FAFEF2F6FAFEF6FEFEF6FEFEFAF2FEFAF6F2F6F2FAF6FEF2F6F),
    .INIT_7F(256'hEF6FAFAF2F6F2F2FAF6F2F6F6FAFEFAFEFAF6F6F6F6FAFEF2F6F2FEF6FEFEFAF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0BA8918D72C566B4DD062DD4B0CE04922E41D47E878E96CFBF75B5D4BC271026),
    .INITP_01(256'hC93CB45DE9B1BFFD414A28877E3CCB4067F6A780C0C1E92EC5D863078C2A690D),
    .INITP_02(256'hCA80D6BCE972246B353928C44131C12FBD32FAFBBC9C0C6F9D419A56AF25D591),
    .INITP_03(256'h3C198FF301C48EFF7C48FB56CFBB8A2D01399823A2C7B6CF01EAC70672475650),
    .INITP_04(256'hDFFB208A0E2F3048988915A9F6E0312D7615145C0E3B28D023810775C163CD20),
    .INITP_05(256'hFCDAAEA4E0513EFDE4B18853BED9D50BA9E32DDAF2F49571A34C78F6B15F4AC0),
    .INITP_06(256'h078BBA9BCED3377E489506C6056DFAB7109F424F6D678DEC2CF91A53EFA9126C),
    .INITP_07(256'hB43EF1B28C1E9A9CF4069F5F1382D824E43048701DF6DCB7073264BA5D93C470),
    .INITP_08(256'hBCF9C38CF33F48FF54A8B5EA1A4686A60CC78F8A45BE27AA909FBB00CE047691),
    .INITP_09(256'hFB3B115D7C6D1BDAC7B82DB06C0593E7D1D0F1C90E42FC1F39E190A23133A974),
    .INITP_0A(256'hF508EFDF8149AFF8350CEF7E8D43F533C75A485E61BD227CA7BD87A37867A3E5),
    .INITP_0B(256'h27861BD9FF1068381B78EF1197CD8832595E620038E578A6C466EAAA148E9D86),
    .INITP_0C(256'hB544533FBD7E292782931480EF07EA37D18B2F4A239E927E309422C24435EB71),
    .INITP_0D(256'hBE40B97BECD452B6541BA5D7ADD30B670CDF686F0A9FD8601A3209EC76AC1A05),
    .INITP_0E(256'h9D9319586964EAA080DFB094C80A0B5984C8D435004BE5FE0490848111A3FBA5),
    .INITP_0F(256'hF5D40E6FC0A1C63D05AB2630B0E0754C7E2F513959CC35524846F2E84CCF85D5),
    .INIT_00(256'hF6219227837033703FF1BC8B602FBE86593BEF36B0715FCB46C2497847D4A4CE),
    .INIT_01(256'h7EE6E67B2A67ECE716306181327080E0CC46BB6ED98D49F492A2366A9742489B),
    .INIT_02(256'hE04827736BABF00EA53911193F567F08E599DC4388E666D8066013BBD778AEA2),
    .INIT_03(256'h0C1E009F8D7C735F5D1CB986FED6E843E26133F06854187AB9D645BED4BB425D),
    .INIT_04(256'h779B6E6A4A3D29F191837614D4456DD7CE17BEF1F06D939578E8AA98DE3C00ED),
    .INIT_05(256'h38C6A726829FAA4DE530FC34470386AD1366C889E834C78841FAB057557FAA4B),
    .INIT_06(256'hF867D7542D731FB21D169A39847303A8F6217B3DC640BE42E2D811061F379C86),
    .INIT_07(256'h1BC6044EF9DAB697750758878D9E608973CF541C80F1360442958388135EECF5),
    .INIT_08(256'h523EDC6678E7150C97415674FC1A93F23B21A1E4A25FFEA9AA3DC0B9F62EFA1A),
    .INIT_09(256'h823CBB45542CBE0F77C7A81AD0F5F5540D48D41555D286C4A5085026A88157E0),
    .INIT_0A(256'h91804625180225A6B27D52BBF0C2A3B25F4AB678D3C5A16F86F5E6EE5F589147),
    .INIT_0B(256'h9E8DC56D3B3F671A59309BE6F39BB4E3459A5AEE58ED3FB54DD95BEF133C5E1A),
    .INIT_0C(256'h7FCB527842432EA73449423AFB89D6BB39773AD359F14F820857E33CF57B91FB),
    .INIT_0D(256'hB442CB0465066F4A7DF43EA96CA07AD28C6EA496838CA0B95AEAD04B7E0A57BD),
    .INIT_0E(256'h9762A7AB2F4F5B11B0240CC5FE6093FD27A4B0C980E3A2EE5D2324EBA45CC21C),
    .INIT_0F(256'h5477B412FB18D19B265EEB404FEBBC564275C09336BAD458E37D944BA9124212),
    .INIT_10(256'hC251E030FEBF245E69F94E7980411A018CA7DF818F816FA75FC6B004F662F00C),
    .INIT_11(256'h5945D5CB999C156B3173B1C8D5A5114771B3BB234993A81CB37E490B8E60D678),
    .INIT_12(256'h3991DCB8D0B227542018FB8252DC3C26C094A213E8FC999F6088957B293DBB0A),
    .INIT_13(256'hC8131FEB03BB55C9C3018E56A8E422C079D8CA820D66DD8E3FE03EFD7143A816),
    .INIT_14(256'h067711EBAEAE5737F4070BF655456DBDDE02174E0672CE1C975CE2C9D84BF2DF),
    .INIT_15(256'h446F04EE2168FFC67079CF435EFE290C1481AC5C9EC090A9B5DFD30339C3854F),
    .INIT_16(256'hDE623E25D77B571542764717DD76492A74C011C58516390FF4F337A3237C533C),
    .INIT_17(256'hF3DF6E8C10FDF3ED39B687A2A76B9430791EEE0468D09BD20D9835A642785822),
    .INIT_18(256'h94E5E129F5D0CE858830CB4254B51FA1EF9A5A3CF56F49455420B25571791E23),
    .INIT_19(256'hC5E804063DC35AF99C5A4392E3E43217273DDB9E0750B9938C07789610A0C7CF),
    .INIT_1A(256'hA6AE721A30E404CB0F3B18BAD98B713871AD69BB8662C9E78688F29067BF880F),
    .INIT_1B(256'hCB732858697044B3092D38D1E6D0A0AB83C171C02124E7AC831902C33AB90C8D),
    .INIT_1C(256'h75A99D20A19867996D4CEDE5F7519C55438A85855EB679586690B6DF9CC9A9D9),
    .INIT_1D(256'hBEFBD39A676E1F7FB038585044DCC31A1F80CC024041B6E57F48CC70AA0F8648),
    .INIT_1E(256'h5F572C02F5A3E0C3B94830AAE5D94043322C31C2E0E2BC436FB0890D35D70866),
    .INIT_1F(256'hDC2F38D2B2F702C987B34461B225E481E274CF42460C44AF9B645FE4270CCCDA),
    .INIT_20(256'h5B9984629DEF02E4BA3E8EF90E64E1B69AA17C5858DFE781B9AED5ACD880678D),
    .INIT_21(256'hFA5500745D5C362931FA72E0216CCC24E81F76D7A7B5D563E0C5A1CECE845E65),
    .INIT_22(256'h89E4EEFB6F59B74E6BC87B6DD956E279533AF9E525F730FF21358469001D7F00),
    .INIT_23(256'h931BC787B22244C1AC686F5D64EF0F702E64AEA16CCEF2E74CA6361918DEC9E6),
    .INIT_24(256'h3F7009A045850517E6D4CE8B569BDCE1590CDD98D0BE3FA53F6E6FE01C6A0EA2),
    .INIT_25(256'h3EFC3E88915A889482494823A15EA86DA880B54F69556C8AB08391E7823486AB),
    .INIT_26(256'hA213FBFC23AE96A4AFA9F916505897DFA7B55BBD03C307E27BFC0AF37877BCFB),
    .INIT_27(256'hC787D69A954B2E0E0F017A7B74D0F5224D2C6A9B70F6889C2C8C90F2D2BAA9FC),
    .INIT_28(256'hF697CF2A4F820C450471D3626398EC2A1BE4C618BFB8C2E35924BB871FACD8F5),
    .INIT_29(256'h7FD4E3B309301CBCAA80DB0CC431028300AB1954BF78B1DE8C95B2FD4A495134),
    .INIT_2A(256'h69CFC2F13A13F1A5FBCFA81F42864B357C34F1048855C1876E10197126540AE8),
    .INIT_2B(256'h4FDA5D1C6DCD45BCD1BB1B6679D620B755D62EDF377457E54EF8FF8BF9987777),
    .INIT_2C(256'hD6446380D19D578F6BE26817EC77C5BE274DF62610B40716C51C6B842DCD83C1),
    .INIT_2D(256'hAC26BDC45D9CA94883F6A76CEF638A018043A8BA9A7832B60CAE8BCAE9B5B174),
    .INIT_2E(256'h249F8F52020B81E49F32118F8FDAAF4D95674A2700EEB7B960B787105CBAD88B),
    .INIT_2F(256'h310C7866A8FC4EB6FCD2EE7A4E16B490A3E88C9B60E9CBB00CE6F4DA14E9A0A2),
    .INIT_30(256'h8A5C0797BE5133F6C406E421917729DCE30610E300BAC11E701B02095709E6E8),
    .INIT_31(256'h37AD4D2EE588EFFC129B733DB88902CF3253E15ED6A39BCFFCD2B028502AAC59),
    .INIT_32(256'h957CFA26F62E2C58BB150B415E4072A41D8919AFA5F14C9222D5612B9EC4F0F3),
    .INIT_33(256'hAD50E237313F879FF5EAB59D97858C3AC791A21088A3669D4A0D8C1FEB8EDC47),
    .INIT_34(256'h36DAD2D439CF1C561FD0C86559364E9378FC0D4D2EB7CE965AB0702BBDF85210),
    .INIT_35(256'h8D83FD350FA3F407116A87CD66FBE3831544752D993B22224317AC0F760E073A),
    .INIT_36(256'hBB8B36B07C6ECBAD020245CC80A221428B937580A5FA71560C3BBAB7B4472D33),
    .INIT_37(256'h6AF83978E4AC507DB733CBD23505A663899F2D590218331F213AE196152F4DE8),
    .INIT_38(256'h8A28AC5CAB1D93F4FADBF9CB517EC6AC12CBEA2F3C8B961E08C86773E7A184AB),
    .INIT_39(256'h42F3D9B8418D8F9AECD4C4F22A0E98DDBB45E9E51A6D35ED7FF972C900DC2279),
    .INIT_3A(256'h1F466B83A980789EEE8BB4F18AA5D3ED40FCECD03A8AF55241EA855A6246484C),
    .INIT_3B(256'h7A2195B9260E6AD57CBB2852FDFA70A792289D7F5D9384F04DD4260D0175DFCF),
    .INIT_3C(256'hDF88700C1C02417B516957C60B78E666864C182BD3CE15126A01FC760A274216),
    .INIT_3D(256'h8B5BC2602B73A4324C3BDD319AC01B2BC071451BF65AD68FF11439EF1016CC6B),
    .INIT_3E(256'h9C6E0235051B4E428194B58634BCF4086EF2BD63AF1B03BBC8606ED6829772E6),
    .INIT_3F(256'h8C7BD1FD557D9B5BF790D1222F5239806F8625401AAF5B34D23BF99277596B3C),
    .INIT_40(256'h3771FF841149346C0729D5FE3EB6FDF9BDF8BB90E53DFB68706CCDACE2C78246),
    .INIT_41(256'hE80078C41C27644FACB2FA98923CE4F5045D5A923BD9F4F38402D5B7D5C6B77A),
    .INIT_42(256'hB56E2D74C8CF5F58C87FE8139D844D74396990D5B5D87E375F5E23DA4C459032),
    .INIT_43(256'hD9D208F07307CE9D8F175C1CA41ED9C56E0325362ABBFAC21049C17A2CFE552F),
    .INIT_44(256'hFE576F88DC50AAA6630872671F46C0EF6C6C15AB37577FF1B6437A16753507E7),
    .INIT_45(256'h57E5E4891B15F4F19C8D77E7F61EC2D8D45CB1A5C8089B90406C2367421ACA7B),
    .INIT_46(256'h6AEB23E17B537A864BA8353735D73DC29A2BFD81CC5BF7F64256E6B9D57E5D37),
    .INIT_47(256'h2DA4B2CD63CD9C29F1C857EF3BE91DB2792311AE0AA67E75756125D171EACD8A),
    .INIT_48(256'hAAD7AEAFC6A8999069F34E4118681DA7CBAD289F5983319E8F0776A9C11A833F),
    .INIT_49(256'h55A8F3FD2F74DE567327B42A6BF3170C665D3056C2498E8F9D0F4301198EB933),
    .INIT_4A(256'h591ED918165C2A9C05B7A5FDDA423BFD63C5207E5E8633B11C02C349476443B7),
    .INIT_4B(256'hB6F2C35D572F792EAAA7326716330FCD12B1CB816C13342F85FD5B2292DFA027),
    .INIT_4C(256'h6AAC6A1503AEA3F3ECE6740E00614BB2A9A81802535D14B5A9DCF09A26627192),
    .INIT_4D(256'h589BE56F649A13592253B9E040CCEB1AF1C40FF66162207381E5FECF72090927),
    .INIT_4E(256'h40523A05379177B7EAB9A81130EF470DE58E2171511C03F6F4C9DDB753BE73D7),
    .INIT_4F(256'hA613369C847A3379D5CC6DAA518747CCA11A4AA23C3EDF0451191B9823A8E1C2),
    .INIT_50(256'h4BFD76A1A732A24BAF9F29DCA9846E4AB29CCCA35714648AC03058CDE8ADF0EF),
    .INIT_51(256'h900FA4D718FBFF74971C69D7FDD0E665CDC3FE3799D495CA811A41BE80E75835),
    .INIT_52(256'h1D1BA735786B962187E24490185FBCAA7232A939E7CCD1180D6346A928FA7A54),
    .INIT_53(256'h9EDEF157335D15496E2643E1E90FC373178EBBB4B574E504EEAD02508EF022C2),
    .INIT_54(256'hF32E8CB738ED2E76B60F71D8C3FC4CA2DBD18DE475E5F42406B20B4EEEE3E9D5),
    .INIT_55(256'h68D8FCD890B6A7ED04164AA57DA62146BDBCD2D0DDFC55129B29D1C6F619D802),
    .INIT_56(256'h4B79D5FA8F235ECF810F27E391EF88DA8A57257E46E9D3426B05892AF327B963),
    .INIT_57(256'h22A77AF849D93CF37913F5C22C4B562E52232366365715D77C0285B980DDF8EF),
    .INIT_58(256'hBF2F1B8A850AA5CDA15598C8D81134CC5E2137BD98C79CD320B71FE436922913),
    .INIT_59(256'hAD2DB640656FBFE1405E1A54E3F7121F8EF3FC41A513611BEAF91E460B3B2A14),
    .INIT_5A(256'hC0B7D0332A443CB9F6514B9330757747C16387999FFF9C1827B173A309E0F5BC),
    .INIT_5B(256'h11A67B4FB3E61F0AC1CCC64D2A3510C3FC390F66A46705DCC7A47681C37B250F),
    .INIT_5C(256'h7D4300CF2F98ABCEFA33B69834F1AD052AB6D60E3EE595CE8B2905928B837968),
    .INIT_5D(256'h0A1ECD0513CFC36A0DE594D8B4D7597860FA377B329E0CEB6702FE6AE7B51B34),
    .INIT_5E(256'h272CE3701598A655FF46C118FCCB10B9EE218723AC8748CCEB6197BD61395E7B),
    .INIT_5F(256'h0B287B57E768D40604FE445522FCA3E8E79D2CB84240D9CA4DB9F9F8AA531597),
    .INIT_60(256'hF11C088D4C3EAEDF0068FE063963AD777A509815CB8D291853D431965D839FDC),
    .INIT_61(256'h89779F7681EAF11B38D82082135256EAAFA8C8486905EB1F77C9C4994FEB8F6B),
    .INIT_62(256'h008C357C8F4324E30D7FFC3A4C4BAF879070C2977BA8BBAA6F38AA6936BFF901),
    .INIT_63(256'hEAE1E02548155D44C866A195F0B4D22BA9C4C339300A618A63F419609C0CF3EB),
    .INIT_64(256'hE179DAB7D655DB0A5D9076C8261A875452C2056E2FECC7D2F12E9CBC9B104FED),
    .INIT_65(256'h33383AB22B2CB3E3F3FC2581B798BE883816639CB0A50013E4632821F27183AC),
    .INIT_66(256'h2CA7572F81DBA38806950FFF93350C33922CCAB74BC832AFB6B130211F305F06),
    .INIT_67(256'hC5C17203A8D3C487D7572CE7474F234FF44118355DC3F7E50E4044894D9B0F7C),
    .INIT_68(256'h7FCEBF5087BF427166C4DB33C144AAA7598AF7EAB570451227C564F8F32D645D),
    .INIT_69(256'hB11C1B4A75F5EC6990D0A192B4C2FEF4FB0FFABF6F6E9516ED86DE3C27713864),
    .INIT_6A(256'hB73D3B9B0FA7FA1593CC2B5AB1FCE316126C7F76E647BFA0A6EA6C5F64FEAFA2),
    .INIT_6B(256'h5628F5DCCEF8748A7B458A6C32FA1B082B9E24728B6BE6619D5E2C4C2B0D1549),
    .INIT_6C(256'h90A11405ECD88D44E23BE5CD8D0EEE1040D6F95A6ED89B5B74473D5B31BF041B),
    .INIT_6D(256'h2767DFAB07DCEEB933D5A698D897E0010290E066C3EBB17BD60018239CDAF0FF),
    .INIT_6E(256'h6E71CD2FCC08773BDA009080BAAD81893AB6E75BA603B549B0D0945AADF76F1F),
    .INIT_6F(256'hD1E6DDC06C0A383E5B5DDCFF260ED9BB5C78B7BFD5FCCE5E96CA7A89AA1EDC75),
    .INIT_70(256'h711454B1003BA3660097047ECA700A939D000E5A31775F0BA807A88A538EA2A0),
    .INIT_71(256'h2CD17BFACF2E76DBEB691188B802D4F2BB81C3D65D17FF712FF6D20C669360DA),
    .INIT_72(256'h218A90BF8971DDFACA3A5B644D050AB16E7C97EB5E2A9BDEB096577B284262CF),
    .INIT_73(256'h6E485F37A43E122B8CB6AAF6782261C15E47A20297B46F01744EA4827FF053AC),
    .INIT_74(256'h10A25E325A13D5CBD648FF28DFD0B76A459F7CA49D573576B3F5914F6E6BF97A),
    .INIT_75(256'hB5308BEC9C6379B339BE967E3B6B5081B6F1F1FC815CC3A8CB5E25535F540A32),
    .INIT_76(256'h3DD8BFD0D31B09D077BAB2ABB2BC9DA9C512768E24BD32E1EA4081576B892D02),
    .INIT_77(256'h89EA70F9BF7A3C57A03BDC591E1A62D610C91189CAC4F70204551B0B743F2460),
    .INIT_78(256'h8A636895208A70FE116E2236197680707699C3D31A376CD03158959F4EE20252),
    .INIT_79(256'h3BAA49BCB201D2150B44BC801A42A159F779CAA49C43BEBDC484A05EB626FBEB),
    .INIT_7A(256'h7836135920010AFFB772411DBA6463303BBF942676CF5053FBC33CF3510EDA7F),
    .INIT_7B(256'h34DF7CAFD6BF1E4C5BE49D8E598456ADE4FA68B4FB0D2EF0E8976B9E19001128),
    .INIT_7C(256'h618326D773712A216E671AA981DA5ACF0EE66B5CA26989E5139D7AD11507E95B),
    .INIT_7D(256'hEBBC314CBBF9F8C55B6231E2F27DCA33E8AF3EE81AD6B5782FEDDC8BEDB21B35),
    .INIT_7E(256'h073FBCED3E8BC0222CCF57A57F1761FA75F95BF04064EBB147B4B127F29BCAA1),
    .INIT_7F(256'h80792CA83419C196BBE0C7B6E8BA85A4A22706E8C7FDE31ADCFB97EEF59302AF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hE2136059FE8FC596EA28C95DFB6948E325362A272226D1EBC6FA85183EC4770C),
    .INITP_01(256'h5EAB944913803EBB2E1740FFCFCDB1C30C29A5E7518145169A76EB2E02C20C50),
    .INITP_02(256'h53772809BC9CEF80E233D1E691229696E2C0EC384FFC4FB26DD8AF80C449FF7E),
    .INITP_03(256'h4A310B411791D76BE12BF45E1451FC99DB2F2C682BCD3C061E8475FF8BC63DE0),
    .INITP_04(256'hA1AED8AE4D7BDBE01CD900302337550B9897A15C331D43573EB6C0701EBB263E),
    .INITP_05(256'hA5B80FFB824C047B98CE3150A539EEFF52B0E16BAA7F39E50285FA69BE96CBCD),
    .INITP_06(256'h92F514F9156A32E7652995DE585D10034B04AA471B9726FF703B8BAC920B30F4),
    .INITP_07(256'hB398BF2B8A06B7C3012417FBFDD8606426A0F0D160F0D5DD0E40B0F69FD1680F),
    .INITP_08(256'hA400CFEF469468B6BED96973CD90FE058C0C5BE5157A5D6BB67CCA3A73D2DCCD),
    .INITP_09(256'hF184A4325BD06BB7F52995F9FB1D8ABB9811E978CCBE8A23EC49BB7F89D2C908),
    .INITP_0A(256'h6867E47C7AA3DE6DF8D9F2543BF829597B011EE606904D7D22677E75D0AC68E0),
    .INITP_0B(256'h3D2D970E37DEF608F5B9E640CF41233572AA287CFED10A0416C2838185E3BC10),
    .INITP_0C(256'hA92A68DBDE4526E99654549B9B577838C016A844C9D56C56D97E166A21FCD9E1),
    .INITP_0D(256'hCE53BF2688D88C3A183B19ED9F196742A1840E4B277F3A5B79A6055914D7D479),
    .INITP_0E(256'hE27EE77337D2D83A351E59441AAF97C6C8DE8D8498444720B73946F792783660),
    .INITP_0F(256'hD14919911E68AE44CAB4CA5AF09266E730FE9E00F7D652A3EEF01A84E128FF14),
    .INIT_00(256'h616AC9966F5D9E8F4DA576847FEA308834C8FC0A62F596AECE2FC05E7526E458),
    .INIT_01(256'h5BD3C1162B76569960DED145ACB493660AC2EB1154157772C0DB706832781A08),
    .INIT_02(256'h6EB6F8A10CAAF2D687B183DB37B9632022EAD56D0E5B95012FE19109018FCF27),
    .INIT_03(256'h8483FB0BC1A815C0FE082F427A60945044A61627E732ACF5B96B8E0ABA5B92DF),
    .INIT_04(256'hE464ED5CD0475F12713E89AD0D2B5B35D3C8CE6772D679BD9DF423099E6EC93B),
    .INIT_05(256'h023B119745FE77761EE88DFC25B6E9A90971B82F0A8C8E6323F9412B5CBE0EC1),
    .INIT_06(256'h1E7CD52226AB33BC937EDB30681FDCE0337E9C35286B28891A1B80F145BF5368),
    .INIT_07(256'h00E25D8612F79778BDF21AD841FD5E59E2871B94DE1AA61D35C3FAE14417D41F),
    .INIT_08(256'h7E98F138EFC0FAB8D0B1D303134FFC91D2257263F260F72FA3B76AC76447B071),
    .INIT_09(256'hCA38E0EC354681BB9D312494C6567B5939FFEF8513D578FCF2355851C7D89E0B),
    .INIT_0A(256'hD95FFAB7A4E2067B7A480BACBC156E8D73E39BFBA12C1AFD29AC512F0E1E6ADD),
    .INIT_0B(256'h95C3A4DF068CC5528A84381591441DA83801E822C496E99F878F8A0AFC4CE378),
    .INIT_0C(256'h04B1ED8C73DE21D6631188AD4D7440E2C239BE5347CD421DF5F9F815782B82BC),
    .INIT_0D(256'hA6C0D6C52A776D3231D4D7F002F8BC51248DCD646A024541C099DD917636E285),
    .INIT_0E(256'h3CD3706366FC1E1AEAA11F026CDEC8E0E317763C1BB814F6A08D65D22AB0F880),
    .INIT_0F(256'h16FD22092D7790166456903485D3FE5F3EE1104BB4852F01634320B7E4B333C9),
    .INIT_10(256'h14E4F7D22DF8B70CF982C4B63C002CD7972B81E05DED42928692D516D24AC005),
    .INIT_11(256'h5ABB64B7ADF8222B05A615E9827849FBAFFE0458A635DBF05DC1858A9AF71420),
    .INIT_12(256'hFFFE0BAD3A2785AA789A04CDB707975E1DF9343EB97F1D4CB5E25392E2E52F09),
    .INIT_13(256'h6C1E7963EFC1C0A3B5F2B2C2BE27B5996EB99DB3EB874C542A947275A299137F),
    .INIT_14(256'hFDB77C7D4781D64FC8CFAB142837247A7C546478B6F8CE1F095249D7DABBF65A),
    .INIT_15(256'h332766B9025F1A3B1A89D9D58D811C1A3A80F702A19576E41AA783A6258683A2),
    .INIT_16(256'hC8C73C257338C84CF0C5E47C9B1E64767D875D3A65A64EB87FD88277B0B7DC0D),
    .INIT_17(256'hD6BEE9345A7B24E90E0FE5B25DEB5F7AC132DB8BBF8018346E0C626DC7EDE70C),
    .INIT_18(256'h8A4FC019DE6461C100A44A709F5CC941B5CB42685B3A8D205CE41D81A76430D9),
    .INIT_19(256'hBC3C4032D2E532031727DFDCB447711E7AF22F58245A0611192381E810BAB733),
    .INIT_1A(256'hF994BEB1DC152E45978515CDA4301846F516F57B1D9A8DA36DFC038761BA2EF5),
    .INIT_1B(256'h2311B26CA29230385AEADAFB223B111D7F262D08413F0B312E30D269B216BB43),
    .INIT_1C(256'hED3A423031DC12BD5B2CB42677537EFD74CC0652ECEE2F4D6C7630A01E221CA7),
    .INIT_1D(256'h77617C7292544AF04746FE7936DCFEEE9F6B9283907BE6E48FB891D5ED711CDE),
    .INIT_1E(256'h801F721A4EE0E7027DECDDBBA58688BD378E9A8B39754ACA3A17286FC93E511E),
    .INIT_1F(256'hF0A15C21F5DA25419479DFAC6BF4B6A63CF3D8CB37F723C95816FC13DB0182DB),
    .INIT_20(256'h6BB6D34E0AC9C1F309FC18938E724F13F022B4E7D9AC221B3A373E75AFDC9DA3),
    .INIT_21(256'h167E83C756D0C0077B3D5439B76E4EEA46E6F13E8C47068F42D6A5D04D702F68),
    .INIT_22(256'h368EF1B1AE3EF48987D5E44546E940529AD8BD8FBB7CD4CBABBFFC5EE1813B88),
    .INIT_23(256'hDBAB926C1EE19A787CB43E1DA74CCBCEAC6D70E4F50B61D5E31E135E899040D4),
    .INIT_24(256'hCA72E313DCD078E28E7EE4FF332D7B956A631EA520769FBC6D8D0F49C551683F),
    .INIT_25(256'h6C30E5012CB32BC58F04F16D0C3E83EB4032D6F34CCF9067A9A26CD2B3CB6470),
    .INIT_26(256'h136BBA6A36521BF366BB9AC8544478128AF308B620C7DD1F3AB3FF99347FCB1F),
    .INIT_27(256'hD90C1DD4D4D3C1E6BBD08BAEF2041C93D56CB9F09DAF4A4FB760E91E20892D9C),
    .INIT_28(256'h791108AE9805C596033620AE23307AEA9A9B33A2D24D82BC015210DB33E8C3CA),
    .INIT_29(256'h3AB5BD0F29CDEE55E83D6AB58E28850D8E7328C7C7E17807D2B871283D5A829A),
    .INIT_2A(256'hA93F0C80E6C264EA4DE456D86817C798FA4807FFA1630E118C42D602B0131403),
    .INIT_2B(256'hF5FC365F72192870DD231034D9686CD4F7A653275A623D427408C1AFF61F4DA4),
    .INIT_2C(256'hD5E1865BEBEA03F5CA4C445CFC44E788E942DDB2B5461EDE873FAD7CEACAAF14),
    .INIT_2D(256'h59AA8B86F2E5C798B63A496DE39C11810A415883E8C5693C14FFF1227DD32054),
    .INIT_2E(256'h7C22E2363095B406DACDA552A94EA08FCB2B274F48E05D3E2B94446B2E16AD9C),
    .INIT_2F(256'hE57D64055506AB91DB4A13C66F25B9054721EB6EE5AC857A323A9687ABBAB8B8),
    .INIT_30(256'h68DD4DDE4FB036ED309BDD9DEE9BFBF23198A842C58B6135E99B4933006C8F94),
    .INIT_31(256'hB81B79CB0311268C887D8758A6C7E13BCFC64AE9C481BB31B30D11EA56155BC9),
    .INIT_32(256'h9872DAE7D2DDCF072BCE02CE87940822748FEB6584A381633735F748B440D884),
    .INIT_33(256'h8BD14961B80CBA7FF2D766D9F6552F12D6D03AB994AEB5CBEABD5C55D5FCB83D),
    .INIT_34(256'hE8640BA0DD7767CC90C99DF49D8BDF657399187A5C65C26602E7E3FE46EB9603),
    .INIT_35(256'h47EFECEAEF7733BCA836ED8B8FAD4E37DF4C7D32816454D574BCDD53363AD951),
    .INIT_36(256'h6DD130EC5728A2F25E9FF9FC8766C54B34BB86FAC679E49131B9BB87AD2DD06C),
    .INIT_37(256'hAB909E5B80FE3D185F1635DD084F46CE527758D663F78E8411F26E29520CEC2C),
    .INIT_38(256'hEB634E5A62D0A27A0A7AE32211F746E65C8EFE2B8D16ABAC16EC7CD806D94BE3),
    .INIT_39(256'h10809C5A2ED91879E7810F36F9C4BC5DB75246E773FD63E89505B30FA121F9A3),
    .INIT_3A(256'hC8C9C3BCD37EAD8855136A0F95FC6EAA5CAF3583BA28D4C2E6E8608DF5BA32BA),
    .INIT_3B(256'hA1F8D29A44E0351478168A3ECD3F0A154CF22F116D65B6F33D11986622D9F7E4),
    .INIT_3C(256'hE80F94353C005BCFB664CB3D9602BCF1FBF6CFF640E75D1A6167BBF9A096CD1D),
    .INIT_3D(256'h20B621D7625E064AFDE4B3920B023EC9FB2EFB6201FDEB655E9441817079654E),
    .INIT_3E(256'hA63313CD67D5426832322115D25EC0DB80DED652E70272084167EB07140F4F70),
    .INIT_3F(256'h1BF8093617289EEB65701C0929F93A35F81BCDF8F4FCA1D5BB2086E2B46CA223),
    .INIT_40(256'h6B78329D751C84F62A6E9913D1334FD1D105CF082E8FD4F61E74CC9D5366CB61),
    .INIT_41(256'h50BAF6C85173E17F0BB290A02228DEB2D612CF813EED206D79BEA535591BCBB6),
    .INIT_42(256'hD9ED2B033417F6B9DD5046C90F953366662007E33A8D3632BDB5CC7ABB8CCF18),
    .INIT_43(256'hCA35B07986C14E38F5E463276EE8A2EB916B8B89675567FA31BF24A194AEEBCC),
    .INIT_44(256'h42DF70C18261AB2B7EE7F6B185FEFB01867A462F943D77F685C521860BE97888),
    .INIT_45(256'h9DF5A8BAE5E2C1169CC7205D8A179691D20DB6C807A0BA08CA605A7090CF64B4),
    .INIT_46(256'h5FBA43C1F8ECFE4C297A67CEA4490BA37E931A3C33B083AB08DA22A36CBAA671),
    .INIT_47(256'h0EAC158736913F98C333F5E65770D7BF40071C2D9CCBD91A264D0F17F18106CE),
    .INIT_48(256'hDC56924429E80411DF7D9733FDAA3B9DAA036CFA84960A6E98DB32079800BCB2),
    .INIT_49(256'hB33A7062BA3E69355C8746B650321570335BF0C30C642ED4A1CC4176CBF8C9E7),
    .INIT_4A(256'hD58EF9E623116DDC94D5F9059974F311EBDBE92D90CABFA9D5F3CCBEF4E715E9),
    .INIT_4B(256'h5ABA7B073A2E9FE9B7316B8874527DA6BB5FC424172FB0B04AF7C7306FF028CB),
    .INIT_4C(256'hD07F763291294434F3DC6163E29F2B2BAE8579856665E412D3D43EBB8E3A37AD),
    .INIT_4D(256'h74D4A20B4EDAA43FD8FB4DB0AC6CBBD01E0920800695F061176A4B6BC12DD83E),
    .INIT_4E(256'h3BAE6FA83548CA44723F226AFD9216A65F21ABCE43448949AA53BA5E38C83C29),
    .INIT_4F(256'hFA5C058E7415C2DCA5932890B3FCE6F3DEBA6D081FB09E871F71F02CFFD5D488),
    .INIT_50(256'h3FD16FFA0F06535F6198023AA44DBC6ECA5CC3821D6A31C18A16595A47457D9B),
    .INIT_51(256'hFDE4B958975E0294F086CAA2B2A38A584AF461E8049424863C430F550E52B793),
    .INIT_52(256'hC878D84B7AB7A2E1C446C9C010E352CE13ED981906C7344759F77B3C58837718),
    .INIT_53(256'hC5F4EFF4A7BAAC891FA8F7968ABD7B31AEA576D06CDCE8AF97F8014EDECD8AED),
    .INIT_54(256'h5741D57C46A0144E5AB96A6BD292A1C19451BDA3BEF0BD72215360BFE55E863A),
    .INIT_55(256'h6BDFE9D64BC6E11DB4A98A389ED2A249A3116D6E2F17D54517E897DB1EE31676),
    .INIT_56(256'h4DB106C78415CC1064680A24D9AE8E9548D43EE61453FDCFD4012294CDDB8146),
    .INIT_57(256'hF25145991E8CD10C5A1895E7B8687C13E78D1BFB4036A99665D0CD929BCD575F),
    .INIT_58(256'h46E2B6DE0188A255E89D161986DF06025B24495AB10F49AF951C08CDD2EC31F9),
    .INIT_59(256'h99BE3679E2AAE2335575F28449DAD4B17C800AE9F5CC0AE65856E8D9F8BC1731),
    .INIT_5A(256'h15F598DADA7920BC6BD340031CA46BDDD769F10B44DEECFF2A764ABC7D476FF8),
    .INIT_5B(256'hC85599B4F2B842DBB3BEE5D06C38FB03AF59BC2E4C435570C0A08AFC45C78FFA),
    .INIT_5C(256'hB693649A568F1C0A7A84875DBFA37DE9BC7AAF41653F5B84C0E7D26CBEF5F141),
    .INIT_5D(256'hEDDAFE23D842F627064EF1087AB325DE32A73540CB6501DE5DE0CE1E275FFA96),
    .INIT_5E(256'h46478EB37285BADA65080FACED2D3289ABE91F58C3600BB65EC1FD83D4269491),
    .INIT_5F(256'h714BBA95B92E705E936C7E450E76A31820013D5EC71DFF49AEEB574F6E4158E4),
    .INIT_60(256'h7CC3172A7D7783042C2CC460A717BA0A474C12B2AE0481140492F0F9C8696486),
    .INIT_61(256'hB451B24D1BBFFF0C3700BC5AF221A7E206B9354E9A1CC9DE635120343ABB93E0),
    .INIT_62(256'hC6FC853ABD04E2EBFE73CFC1E34B7AF0362E612CD335B97CA8BC64F200AA0445),
    .INIT_63(256'h78C955D4E77B78674F5653D2CB79A6955475199B2B6AB1496D2C44134C6B1F3D),
    .INIT_64(256'hBF89C9CD41C9A46DAF99FD1E651E6523685F54882E256F5C1B2B7B74F5824888),
    .INIT_65(256'h56B1ED9B0C5B031271F23C54C7764C1E7F8228DFE656AB6B35CACF8D8EF8BF04),
    .INIT_66(256'hE1F5121336E05DBFB228325BE579C52CBDE434B4F0F4405943BEC3C4B9BF2148),
    .INIT_67(256'h7CC04E58C89BBA205C3D160E760D9E46C71F4C8D373C99100DAF62FC2FDB0F81),
    .INIT_68(256'h6536FDB0B72ED6DC9BD217CE52BAD5BD26D7B3D3B8A5351CF6C3EA6156782A5D),
    .INIT_69(256'hF0BABB2068A088D81F2B53057DB783B76F2AEF1AA5FFE5BABAA32D2CD8DCF9A7),
    .INIT_6A(256'h452060F9FB23076C1DB4765D3A928B064324846751FD9C17B25570F59A8784F9),
    .INIT_6B(256'h8DD79DF12190B7CB7B1CBFD45EFD8C262958DBDA1EBC4860E7C8BF4A3DFBBAD7),
    .INIT_6C(256'h423A21C98552A11DC88B977D86A657F0D821EEEE5F3936D8CA907C3D9DB0CE57),
    .INIT_6D(256'hD24A5716E5AF3946B74A70ADE4D94E532177C7C4831FF1BE68B2B4FD969DD49C),
    .INIT_6E(256'hE19804BF4F35FF9108F5D052E667ED6C6640670E1AEE0FD01AEE8AF68E1FD532),
    .INIT_6F(256'hE299FEB538F8356BFAA75115EE3E2B2F6F7F3A4BF2E93720AB7F865A317A7274),
    .INIT_70(256'h4513B3E11C9454166555CD1E84A44A758341C445CB376236B3395E5AFE19CA21),
    .INIT_71(256'hB97472F9E431DBC698DE2BDB074151A1CFD39AB0791BD3F79146D59A2D76F81B),
    .INIT_72(256'h04D4CA549C65934678744DD2C463FBA8B44CD30ACA0AD7AAD8A050BF7956532A),
    .INIT_73(256'h0CABC2E487DF61A9BB15E2F593B7D80CD94A1C5A156C6999D5EC1C29F8895A82),
    .INIT_74(256'h9DD472AAEA863B51AF8FFF1B75E00714A38CC10F5EBE3BCA573DB98895F59953),
    .INIT_75(256'h5F2CE3045ABFD6BA60CBBC3714AE9F5A6A2617D76CB8B60A1CB8630DE5996326),
    .INIT_76(256'h130859032DFC975CCA9FDB915714E21DBDB4E942E7F81084808CCD9D0BF7868C),
    .INIT_77(256'h78092BAAC0F73468F283A4EFD6562CB7868FD186652572B8D68BA1EF81099B73),
    .INIT_78(256'h1FD587DDB61CC0DF7A3B859769E695205BC6C8FE6C2BC48968EA8A8E181A70E8),
    .INIT_79(256'hB80CD7F52BF4EA9872017C21A88ED8DB6CC7C88050E2FEB90CF34BB333750DD5),
    .INIT_7A(256'h67709A570B707129A9BD7138E6FEA844E47C29AF01A82B89E477EA0E8D371C1D),
    .INIT_7B(256'hB530C176931B4110F9D636C1198A6463EBE9584937FD653BA9419D3395C072E3),
    .INIT_7C(256'hD5AAB0A2876E18CDF0CDF725F955ECDA120B3E2F1DED00B28ADCC99EAA07ECB9),
    .INIT_7D(256'hEF455037E3D3F2DB6354D8559AAF93905DAF657D59C37F47BC8E11CF713582E7),
    .INIT_7E(256'h18E13EF9411C768E841F89F92605971914B3D16250B4E44ECCA48EDCFFD2364C),
    .INIT_7F(256'h45F3EA28EAE69A7562596F0B51919B128AE61738962F152368B115CCAACEDD96),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h6CBAB1BA268253BD9EBF28657D93B43CE5F48C7CC538182999DC477429B154D8),
    .INITP_01(256'h1A2096EC1F7470DDD9AD610A1CDF43AF107911170FDCD8C8BA7C6F4C9DBDA887),
    .INITP_02(256'h90DFA6FA62159E14534B90BC066693D834A9204DE4C2AC3C7A4098B4B909F584),
    .INITP_03(256'hFF0D0AE550E0E4749426190CEB7C6065CC09885DB016153EBA6A05B2976E86A6),
    .INITP_04(256'h5D22B8C7E551B87C135A1A5BCC25928BC7DD2F98AEECCE3A67399713F8BF1077),
    .INITP_05(256'h6409E8EDFC72A92C4BA6EBA86EF6A0A647E464D948F61F0BEFDA5ED829EAEFAD),
    .INITP_06(256'h436E8A2B756858B4D53C981656A18E53A7AAF2046231D2C7633A3CF4C9BFB01B),
    .INITP_07(256'h5AD173AB50F97BE774FAAA507137632107FBF7902C4AF49A9DEA6317108E98E2),
    .INITP_08(256'hA256CD1EF9FE33A8197C229DBACCC17FD3E19C99900F111C96EECC3EA8904513),
    .INITP_09(256'h755A9ABBA705D3B97D8DAE5480A55513C7E687A77E28FD157CEFEEA74A4B1A2C),
    .INITP_0A(256'h1A173518DFFA372406BA136488F54B0F73CA7639E275844E32B14EFA11D7BB00),
    .INITP_0B(256'hC4FCB4020702CCACA3C3D0E8B224545248D72563FAFE52F40D7D5270E9C2F7A0),
    .INITP_0C(256'h7C516974A7BC3CA2838FACF510CF241F197C3A8C5551119F7F2A33EC1F20A03E),
    .INITP_0D(256'h70FA1801A7CE891606CE683333EAC2DCB8F88D4FBCE0321F0388648431D1749A),
    .INITP_0E(256'hB116604F69889316B1BE488887562C72C1C0CE64E08EA854C9A33412AD2B7B4F),
    .INITP_0F(256'hEE7FE35FA9D593CBEDDFB91B895987F6F475B863DA88B6F22E3E14AC41FAC3EA),
    .INIT_00(256'h88E9E8B76A0E9ED837DF1E8011D6EA407F81C6BAC974571483D1B628D7D14FC4),
    .INIT_01(256'h93DB145D66C09973FEFEC25FF9581AB0CF5BFD8AD48A4D558917C1A2F58C452D),
    .INIT_02(256'h7D79EEF0BAB358FD1197E704B75142B793430442E032D87D1EEC211958042BE2),
    .INIT_03(256'hAE5E995DBA185C00E0A6BD8BBD5D54A5E4BDBBF09C6942046F5CA725F1323FDC),
    .INIT_04(256'hAF6D2325A49C73131581A3C27E95628693E97BEB84530F16F8A2448C1C53BF84),
    .INIT_05(256'h15FFFE17CF30B23128835FB77CFFDED737002FD2EAD2D520393BC77726D59467),
    .INIT_06(256'h7A9FB135908E5024BACC64678362986F05A2EE761E2A89E8A16978350A39E573),
    .INIT_07(256'h6D1D526E6C0599E03040924BBCB22C39DCEA14D37B2A131A473CD672F2FF8AA6),
    .INIT_08(256'h1C6C78C207F4D415F71A4330B8792F7C30964D466323BB6FCF23835740EF1F76),
    .INIT_09(256'hDEF827D9FB4FD17C6E37325FA0267E5D37E4DF1F51C76C956E148CABF1414521),
    .INIT_0A(256'h1954285EABF1E04CD331437C5B082DC4D2CE0262EB6703E44626088B58E6DE57),
    .INIT_0B(256'hD49DB9B5A242A5DB21B35B24A133D74092C2D417DA899A6361056A786ED22F91),
    .INIT_0C(256'hEBCFF25F77E415FB78847213F62FADC9EFB91DD80C4226D58C7ED849B5C2ACF8),
    .INIT_0D(256'h10D2C0B6426EF6E944F5FC6C4704E9B94709D4F9A90683F0A3E176B8002DA33B),
    .INIT_0E(256'h61B8A203B48054C4C6CC62B6D575063B8D0CA2C06DC6526BD4F763B2C9D37E57),
    .INIT_0F(256'h6BD69E3A8D7E047E3D761F1ED80C15425106728E9F113A39F16307DCFCAD696D),
    .INIT_10(256'h6C687D19FCF616F13ACE1CD91909A2EA5597217FE36F38A4B6E78B9711038712),
    .INIT_11(256'h998BD7ED2E8DEC37DE49CEF46110B896A7E3AF96EF0428FBEAC5296923399D00),
    .INIT_12(256'h8E315343D85529871D7B64D0F20965120AF4B3B8BF4FB0AB755C1264B7B43E0A),
    .INIT_13(256'h3147CD08F92CD77F19CE05E7E506A7B2A0E79217105513BA77B585B526E05CF0),
    .INIT_14(256'h7D24167FC4FE7A372F7829750B02511AED0EB1559D9E1426ACB246601C7C3F31),
    .INIT_15(256'hFC18CF106F13DCF718A65425888AA3B185F18891A4F0724F2EE9DF6EE81ADF9C),
    .INIT_16(256'h40C9AB94354D3587AB91E122AC836589486FC170A2A8F6EBD5B22F2072108D4A),
    .INIT_17(256'h60564E262A79F3E404B3A1BD8DD082D018ED4F2ADA48286BF6FCA41D8EF6572E),
    .INIT_18(256'h8BCF7A0152E2ED694CB1B9BF9E87B801F764E25205F7FA8C9F6AB7990BEC1AF1),
    .INIT_19(256'h5FDFA87697E4616C90AA86E06CFF84176D4A2B6FBA3D9C42EBED0B9D0E018196),
    .INIT_1A(256'h15BF1194FA65907312A65644A4AF8DDED7BB8C8920E2EC45633220C0E5F446CE),
    .INIT_1B(256'h93BF03BA833FDD41DC375784AB4AFB66AB25203CBCDDEA23093979A47768DECB),
    .INIT_1C(256'hEE4D5A14872C5986CF94A4D9F47F9BA383D25BBA8DA55E3F6CF01875907C26DD),
    .INIT_1D(256'h4C61775E172519329054ECCE70D4C7036B34B054BBEB1821710EAE8D1E6BB84E),
    .INIT_1E(256'hD42A39D5D606C305EC757B5FB29B9197C0612DB03EEEBA8474203422BBDEFBA1),
    .INIT_1F(256'h8C74E90165FAE7DAC46EA3B059CBFFA67B111A4E8D605BA6136023EAED83E36F),
    .INIT_20(256'hA0D64024200DE2C59F3A4A90DDEE8D3948CEF3014561D537DD66CE18F0D83228),
    .INIT_21(256'hCE183E3E2676A16896AEF6130E6E2528C38EA0E555E5104CD3286759339D8BCD),
    .INIT_22(256'h36A60C856F33B5FDA07EAC12EA4A28FA43F5411B824836D4B8C72BC6DA71EBB1),
    .INIT_23(256'hAB1D57F7E910E127C161F9E17A07239CDADA530D0844C56234D8E88A84663915),
    .INIT_24(256'h420859E7BEEAF5739AE90061B4190E6D2AC949E122B412EBAAC1659743AA8C17),
    .INIT_25(256'hC3115D8315009B91D62D3DB787CD723F6FF3D7E15AC9C64C61D835ABD78491B5),
    .INIT_26(256'h12F7C928242D2DFC4CAB9BCD53DFC58A256D706CB33C239CBF3C55193B8DF498),
    .INIT_27(256'hA3CFA0E4F33B81326B2EE50BF064F16B19068F61FAB1AFB572F6FCC9E1A84A14),
    .INIT_28(256'hFCD41E89283F2417110E624C07E6B25FF744319F34E361D1031784A537C501F0),
    .INIT_29(256'h58E0C72DB33132FCAE02A5F979B438BADE0CE80908858F88D000F6EBBBC5ED10),
    .INIT_2A(256'h49E3A0D106A2E79104243378A8602863CE24C681C892634E4D95DD2106ECA64D),
    .INIT_2B(256'hF0A818672F7642EAC9A38B6BE17B09BFBA84BF208CE298BE00B47A1DFF63E95A),
    .INIT_2C(256'h1A56FABA17EEF105243D5BAD778DCFD0289908F9EE15BB515F9450735F4ABFA7),
    .INIT_2D(256'hE94429E4AFF0958027447256F2DB8455EE9E56C35413AC9442022C4EF4C122F6),
    .INIT_2E(256'h50C59F1B14CB30827A22820491DB8DF3AA211920399263A3B300864BD42AE7B4),
    .INIT_2F(256'hB8712922AE7F6A70D82DC7DC76F59E558930BB3E747A97595F008B55A92E7695),
    .INIT_30(256'hEB1C949FF6E51B5F04BA7861BA33AB55A41B433E9BAC44610872D1AA305C4A81),
    .INIT_31(256'hF42ED37278225BE7D20E3B0BEA4994FC79961EA69BF65B68CA0AE9D7BB6C83C6),
    .INIT_32(256'h8598B532EE3696A085ADF546C699D7FFE57E4C229055080551C7BAF9E4D734EB),
    .INIT_33(256'h3FCCF299E389220EE52BD5A5F565A2E833616C17AEB90E0E320F65ADCDAA2C6E),
    .INIT_34(256'h613D4DF9AEF3E463D04C0302795AAF8DDBF4A74FEE1FDAC8FA92CBEF9BD6DCD1),
    .INIT_35(256'hC10D49C8D5835A67E82A980A7543352E783A36EBC1A8BB2F9B8DA9C54EA4B91E),
    .INIT_36(256'h060C4D84BD0A4CC7D69A276D855C396E6CE5D688E37DC4DADEE6E751A5CEB889),
    .INIT_37(256'hA22B513F0ADBD3FCF50CB96B8804A36CD6194A3514096040CC6BB076F0F435F6),
    .INIT_38(256'hC7D980317EF71111A4232D8E7468C7622C315469CD6E48A29E3A0139B06CF977),
    .INIT_39(256'hF4ECBEC1A38540D10F6BC91D70142575E0DD9C595DFDBDC9BAF7AFCAE0030BB3),
    .INIT_3A(256'h7BC970B28055BDF8FBD448E646011C37EAD04982EA6662CC8019B26FE90A59DA),
    .INIT_3B(256'hBD636FB99ABA59E754ADB377F7AE7139611DEB746497729577B24C13CCED92E3),
    .INIT_3C(256'h642F0478BFBA308174A8319E61129545FDA10825E100D1A2AEAE11553C60EF9C),
    .INIT_3D(256'h391AA12D7229650679605FDDB7FB77C8BE16D6B5D6A9A99A2C22E07D7638EB45),
    .INIT_3E(256'hEADF643DF34FF0541A0040D12DC0D42BCD0BD27B74E71C141273513D75FBC21E),
    .INIT_3F(256'hE5CBD1E2AF0C5FBFFC76A8A2779CFC3B252682C8E1DD672407A1B2A0BDB732FD),
    .INIT_40(256'h7D03182E1C0A579D5CDA2847E1F501ED1234611F3CBDDE3E4589538FBCB05710),
    .INIT_41(256'h9443DBD2EF16DB6CBCBF7778B8514DF735D09BD961075A6A98D8166803CC0DC7),
    .INIT_42(256'h1CEA62A23665844086C8807F2FD66374E5B4367EE971322F398B256627ACA249),
    .INIT_43(256'hE017D731A81469FEF5CF884173E8D408CE5CA9A1B0841E6C248B4D0CA4E973DB),
    .INIT_44(256'h04D6D4EA7416527284A94E27F00558AE9C13C7F5062FE4EA95E87935CDBD99DC),
    .INIT_45(256'h33E25B67BEF7C2012D95095D7F5DA11870375707792CF6BFC3C9A3175974E82C),
    .INIT_46(256'h52072C774933F19AF3E550726ABE66E1752B3A732A9F9FAFE130868B4DD2A6EF),
    .INIT_47(256'hAE74BC71F5FBD5641E49AC95973697E9596D049A995BCB8ED9E58A11838A0CF1),
    .INIT_48(256'hC3B780CCD6F85C1E4A70D437ECA82DE3040ADAECEF9CE3E70AE9A55420FE3C48),
    .INIT_49(256'h6FAD5028C4253556D7287CAF93B9F49C8BC0DBCEEF188C674580DDD0A619C34E),
    .INIT_4A(256'h56AFB644D365011F329AB0B09D5FD65837D15A6D86A7331A7E9FC9D07670DD47),
    .INIT_4B(256'h8EEFA30B6A830310A9D3E892FC21C6C449DC5BC082FA20C98FB64E2C24DC0234),
    .INIT_4C(256'hE7451B062B44D5C3F3F5CAF47E11AFB8228CF66A62B6B61273B7ADB70AB5FED7),
    .INIT_4D(256'hB9B124333E973FC4D81AD08A356005065C92F8D90A373D6BCD056FEE87C14A9B),
    .INIT_4E(256'hCFB0DACAE2C600F1C94D4DB83A070193FD10B0D4CAA55CD106814D3307A8B361),
    .INIT_4F(256'h31E95B15BF9DAA67845A9464115808298DDE999A1671AECDD67A1C8041EAAC67),
    .INIT_50(256'hBB5D1F54406945D67868773DA0A9EAF48B0CBB81E7CA2E743798F9C6FAF5EBA1),
    .INIT_51(256'hE21E55CADB16CD9E730453253F4F2A5886EC82108964DDED604D8A5B8A3F3CE3),
    .INIT_52(256'h7D5AD90AAE5ADE10893A7524D5712139E70F7ED71608941D22D903AA33C7E0B5),
    .INIT_53(256'hA8D46697D73C9B15EAD537F5723C7DA4F287533FF20D521F6A965800E0BA9C40),
    .INIT_54(256'h27560830095D58C8A6B5B8940C258BA48DEEC91F8DC066ACF162D9E9A42697CC),
    .INIT_55(256'h6005B5F1677D174AE6A39A038560B1772DB2B41720636EDB0BB358554AAD06AE),
    .INIT_56(256'h647D0A132CB5EA56CBAFD326D7F4676C39977573DBCBA48091CCB9883741040C),
    .INIT_57(256'hE4D6E7108AF57219A08BEF811B324F1AF55CE18EA983CDEDB4CC163AFED4F8D0),
    .INIT_58(256'h8AEBDCE3A693AF9BAFE164727651F0C7671555A6109B17B18E627168D9233E06),
    .INIT_59(256'h37AF7140772529BEC90D86576CF1BED63435445D548CC3F81E5C30FD07B7E70F),
    .INIT_5A(256'hA0C89BA26E63009560D82E603E03E7DFC3E26589F8B62D4122C4960A9B005A04),
    .INIT_5B(256'h91CC32E12FCCB81B18AD315CCAFDC67FC636616F2321988E6BD753C920ACC6C1),
    .INIT_5C(256'h3C82AEBCA2A7DD894956AA84F92CEAF847D6E61D4279F134F0CD12D0A8C38200),
    .INIT_5D(256'h3A354D810F29529CE6DD423347C1B4DAEC83BF99F9847291E3A90B19C10B63FD),
    .INIT_5E(256'h8C5E3EEE35464995CE785269485A4666AC7F89DDB795E4C0173762C26663F6F3),
    .INIT_5F(256'h9641BFD862D7977FB39B3182330FDA2D14CDCC0AA50080511ADAC11CFC2A4EC2),
    .INIT_60(256'h0978C465F7097A1490873E4FC78055EAF7D978C2FA341E4FF253DF8749347742),
    .INIT_61(256'h315D71434F7160660816115242DC5333B0696D8622343C65BD606A44A254B497),
    .INIT_62(256'hF87E716D902533C04D3B6306495258953D8C54EBBAFC625B86782B3C69E28AB1),
    .INIT_63(256'hDFEE367EC0102C11E6AC266BD2BDBC844969F5306671E01C8749EE3F6E837278),
    .INIT_64(256'h4DA26FCA813D932247DC7D770B47B0A168022EF0D5E06755EEF709BAE0690F26),
    .INIT_65(256'h0A670B9DE25FB7B105E9785D85C36C4D8CAF2C8E31276FD5D717DBB131CB1953),
    .INIT_66(256'h9DAF3870130260863C546C2652FCFD6E05907B6EF5A7ED097099757D65FCB281),
    .INIT_67(256'hC9BD632C3816C98DBC3FD6F5310FFA02F8F94161599F1A5CEFC11EBBFBDFEE28),
    .INIT_68(256'hB4E9D32FE71D041FD7E9E4C5945EF0546860CC18D87B3799A4E2257A9CE9CD85),
    .INIT_69(256'h2C1DA051A096E615770D35FC807F51CBDF536044CBF633E0F67613708BDB1B46),
    .INIT_6A(256'h6F75F27D81BD85C1CB9329AE448B5527B6FBBC7C753CE44F0256359A4D73FCC2),
    .INIT_6B(256'h9C6D5264311C52977DCA00369CC460845E3CD1445BA51F77DE8D57FFED24E018),
    .INIT_6C(256'h7F87A0B3FB48C348C9D13F41BF40C23B3FFB6B7AD49F824F5DC16ACD60790F2F),
    .INIT_6D(256'hA663D9CA74D88F90CAC18B7E0BCB535430DBB9BE5F3ED23D1C95CAB9010A8BF8),
    .INIT_6E(256'h463359D692EB6F50A3F75D5F18BAC5EF8B9A6C04308A666D7685DF7F0C54EB10),
    .INIT_6F(256'h5817A1894F1C5D61D23468C360CD4DB2A9713EF180255DDD8D485F3D18AAB5FB),
    .INIT_70(256'hA89649F68A3574B09FCA6949A8D9596DB43E2672D1B84D6AEC5736226955F60B),
    .INIT_71(256'hD82CAF3D46ED5C7EE43101A7875ACA63586F6221376105A62197A73CE78CEAA5),
    .INIT_72(256'h29A72E9FCD1CE4A85070E1581D1E6B78BE327A9652469AD17B1C1DDE70EF67E7),
    .INIT_73(256'h430F7FB0D820499CE0A77FC452651852DBEF4CFE08327EF42A4B77388D6A962A),
    .INIT_74(256'h5F528BEC4C5D1A4D58DF352D1A55D91CE06831849A26AF351C30BD94CE1B551E),
    .INIT_75(256'h21DA3961379EE554E269C22F8943FB7C6BE5DC1505412F62FC883950ABE67214),
    .INIT_76(256'hA7CCA83D06BFE0632835AFFE8A960534E7BE9A6D4E3CF8F1C9E4927ADC327F10),
    .INIT_77(256'h6472FA7A840F9B67FDD8F9E9F40BDE1AC66131DAE2AF1E8ADDB1E7CF3A83F317),
    .INIT_78(256'hFF52DCD209A4D7B0475E57FD98BC22A1EF445D94C84F968B4B8276159E24F32C),
    .INIT_79(256'hD69452BAF563BC519FF0A0F4AF1F86AD72A768769335D6604305184C66C4967C),
    .INIT_7A(256'h65A6FA9D4D4C2A23127E5F24242E3DBFFD2C3B5538D99848BEEE3E076DAC8EEF),
    .INIT_7B(256'hA2DF1898970A795A2F7979A140DC274F675DC67E0AB1BB9EDBD04791D72FC979),
    .INIT_7C(256'hE554DC7DA4DC175A46FA97331F9A3CEB1DF2C9D8F11E2DD811881D9EA72FE6B4),
    .INIT_7D(256'h7FACF3F8A15BE911BB2A6AF7792F89268C7688A6393A711F5913C09F1A95CF2C),
    .INIT_7E(256'h6896DF5F09C9A0623B15DF634C49B587D3246602C0A05363B6871D8ABFA8BD04),
    .INIT_7F(256'h9833357948CDE37FB676C08C5828E11EF874E73F28C9D9DC27AD4FA113A4881B),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [127:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [127:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "12" *) (* C_ADDRB_WIDTH = "12" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "14" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     34.080796 mW" *) 
(* C_FAMILY = "kintex7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "FFTAllTwiddleROM.mem" *) 
(* C_INIT_FILE_NAME = "FFTAllTwiddleROM.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "4096" *) (* C_READ_DEPTH_B = "4096" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "128" *) (* C_READ_WIDTH_B = "128" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "4096" *) 
(* C_WRITE_DEPTH_B = "4096" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "128" *) (* C_WRITE_WIDTH_B = "128" *) (* C_XDEVICEFAMILY = "kintex7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [11:0]addra;
  input [127:0]dina;
  output [127:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [127:0]dinb;
  output [127:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [11:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [11:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [11:0]addra;
  wire clka;
  wire [127:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[127] = \<const0> ;
  assign doutb[126] = \<const0> ;
  assign doutb[125] = \<const0> ;
  assign doutb[124] = \<const0> ;
  assign doutb[123] = \<const0> ;
  assign doutb[122] = \<const0> ;
  assign doutb[121] = \<const0> ;
  assign doutb[120] = \<const0> ;
  assign doutb[119] = \<const0> ;
  assign doutb[118] = \<const0> ;
  assign doutb[117] = \<const0> ;
  assign doutb[116] = \<const0> ;
  assign doutb[115] = \<const0> ;
  assign doutb[114] = \<const0> ;
  assign doutb[113] = \<const0> ;
  assign doutb[112] = \<const0> ;
  assign doutb[111] = \<const0> ;
  assign doutb[110] = \<const0> ;
  assign doutb[109] = \<const0> ;
  assign doutb[108] = \<const0> ;
  assign doutb[107] = \<const0> ;
  assign doutb[106] = \<const0> ;
  assign doutb[105] = \<const0> ;
  assign doutb[104] = \<const0> ;
  assign doutb[103] = \<const0> ;
  assign doutb[102] = \<const0> ;
  assign doutb[101] = \<const0> ;
  assign doutb[100] = \<const0> ;
  assign doutb[99] = \<const0> ;
  assign doutb[98] = \<const0> ;
  assign doutb[97] = \<const0> ;
  assign doutb[96] = \<const0> ;
  assign doutb[95] = \<const0> ;
  assign doutb[94] = \<const0> ;
  assign doutb[93] = \<const0> ;
  assign doutb[92] = \<const0> ;
  assign doutb[91] = \<const0> ;
  assign doutb[90] = \<const0> ;
  assign doutb[89] = \<const0> ;
  assign doutb[88] = \<const0> ;
  assign doutb[87] = \<const0> ;
  assign doutb[86] = \<const0> ;
  assign doutb[85] = \<const0> ;
  assign doutb[84] = \<const0> ;
  assign doutb[83] = \<const0> ;
  assign doutb[82] = \<const0> ;
  assign doutb[81] = \<const0> ;
  assign doutb[80] = \<const0> ;
  assign doutb[79] = \<const0> ;
  assign doutb[78] = \<const0> ;
  assign doutb[77] = \<const0> ;
  assign doutb[76] = \<const0> ;
  assign doutb[75] = \<const0> ;
  assign doutb[74] = \<const0> ;
  assign doutb[73] = \<const0> ;
  assign doutb[72] = \<const0> ;
  assign doutb[71] = \<const0> ;
  assign doutb[70] = \<const0> ;
  assign doutb[69] = \<const0> ;
  assign doutb[68] = \<const0> ;
  assign doutb[67] = \<const0> ;
  assign doutb[66] = \<const0> ;
  assign doutb[65] = \<const0> ;
  assign doutb[64] = \<const0> ;
  assign doutb[63] = \<const0> ;
  assign doutb[62] = \<const0> ;
  assign doutb[61] = \<const0> ;
  assign doutb[60] = \<const0> ;
  assign doutb[59] = \<const0> ;
  assign doutb[58] = \<const0> ;
  assign doutb[57] = \<const0> ;
  assign doutb[56] = \<const0> ;
  assign doutb[55] = \<const0> ;
  assign doutb[54] = \<const0> ;
  assign doutb[53] = \<const0> ;
  assign doutb[52] = \<const0> ;
  assign doutb[51] = \<const0> ;
  assign doutb[50] = \<const0> ;
  assign doutb[49] = \<const0> ;
  assign doutb[48] = \<const0> ;
  assign doutb[47] = \<const0> ;
  assign doutb[46] = \<const0> ;
  assign doutb[45] = \<const0> ;
  assign doutb[44] = \<const0> ;
  assign doutb[43] = \<const0> ;
  assign doutb[42] = \<const0> ;
  assign doutb[41] = \<const0> ;
  assign doutb[40] = \<const0> ;
  assign doutb[39] = \<const0> ;
  assign doutb[38] = \<const0> ;
  assign doutb[37] = \<const0> ;
  assign doutb[36] = \<const0> ;
  assign doutb[35] = \<const0> ;
  assign doutb[34] = \<const0> ;
  assign doutb[33] = \<const0> ;
  assign doutb[32] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3_synth
   (douta,
    clka,
    addra);
  output [127:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [127:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
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
