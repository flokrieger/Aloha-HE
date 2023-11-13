onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MontRed_DSP_MultAdd_opt

do {wave.do}

view wave
view structure
view signals

do {MontRed_DSP_MultAdd.udo}

run -all

quit -force
