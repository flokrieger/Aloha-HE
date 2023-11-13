onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib CBDPolyBRAM_opt

do {wave.do}

view wave
view structure
view signals

do {CBDPolyBRAM.udo}

run -all

quit -force
