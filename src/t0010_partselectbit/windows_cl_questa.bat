set MODEL_TECH=C:/questasim64_2024.1
cl /LD partselectbit.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:partselectbit  /OUT:partselectbit.dll
vlib work
vlog top.sv
vsim -c top -sv_lib partselectbit -do "run -all; quit"