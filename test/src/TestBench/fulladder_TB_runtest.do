SetActiveLib -work
comp -include "$dsn\src\fulladder.vhd" 
comp -include "$dsn\src\TestBench\fulladder_TB.vhd" 
asim +access +r TESTBENCH_FOR_fulladder 
wave 
wave -noreg x
wave -noreg y
wave -noreg cin
wave -noreg s
wave -noreg cout
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\fulladder_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_fulladder 
