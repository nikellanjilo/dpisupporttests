vlib work
vlog -sv dut.sv tb_top.sv

# ВАЖНО: +acc нужен для VPI доступа!
vsim -c tb_top -voptargs=+acc -do "run -all; quit"