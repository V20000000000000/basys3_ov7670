-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Dec 28 18:14:46 2023
-- Host        : DESKTOP-BBI44NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               g:/FPGA/vivado_project/7670_test111/7670_test111.gen/sources_1/ip/clock_PLL_100_50_25MHz/clock_PLL_100_50_25MHz_stub.vhdl
-- Design      : clock_PLL_100_50_25MHz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock_PLL_100_50_25MHz is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clock_PLL_100_50_25MHz;

architecture stub of clock_PLL_100_50_25MHz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,clk_out3,resetn,locked,clk_in1";
begin
end;
