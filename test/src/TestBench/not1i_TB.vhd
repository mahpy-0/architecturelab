library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity not1i_tb is
end not1i_tb;

architecture TB_ARCHITECTURE of not1i_tb is
	-- Component declaration of the tested unit
	component not1i
	port(
		i0 : in STD_LOGIC;
		q : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal i0 : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal q : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : not1i
		port map (
			i0 => i0,
			q => q
		);

	-- Add your stimulus here ...
	i0 <= '1';
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_not1i of not1i_tb is
	for TB_ARCHITECTURE
		for UUT : not1i
			use entity work.not1i(not1i);
		end for;
	end for;
end TESTBENCH_FOR_not1i;

