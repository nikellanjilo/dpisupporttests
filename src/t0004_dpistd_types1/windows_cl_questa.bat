cl /LD compute_logic_vector.c /link /EXPORT:compute_logic_vector /OUT:compute_logic_vector.dll
vlib work
vlog top.sv
vsim -c top -sv_lib compute_logic_vector -do "run -all; quit"