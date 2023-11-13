-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Mon Oct 30 13:54:04 2023
-- Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ INS_RAM_sim_netlist.vhdl
-- Design      : INS_RAM
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sdpram is
  port (
    qdpo : out STD_LOGIC_VECTOR ( 41 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 41 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    qdpo_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sdpram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sdpram is
  signal qsdpo_int : STD_LOGIC_VECTOR ( 41 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qsdpo_int : signal is "true";
  signal sdpo_int : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal NLW_ram_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_15_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_15_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \qsdpo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qsdpo_int_reg[0]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[10]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[11]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[12]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[13]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[14]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[15]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[16]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[17]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[18]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[19]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[1]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[20]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[21]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[22]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[23]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[24]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[25]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[26]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[27]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[28]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[29]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[2]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[30]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[31]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[32]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[32]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[33]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[33]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[34]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[34]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[35]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[35]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[36]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[36]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[37]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[37]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[38]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[38]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[39]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[39]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[3]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[40]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[40]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[41]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[41]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[4]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[5]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[6]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[7]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[8]\ : label is "no";
  attribute KEEP of \qsdpo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qsdpo_int_reg[9]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_15_0_5 : label is 672;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_15_0_5 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_15_12_17 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_15_12_17 : label is 672;
  attribute RTL_RAM_NAME of ram_reg_0_15_12_17 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_15_12_17 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_12_17 : label is 15;
  attribute ram_offset of ram_reg_0_15_12_17 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_12_17 : label is 12;
  attribute ram_slice_end of ram_reg_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_15_18_23 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_15_18_23 : label is 672;
  attribute RTL_RAM_NAME of ram_reg_0_15_18_23 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_15_18_23 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_18_23 : label is 15;
  attribute ram_offset of ram_reg_0_15_18_23 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_18_23 : label is 18;
  attribute ram_slice_end of ram_reg_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_15_24_29 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_15_24_29 : label is 672;
  attribute RTL_RAM_NAME of ram_reg_0_15_24_29 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_15_24_29 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_24_29 : label is 15;
  attribute ram_offset of ram_reg_0_15_24_29 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_24_29 : label is 24;
  attribute ram_slice_end of ram_reg_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_15_30_35 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_15_30_35 : label is 672;
  attribute RTL_RAM_NAME of ram_reg_0_15_30_35 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_15_30_35 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_30_35 : label is 15;
  attribute ram_offset of ram_reg_0_15_30_35 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_30_35 : label is 30;
  attribute ram_slice_end of ram_reg_0_15_30_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_15_36_41 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_15_36_41 : label is 672;
  attribute RTL_RAM_NAME of ram_reg_0_15_36_41 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_15_36_41 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_36_41 : label is 15;
  attribute ram_offset of ram_reg_0_15_36_41 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_36_41 : label is 36;
  attribute ram_slice_end of ram_reg_0_15_36_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_15_6_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_15_6_11 : label is 672;
  attribute RTL_RAM_NAME of ram_reg_0_15_6_11 : label is "synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_15_6_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_6_11 : label is 15;
  attribute ram_offset of ram_reg_0_15_6_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_6_11 : label is 6;
  attribute ram_slice_end of ram_reg_0_15_6_11 : label is 11;
begin
  qdpo(41 downto 0) <= qsdpo_int(41 downto 0);
\qsdpo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(0),
      Q => qsdpo_int(0),
      R => '0'
    );
\qsdpo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(10),
      Q => qsdpo_int(10),
      R => '0'
    );
\qsdpo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(11),
      Q => qsdpo_int(11),
      R => '0'
    );
\qsdpo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(12),
      Q => qsdpo_int(12),
      R => '0'
    );
\qsdpo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(13),
      Q => qsdpo_int(13),
      R => '0'
    );
\qsdpo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(14),
      Q => qsdpo_int(14),
      R => '0'
    );
\qsdpo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(15),
      Q => qsdpo_int(15),
      R => '0'
    );
\qsdpo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(16),
      Q => qsdpo_int(16),
      R => '0'
    );
\qsdpo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(17),
      Q => qsdpo_int(17),
      R => '0'
    );
\qsdpo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(18),
      Q => qsdpo_int(18),
      R => '0'
    );
\qsdpo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(19),
      Q => qsdpo_int(19),
      R => '0'
    );
\qsdpo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(1),
      Q => qsdpo_int(1),
      R => '0'
    );
\qsdpo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(20),
      Q => qsdpo_int(20),
      R => '0'
    );
\qsdpo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(21),
      Q => qsdpo_int(21),
      R => '0'
    );
\qsdpo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(22),
      Q => qsdpo_int(22),
      R => '0'
    );
\qsdpo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(23),
      Q => qsdpo_int(23),
      R => '0'
    );
\qsdpo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(24),
      Q => qsdpo_int(24),
      R => '0'
    );
\qsdpo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(25),
      Q => qsdpo_int(25),
      R => '0'
    );
\qsdpo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(26),
      Q => qsdpo_int(26),
      R => '0'
    );
\qsdpo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(27),
      Q => qsdpo_int(27),
      R => '0'
    );
