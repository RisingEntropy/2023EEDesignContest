-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sat Jul 29 15:10:13 2023
-- Host        : DESKTOP-3R96T2B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fftmodule_0_stub.vhdl
-- Design      : fftmodule_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    fft_data_in_im : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_data_in_re : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_data_start_frame : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    fft_out_phase : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_out_real : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_out_start_frame : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "fft_data_in_im[15:0],fft_data_in_re[15:0],fft_data_start_frame[0:0],clk,fft_out_phase[15:0],fft_out_real[15:0],fft_out_start_frame[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fftmodule,Vivado 2022.1";
begin
end;
