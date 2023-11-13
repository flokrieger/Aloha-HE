onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib DSP_A_x_B_opt

do {wave.do}

view wave
view structure
view signals

do {DSP_A_x_B.udo}

run -all

quit -force
