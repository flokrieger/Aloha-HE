onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib NTTPolyBank_opt

do {wave.do}

view wave
view structure
view signals

do {NTTPolyBank.udo}

run -all

quit -force
