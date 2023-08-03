vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/cic_compiler_v4_0_16
vlib riviera/xil_defaultlib
vlib riviera/fir_compiler_v7_2_18

vmap xpm riviera/xpm
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap cic_compiler_v4_0_16 riviera/cic_compiler_v4_0_16
vmap xil_defaultlib riviera/xil_defaultlib
vmap fir_compiler_v7_2_18 riviera/fir_compiler_v7_2_18

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/work/hdl" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cic_compiler_v4_0_16 -93 \
"../../../ipstatic/hdl/cic_compiler_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../SPI.gen/sources_1/ip/decimator_0/decimator_cic_compiler_v4_0_i0/sim/decimator_cic_compiler_v4_0_i0.vhd" \

vcom -work fir_compiler_v7_2_18 -93 \
"../../../ipstatic/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../SPI.gen/sources_1/ip/decimator_0/decimator_fir_compiler_v7_2_i0/sim/decimator_fir_compiler_v7_2_i0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/work/hdl" \
"../../../ipstatic/work/hdl/synth_reg.v" \
"../../../ipstatic/work/hdl/synth_reg_w_init.v" \
"../../../ipstatic/work/hdl/convert_type.v" \
"../../../ipstatic/work/hdl/xlclockdriver_rd.v" \
"../../../ipstatic/work/hdl/decimator_entity_declarations.v" \
"../../../ipstatic/work/hdl/decimator.v" \
"../../../../SPI.gen/sources_1/ip/decimator_0/sim/decimator_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

