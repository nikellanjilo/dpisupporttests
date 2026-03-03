set MODEL_TECH=C:/questasim64_2024.1
cl /LD partselectbit.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:partselectbit  /OUT:partselectbit.dll
vlib work
vlog t0012_partselectbit_3.sv
vsim -c top -sv_lib partselectbit -do "run -all; quit"