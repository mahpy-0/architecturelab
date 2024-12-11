SetActiveLib -work
comp -include "$dsn\src\and4bit.vhd" 
comp -include "$dsn\src\TestBench\and4bit_TB.vhd" 
asim +access +r TESTBENCH_FOR_and4bit 
wave 
wave -noreg a
wave -noreg b
wave -noreg q
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\and4bit_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_and4bit 