\qsdpo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(28),
      Q => qsdpo_int(28),
      R => '0'
    );
\qsdpo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(29),
      Q => qsdpo_int(29),
      R => '0'
    );
\qsdpo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(2),
      Q => qsdpo_int(2),
      R => '0'
    );
\qsdpo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(30),
      Q => qsdpo_int(30),
      R => '0'
    );
\qsdpo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(31),
      Q => qsdpo_int(31),
      R => '0'
    );
\qsdpo_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(32),
      Q => qsdpo_int(32),
      R => '0'
    );
\qsdpo_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(33),
      Q => qsdpo_int(33),
      R => '0'
    );
\qsdpo_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(34),
      Q => qsdpo_int(34),
      R => '0'
    );
\qsdpo_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(35),
      Q => qsdpo_int(35),
      R => '0'
    );
\qsdpo_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(36),
      Q => qsdpo_int(36),
      R => '0'
    );
\qsdpo_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(37),
      Q => qsdpo_int(37),
      R => '0'
    );
\qsdpo_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(38),
      Q => qsdpo_int(38),
      R => '0'
    );
\qsdpo_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(39),
      Q => qsdpo_int(39),
      R => '0'
    );
\qsdpo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(3),
      Q => qsdpo_int(3),
      R => '0'
    );
\qsdpo_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(40),
      Q => qsdpo_int(40),
      R => '0'
    );
\qsdpo_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(41),
      Q => qsdpo_int(41),
      R => '0'
    );
\qsdpo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(4),
      Q => qsdpo_int(4),
      R => '0'
    );
\qsdpo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(5),
      Q => qsdpo_int(5),
      R => '0'
    );
\qsdpo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(6),
      Q => qsdpo_int(6),
      R => '0'
    );
\qsdpo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(7),
      Q => qsdpo_int(7),
      R => '0'
    );
\qsdpo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(8),
      Q => qsdpo_int(8),
      R => '0'
    );
\qsdpo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qdpo_clk,
      CE => '1',
      D => sdpo_int(9),
      Q => qsdpo_int(9),
      R => '0'
    );
