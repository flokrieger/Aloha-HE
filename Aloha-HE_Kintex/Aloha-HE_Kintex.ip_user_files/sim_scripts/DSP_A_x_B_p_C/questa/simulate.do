onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib DSP_A_x_B_p_C_opt

do {wave.do}

view wave
view structure
view signals

do {DSP_A_x_B_p_C.udo}

run -all

quit -force
