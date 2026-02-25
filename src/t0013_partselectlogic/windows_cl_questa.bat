set MODEL_TECH=C:/questasim64_2024.1
cl /LD partselectlogic.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:partselectlogic2  /OUT:partselectlogic.dll
vlib work
vlog top.sv
vsim -c top -sv_lib partselectlogic -do "run -all; quit"