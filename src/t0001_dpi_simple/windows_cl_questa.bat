cl /LD dpi.c /link /EXPORT:dpi_add /OUT:dpi.dll
vlib work
vlog top.sv
vsim -c top -sv_lib dpi -do "run -all; quit"