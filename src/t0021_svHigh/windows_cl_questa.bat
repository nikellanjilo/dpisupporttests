set MODEL_TECH=C:/questasim64_2024.1
cl /LD function.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:svHighFunction  /OUT:function.dll
vlib work
vlog top.sv
vsim -c top -sv_lib function -do "run -all; quit"