SetActiveLib -work
comp -include "$dsn\src\rom1.vhd" 
comp -include "$dsn\src\TestBench\rom1_TB.vhd" 
asim +access +r TESTBENCH_FOR_rom1 
wave 
wave -noreg data
wave -noreg address
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\rom1_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_rom1 
