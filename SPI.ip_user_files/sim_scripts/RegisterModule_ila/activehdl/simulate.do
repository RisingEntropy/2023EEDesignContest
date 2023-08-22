onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RegisterModule_ila -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RegisterModule_ila xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {RegisterModule_ila.udo}

run -all

endsim

quit -force
