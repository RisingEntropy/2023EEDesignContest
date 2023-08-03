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
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/cic_compiler_v4_0_16 \
  "../../../ipstatic/hdl/cic_compiler_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../SPI.gen/sources_1/ip/decimator_0/decimator_cic_compiler_v4_0_i0/sim/decimator_cic_compiler_v4_0_i0.vhd" \
-endlib
-makelib xcelium_lib/fir_compiler_v7_2_18 \
  "../../../ipstatic/hdl/fir_compiler_v7_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../SPI.gen/sources_1/ip/decimator_0/decimator_fir_compiler_v7_2_i0/sim/decimator_fir_compiler_v7_2_i0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ipstatic/work/hdl/synth_reg.v" \
  "../../../ipstatic/work/hdl/synth_reg_w_init.v" \
  "../../../ipstatic/work/hdl/convert_type.v" \
  "../../../ipstatic/work/hdl/xlclockdriver_rd.v" \
  "../../../ipstatic/work/hdl/decimator_entity_declarations.v" \
  "../../../ipstatic/work/hdl/decimator.v" \
  "../../../../SPI.gen/sources_1/ip/decimator_0/sim/decimator_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

