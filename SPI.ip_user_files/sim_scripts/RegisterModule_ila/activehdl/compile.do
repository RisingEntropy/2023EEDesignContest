vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../SPI.gen/sources_1/ip/RegisterModule_ila/hdl/verilog" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SPI.gen/sources_1/ip/RegisterModule_ila/hdl/verilog" \
"../../../../SPI.gen/sources_1/ip/RegisterModule_ila/sim/RegisterModule_ila.v" \

vlog -work xil_defaultlib \
"glbl.v"

