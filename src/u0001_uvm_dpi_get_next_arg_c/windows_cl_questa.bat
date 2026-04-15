vlib work

vlog -sv tb_pkg.sv tb_top.sv

vsim -c top +UVM_TESTNAME=simple_test +FOO=123 +BAR=hello +DEBUG -do "run -all; quit"