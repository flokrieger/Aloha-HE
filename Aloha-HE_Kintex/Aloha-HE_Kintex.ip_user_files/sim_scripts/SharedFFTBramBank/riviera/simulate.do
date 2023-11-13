onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+SharedFFTBramBank -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SharedFFTBramBank xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {SharedFFTBramBank.udo}

run -all

endsim

quit -force
