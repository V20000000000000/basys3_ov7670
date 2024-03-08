transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+clock_PLL_100_50_25MHz  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clock_PLL_100_50_25MHz xil_defaultlib.glbl

do {clock_PLL_100_50_25MHz.udo}

run 1000ns

endsim

quit -force
