-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Aug  3 11:19:50 2023
-- Host        : DESKTOP-3R96T2B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ decimator_0_stub.vhdl
-- Design      : decimator_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    adc_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    decimator_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decimator_tready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_in[15:0],clk,decimator_out[15:0],decimator_tready[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "decimator,Vivado 2022.1";
begin
end;
