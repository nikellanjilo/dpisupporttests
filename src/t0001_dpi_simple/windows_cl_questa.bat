cl /LD dpi.c /link /EXPORT:dpi_add /OUT:dpi.dll
vlib work
vlog t0001_dpi_simple.sv
vsim -c top -sv_lib dpi -do "run -all; quit"