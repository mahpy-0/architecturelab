library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity or3i_tb is
end or3i_tb;

architecture TB_ARCHITECTURE of or3i_tb is
	-- Component declaration of the tested unit
	component or3i
	port(
		i0 : in STD_LOGIC;
		i1 : in STD_LOGIC;
		i2 : in STD_LOGIC;
		q : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal i0 : STD_LOGIC;
	signal i1 : STD_LOGIC;
	signal i2 : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal q : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : or3i
		port map (
			i0 => i0,
			i1 => i1,
			i2 => i2,
			q => q
		);

	-- Add your stimulus here ...
	i0 <= '0' , '0' after 50ns ;
	i1 <= '0' , '0' after 50ns ;
	i2 <= '0' , '1' after 50ns ;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_or3i of or3i_tb is
	for TB_ARCHITECTURE
		for UUT : or3i
			use entity work.or3i(or3i);
		end for;
	end for;
end TESTBENCH_FOR_or3i;

