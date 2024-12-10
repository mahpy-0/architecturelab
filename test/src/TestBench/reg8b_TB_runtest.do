SetActiveLib -work
comp -include "$dsn\src\reg8b.vhd" 
comp -include "$dsn\src\TestBench\reg8b_TB.vhd" 
asim +access +r TESTBENCH_FOR_reg8b 
wave 
wave -noreg clk
wave -noreg q
wave -noreg d
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\reg8b_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_reg8b 
