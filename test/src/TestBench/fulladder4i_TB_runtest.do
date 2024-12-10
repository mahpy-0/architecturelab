SetActiveLib -work
comp -include "$dsn\src\fulladder4i.vhd" 
comp -include "$dsn\src\TestBench\fulladder4i_TB.vhd" 
asim +access +r TESTBENCH_FOR_fulladder4i 
wave 
wave -noreg x
wave -noreg y
wave -noreg cin
wave -noreg cout
wave -noreg s
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\fulladder4i_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_fulladder4i 
