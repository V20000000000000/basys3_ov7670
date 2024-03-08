vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../ipstatic" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" \
"../../../../7670_test111.gen/sources_1/ip/clock_PLL_100_50_25MHz/clock_PLL_100_50_25MHz_clk_wiz.v" \
"../../../../7670_test111.gen/sources_1/ip/clock_PLL_100_50_25MHz/clock_PLL_100_50_25MHz.v" \

vlog -work xil_defaultlib \
"glbl.v"

