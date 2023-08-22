onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RegisterModule_ila_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {RegisterModule_ila.udo}

run -all

quit -force
