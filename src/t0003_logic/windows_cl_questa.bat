cl /LD compute.c /link /EXPORT:compute /OUT:compute.dll
vlib work
vlog t0003_logic.sv
vsim -c top -sv_lib compute -do "run -all; quit"