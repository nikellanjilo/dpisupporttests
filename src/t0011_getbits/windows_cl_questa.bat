set MODEL_TECH=C:/questasim64_2024.1
cl /LD getbits.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:getbits  /OUT:getbits.dll
vlib work
vlog top.sv
vsim -c top -sv_lib getbits -do "run -all; quit"