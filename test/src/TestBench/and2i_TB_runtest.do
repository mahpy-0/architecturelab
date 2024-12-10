SetActiveLib -work
comp -include "$dsn\src\and2i.vhd" 
comp -include "$dsn\src\TestBench\and2i_TB.vhd" 
asim +access +r TESTBENCH_FOR_and2i 
wave 
wave -noreg i0
wave -noreg i1
wave -noreg q
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\and2i_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_and2i 
