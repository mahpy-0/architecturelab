library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity mix2i_tb is
end mix2i_tb;

architecture TB_ARCHITECTURE of mix2i_tb is
	-- Component declaration of the tested unit
	component mix2i
	port(
		a : in STD_LOGIC;
		b : in STD_LOGIC;
		q : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal a : STD_LOGIC;
	signal b : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal q : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : mix2i
		port map (
			a => a,
			b => b,
			q => q
		);

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_mix2i of mix2i_tb is
	for TB_ARCHITECTURE
		for UUT : mix2i
			use entity work.mix2i(mix2i);
		end for;
	end for;
end TESTBENCH_FOR_mix2i;

