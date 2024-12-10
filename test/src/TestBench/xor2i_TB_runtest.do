SetActiveLib -work
comp -include "$dsn\src\xor2i.vhd" 
comp -include "$dsn\src\TestBench\xor2i_TB.vhd" 
asim +access +r TESTBENCH_FOR_xor2i 
wave 
wave -noreg i0
wave -noreg i1
wave -noreg q
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\xor2i_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_xor2i 
