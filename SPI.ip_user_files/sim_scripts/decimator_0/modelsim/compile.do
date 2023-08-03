vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/cic_compiler_v4_0_16
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/fir_compiler_v7_2_18

vmap xpm modelsim_lib/msim/xpm
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap cic_compiler_v4_0_16 modelsim_lib/msim/cic_compiler_v4_0_16
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap fir_compiler_v7_2_18 modelsim_lib/msim/fir_compiler_v7_2_18

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../ipstatic/work/hdl" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10  -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cic_compiler_v4_0_16  -93 \
"../../../ipstatic/hdl/cic_compiler_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../SPI.gen/sources_1/ip/decimator_0/decimator_cic_compiler_v4_0_i0/sim/decimator_cic_compiler_v4_0_i0.vhd" \

vcom -work fir_compiler_v7_2_18  -93 \
"../../../ipstatic/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../SPI.gen/sources_1/ip/decimator_0/decimator_fir_compiler_v7_2_i0/sim/decimator_fir_compiler_v7_2_i0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../ipstatic/work/hdl" \
"../../../ipstatic/work/hdl/synth_reg.v" \
"../../../ipstatic/work/hdl/synth_reg_w_init.v" \
"../../../ipstatic/work/hdl/convert_type.v" \
"../../../ipstatic/work/hdl/xlclockdriver_rd.v" \
"../../../ipstatic/work/hdl/decimator_entity_declarations.v" \
"../../../ipstatic/work/hdl/decimator.v" \
"../../../../SPI.gen/sources_1/ip/decimator_0/sim/decimator_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

