vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/c_reg_fd_v12_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_addsub_v3_0_6
vlib questa_lib/msim/c_addsub_v12_0_14
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/cic_compiler_v4_0_16
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_18
vlib questa_lib/msim/cordic_v6_0_18
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib questa_lib/msim/dds_compiler_v6_0_22
vlib questa_lib/msim/fir_compiler_v7_2_18

vmap xpm questa_lib/msim/xpm
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 questa_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 questa_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 questa_lib/msim/c_addsub_v12_0_14
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap cic_compiler_v4_0_16 questa_lib/msim/cic_compiler_v4_0_16
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 questa_lib/msim/mult_gen_v12_0_18
vmap cordic_v6_0_18 questa_lib/msim/cordic_v6_0_18
vmap xbip_dsp48_multadd_v3_0_6 questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap dds_compiler_v6_0_22 questa_lib/msim/dds_compiler_v6_0_22
vmap fir_compiler_v7_2_18 questa_lib/msim/fir_compiler_v7_2_18

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../ipstatic/work/hdl" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10  -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6  -93 \
"../../../ipstatic/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93 \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6  -93 \
"../../../ipstatic/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14  -93 \
"../../../ipstatic/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_c_addsub_v12_0_i0/sim/configurablereceiver_c_addsub_v12_0_i0.vhd" \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_c_addsub_v12_0_i1/sim/configurablereceiver_c_addsub_v12_0_i1.vhd" \

vcom -work axi_utils_v2_0_6  -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cic_compiler_v4_0_16  -93 \
"../../../ipstatic/hdl/cic_compiler_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_cic_compiler_v4_0_i0/sim/configurablereceiver_cic_compiler_v4_0_i0.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18  -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_18  -93 \
"../../../ipstatic/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_cordic_v6_0_i0/sim/configurablereceiver_cordic_v6_0_i0.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93 \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_22  -93 \
"../../../ipstatic/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_dds_compiler_v6_0_i0/sim/configurablereceiver_dds_compiler_v6_0_i0.vhd" \

vcom -work fir_compiler_v7_2_18  -93 \
"../../../ipstatic/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_fir_compiler_v7_2_i0/sim/configurablereceiver_fir_compiler_v7_2_i0.vhd" \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_fir_compiler_v7_2_i1/sim/configurablereceiver_fir_compiler_v7_2_i1.vhd" \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_fir_compiler_v7_2_i2/sim/configurablereceiver_fir_compiler_v7_2_i2.vhd" \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_fir_compiler_v7_2_i3/sim/configurablereceiver_fir_compiler_v7_2_i3.vhd" \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_mult_gen_v12_0_i0/sim/configurablereceiver_mult_gen_v12_0_i0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../ipstatic/work/hdl" \
"../../../ipstatic/work/hdl/synth_reg.v" \
"../../../ipstatic/work/hdl/synth_reg_w_init.v" \
"../../../ipstatic/work/hdl/convert_type.v" \
"../../../ipstatic/work/hdl/xlclockdriver_rd.v" \
"../../../ipstatic/work/hdl/configurablereceiver_entity_declarations.v" \
"../../../ipstatic/work/hdl/configurablereceiver.v" \
"../../../../SPI.gen/sources_1/ip/configurablereceiver_0/sim/configurablereceiver_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
