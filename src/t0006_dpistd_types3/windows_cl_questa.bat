cl /LD dpi_to_longint.c /link /EXPORT:dpi_to_longint /OUT:dpi_to_longint.dll
vlib work
vlog t0006_dpistd_types3.sv
vsim -c top -sv_lib dpi_to_longint -do "run -all; quit"