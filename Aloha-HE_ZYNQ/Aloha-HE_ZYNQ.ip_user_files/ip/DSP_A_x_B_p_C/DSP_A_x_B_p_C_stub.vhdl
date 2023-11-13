-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Oct 31 15:49:20 2023
-- Host        : ipn075 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/DSP_A_x_B_p_C/DSP_A_x_B_p_C_stub.vhdl
-- Design      : DSP_A_x_B_p_C
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DSP_A_x_B_p_C is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C : in STD_LOGIC_VECTOR ( 24 downto 0 );
    P : out STD_LOGIC_VECTOR ( 43 downto 0 )
  );

end DSP_A_x_B_p_C;

architecture stub of DSP_A_x_B_p_C is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[24:0],B[17:0],C[24:0],P[43:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xbip_dsp48_macro_v3_0_17,Vivado 2019.1";
begin
end;
