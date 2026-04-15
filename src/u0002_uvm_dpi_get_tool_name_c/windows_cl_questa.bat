vlib work
vlog -sv tb_pkg.sv tb_top.sv
vsim -c tb_top +UVM_TESTNAME=simple_test -do "run -all; quit"