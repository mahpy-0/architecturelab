SetActiveLib -work
comp -include "$dsn\src\or3i.vhd" 
comp -include "$dsn\src\TestBench\or3i_TB.vhd" 
asim +access +r TESTBENCH_FOR_or3i 
wave 
wave -noreg i0
wave -noreg i1
wave -noreg i2
wave -noreg q
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\or3i_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_or3i 
