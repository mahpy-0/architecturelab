SetActiveLib -work
comp -include "$dsn\src\mix2i.vhd" 
comp -include "$dsn\src\TestBench\mix2i_TB.vhd" 
asim +access +r TESTBENCH_FOR_mix2i 
wave 
wave -noreg a
wave -noreg b
wave -noreg q
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\mix2i_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_mix2i 
