set MODEL_TECH=C:/questasim64_2024.1
cl /LD function.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:svLeftFunction  /OUT:function.dll
vlib work
vlog t0018_svLeft.sv
vsim -c top -sv_lib function -do "run -all; quit"