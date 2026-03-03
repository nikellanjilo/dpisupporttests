cl /LD compute_logic_vector.c /link /EXPORT:compute_logic_vector /OUT:compute_logic_vector.dll
vlib work
vlog t0004_dpistd_types1.sv
vsim -c top -sv_lib compute_logic_vector -do "run -all; quit"