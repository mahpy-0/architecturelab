SetActiveLib -work
comp -include "$dsn\src\mult8in1.vhd" 
comp -include "$dsn\src\TestBench\mux8to1_TB.vhd" 
asim +access +r TESTBENCH_FOR_mux8to1 
wave 
wave -noreg D
wave -noreg Sel
wave -noreg Y
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\mux8to1_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_mux8to1 
