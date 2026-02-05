cl /LD dpi_to_int.c /link /EXPORT:dpi_to_int /OUT:dpi_to_int.dll
vlib work
vlog top.sv
vsim -c top -sv_lib dpi_to_int -do "run -all; quit"