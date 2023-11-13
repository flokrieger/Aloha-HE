onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib TernaryPolyBRAM_opt

do {wave.do}

view wave
view structure
view signals

do {TernaryPolyBRAM.udo}

run -all

quit -force
