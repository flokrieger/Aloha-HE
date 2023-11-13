onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L xbip_dsp48_macro_v3_0_17 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.DSP_A_x_B_p_C xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {DSP_A_x_B_p_C.udo}

run -all

quit -force
