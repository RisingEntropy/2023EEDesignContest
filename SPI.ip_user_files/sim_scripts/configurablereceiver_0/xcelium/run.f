-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_6 \
  "../../../ipstatic/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_addsub_v3_0_6 \
  "../../../ipstatic/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_addsub_v12_0_14 \
  "../../../ipstatic/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_c_addsub_v12_0_i0/sim/configurablereceiver_c_addsub_v12_0_i0.vhd" \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_c_addsub_v12_0_i1/sim/configurablereceiver_c_addsub_v12_0_i1.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/cic_compiler_v4_0_16 \
  "../../../ipstatic/hdl/cic_compiler_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_cic_compiler_v4_0_i0/sim/configurablereceiver_cic_compiler_v4_0_i0.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_18 \
  "../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/cordic_v6_0_18 \
  "../../../ipstatic/hdl/cordic_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_cordic_v6_0_i0/sim/configurablereceiver_cordic_v6_0_i0.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/dds_compiler_v6_0_22 \
  "../../../ipstatic/hdl/dds_compiler_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_dds_compiler_v6_0_i0/sim/configurablereceiver_dds_compiler_v6_0_i0.vhd" \
-endlib
-makelib xcelium_lib/fir_compiler_v7_2_18 \
  "../../../ipstatic/hdl/fir_compiler_v7_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_fir_compiler_v7_2_i0/sim/configurablereceiver_fir_compiler_v7_2_i0.vhd" \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_fir_compiler_v7_2_i1/sim/configurablereceiver_fir_compiler_v7_2_i1.vhd" \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_fir_compiler_v7_2_i2/sim/configurablereceiver_fir_compiler_v7_2_i2.vhd" \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_fir_compiler_v7_2_i3/sim/configurablereceiver_fir_compiler_v7_2_i3.vhd" \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_mult_gen_v12_0_i0/sim/configurablereceiver_mult_gen_v12_0_i0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ipstatic/work/hdl/synth_reg.v" \
  "../../../ipstatic/work/hdl/synth_reg_w_init.v" \
  "../../../ipstatic/work/hdl/convert_type.v" \
  "../../../ipstatic/work/hdl/xlclockdriver_rd.v" \
  "../../../ipstatic/work/hdl/configurablereceiver_entity_declarations.v" \
  "../../../ipstatic/work/hdl/configurablereceiver.v" \
  "../../../../SPI.gen/sources_1/ip/configurablereceiver_0/sim/configurablereceiver_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

