-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Nov  7 18:33:55 2023
-- Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Kintex/Aloha-HE_Kintex.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_stub.vhdl
-- Design      : AlohaHE_ComputeCoreWrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AlohaHE_ComputeCoreWrapper_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    control_low_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_high_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina_ext_low_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina_ext_high_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_ext_low_word : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_ext_high_word : out STD_LOGIC_VECTOR ( 31 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma_bram_byte_wea : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dma_bram_abs_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dma_bram_dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dma_bram_doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dma_bram_en : in STD_LOGIC
  );

end AlohaHE_ComputeCoreWrapper_0_0;

architecture stub of AlohaHE_ComputeCoreWrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,control_low_word[31:0],control_high_word[31:0],dina_ext_low_word[31:0],dina_ext_high_word[31:0],dout_ext_low_word[31:0],dout_ext_high_word[31:0],status[31:0],dma_bram_byte_wea[7:0],dma_bram_abs_addr[17:0],dma_bram_dina[63:0],dma_bram_doutb[63:0],dma_bram_en";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ComputeCoreWrapper,Vivado 2019.1";
begin
end;
