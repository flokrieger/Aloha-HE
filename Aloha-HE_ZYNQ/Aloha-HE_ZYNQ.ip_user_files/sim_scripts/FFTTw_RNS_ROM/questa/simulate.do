onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FFTTw_RNS_ROM_opt

do {wave.do}

view wave
view structure
view signals

do {FFTTw_RNS_ROM.udo}

run -all

quit -force
