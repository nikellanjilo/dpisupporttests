cl /LD compute.c /link /EXPORT:compute /OUT:compute.dll
vlib work
vlog top.sv
vsim -c top -sv_lib compute -do "run -all; quit"