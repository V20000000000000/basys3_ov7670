transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+buffer_RAM_12x131072  -L xpm -L blk_mem_gen_v8_4_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.buffer_RAM_12x131072 xil_defaultlib.glbl

do {buffer_RAM_12x131072.udo}

run 1000ns

endsim

quit -force