ram_reg_0_15_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => dpra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => dpra(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => dpra(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => a(3 downto 0),
      DIA(1 downto 0) => d(1 downto 0),
      DIB(1 downto 0) => d(3 downto 2),
      DIC(1 downto 0) => d(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => sdpo_int(1 downto 0),
      DOB(1 downto 0) => sdpo_int(3 downto 2),
      DOC(1 downto 0) => sdpo_int(5 downto 4),
      DOD(1 downto 0) => NLW_ram_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_15_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => dpra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => dpra(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => dpra(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => a(3 downto 0),
      DIA(1 downto 0) => d(13 downto 12),
      DIB(1 downto 0) => d(15 downto 14),
      DIC(1 downto 0) => d(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => sdpo_int(13 downto 12),
      DOB(1 downto 0) => sdpo_int(15 downto 14),
      DOC(1 downto 0) => sdpo_int(17 downto 16),
      DOD(1 downto 0) => NLW_ram_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_15_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => dpra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => dpra(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => dpra(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => a(3 downto 0),
      DIA(1 downto 0) => d(19 downto 18),
      DIB(1 downto 0) => d(21 downto 20),
      DIC(1 downto 0) => d(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => sdpo_int(19 downto 18),
      DOB(1 downto 0) => sdpo_int(21 downto 20),
      DOC(1 downto 0) => sdpo_int(23 downto 22),
      DOD(1 downto 0) => NLW_ram_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_15_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => dpra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => dpra(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => dpra(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => a(3 downto 0),
      DIA(1 downto 0) => d(25 downto 24),
      DIB(1 downto 0) => d(27 downto 26),
      DIC(1 downto 0) => d(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => sdpo_int(25 downto 24),
      DOB(1 downto 0) => sdpo_int(27 downto 26),
      DOC(1 downto 0) => sdpo_int(29 downto 28),
      DOD(1 downto 0) => NLW_ram_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_15_30_35: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => dpra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => dpra(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => dpra(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => a(3 downto 0),
      DIA(1 downto 0) => d(31 downto 30),
      DIB(1 downto 0) => d(33 downto 32),
      DIC(1 downto 0) => d(35 downto 34),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => sdpo_int(31 downto 30),
      DOB(1 downto 0) => sdpo_int(33 downto 32),
      DOC(1 downto 0) => sdpo_int(35 downto 34),
      DOD(1 downto 0) => NLW_ram_reg_0_15_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_15_36_41: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => dpra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => dpra(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => dpra(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => a(3 downto 0),
      DIA(1 downto 0) => d(37 downto 36),
      DIB(1 downto 0) => d(39 downto 38),
      DIC(1 downto 0) => d(41 downto 40),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => sdpo_int(37 downto 36),
      DOB(1 downto 0) => sdpo_int(39 downto 38),
      DOC(1 downto 0) => sdpo_int(41 downto 40),
      DOD(1 downto 0) => NLW_ram_reg_0_15_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_15_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => dpra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => dpra(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => dpra(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => a(3 downto 0),
      DIA(1 downto 0) => d(7 downto 6),
      DIB(1 downto 0) => d(9 downto 8),
      DIC(1 downto 0) => d(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => sdpo_int(7 downto 6),
      DOB(1 downto 0) => sdpo_int(9 downto 8),
      DOC(1 downto 0) => sdpo_int(11 downto 10),
      DOD(1 downto 0) => NLW_ram_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth is
  port (
    qdpo : out STD_LOGIC_VECTOR ( 41 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 41 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    qdpo_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth is
begin
\gen_sdp_ram.sdpram_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sdpram
     port map (
      a(3 downto 0) => a(3 downto 0),
      clk => clk,
      d(41 downto 0) => d(41 downto 0),
      dpra(3 downto 0) => dpra(3 downto 0),
      qdpo(41 downto 0) => qdpo(41 downto 0),
      qdpo_clk => qdpo_clk,
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d : in STD_LOGIC_VECTOR ( 41 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 41 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 41 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 41 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 4;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 16;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "kintex7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "no_coe_file_loaded";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 4;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 42;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(41) <= \<const0>\;
  dpo(40) <= \<const0>\;
  dpo(39) <= \<const0>\;
  dpo(38) <= \<const0>\;
  dpo(37) <= \<const0>\;
  dpo(36) <= \<const0>\;
  dpo(35) <= \<const0>\;
  dpo(34) <= \<const0>\;
  dpo(33) <= \<const0>\;
  dpo(32) <= \<const0>\;
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qspo(41) <= \<const0>\;
  qspo(40) <= \<const0>\;
  qspo(39) <= \<const0>\;
  qspo(38) <= \<const0>\;
  qspo(37) <= \<const0>\;
  qspo(36) <= \<const0>\;
  qspo(35) <= \<const0>\;
  qspo(34) <= \<const0>\;
  qspo(33) <= \<const0>\;
  qspo(32) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(41) <= \<const0>\;
  spo(40) <= \<const0>\;
  spo(39) <= \<const0>\;
  spo(38) <= \<const0>\;
  spo(37) <= \<const0>\;
  spo(36) <= \<const0>\;
  spo(35) <= \<const0>\;
  spo(34) <= \<const0>\;
  spo(33) <= \<const0>\;
  spo(32) <= \<const0>\;
  spo(31) <= \<const0>\;
  spo(30) <= \<const0>\;
  spo(29) <= \<const0>\;
  spo(28) <= \<const0>\;
  spo(27) <= \<const0>\;
  spo(26) <= \<const0>\;
  spo(25) <= \<const0>\;
  spo(24) <= \<const0>\;
  spo(23) <= \<const0>\;
  spo(22) <= \<const0>\;
  spo(21) <= \<const0>\;
  spo(20) <= \<const0>\;
  spo(19) <= \<const0>\;
  spo(18) <= \<const0>\;
  spo(17) <= \<const0>\;
  spo(16) <= \<const0>\;
  spo(15) <= \<const0>\;
  spo(14) <= \<const0>\;
  spo(13) <= \<const0>\;
  spo(12) <= \<const0>\;
  spo(11) <= \<const0>\;
  spo(10) <= \<const0>\;
  spo(9) <= \<const0>\;
  spo(8) <= \<const0>\;
  spo(7) <= \<const0>\;
  spo(6) <= \<const0>\;
  spo(5) <= \<const0>\;
  spo(4) <= \<const0>\;
  spo(3) <= \<const0>\;
  spo(2) <= \<const0>\;
  spo(1) <= \<const0>\;
  spo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth
     port map (
      a(3 downto 0) => a(3 downto 0),
      clk => clk,
      d(41 downto 0) => d(41 downto 0),
      dpra(3 downto 0) => dpra(3 downto 0),
      qdpo(41 downto 0) => qdpo(41 downto 0),
      qdpo_clk => qdpo_clk,
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d : in STD_LOGIC_VECTOR ( 41 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qdpo : out STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "INS_RAM,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dist_mem_gen_v8_0_13,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 41 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintex7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 1;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 1;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 1;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of U0 : label is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of U0 : label is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of U0 : label is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 4;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 16;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "no_coe_file_loaded";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qce_joined : integer;
  attribute c_qce_joined of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 0;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 42;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13
     port map (
      a(3 downto 0) => a(3 downto 0),
      clk => clk,
      d(41 downto 0) => d(41 downto 0),
      dpo(41 downto 0) => NLW_U0_dpo_UNCONNECTED(41 downto 0),
      dpra(3 downto 0) => dpra(3 downto 0),
      i_ce => '1',
      qdpo(41 downto 0) => qdpo(41 downto 0),
      qdpo_ce => '1',
      qdpo_clk => qdpo_clk,
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(41 downto 0) => NLW_U0_qspo_UNCONNECTED(41 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(41 downto 0) => NLW_U0_spo_UNCONNECTED(41 downto 0),
      we => we
    );
end STRUCTURE;
