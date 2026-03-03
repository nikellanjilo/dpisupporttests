set MODEL_TECH=C:/questasim64_2024.1
cl /LD function.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:svGetLogicArrElem3Function  /OUT:function.dll
vlib work
vlog t0054_svGetLogicArrElem3.sv
vsim -c top -sv_lib function -do "run -all; quit"