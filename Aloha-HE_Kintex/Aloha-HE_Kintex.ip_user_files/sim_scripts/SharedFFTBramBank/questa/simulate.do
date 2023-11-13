onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SharedFFTBramBank_opt

do {wave.do}

view wave
view structure
view signals

do {SharedFFTBramBank.udo}

run -all

quit -force
