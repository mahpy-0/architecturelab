library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity xor2i_tb is
end xor2i_tb;

architecture TB_ARCHITECTURE of xor2i_tb is
	-- Component declaration of the tested unit
	component xor2i
	port(
		i0 : in STD_LOGIC;
		i1 : in STD_LOGIC;
		q : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal i0 : STD_LOGIC;
	signal i1 : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal q : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : xor2i
		port map (
			i0 => i0,
			i1 => i1,
			q => q
		);

	-- Add your stimulus here ...
	i0 <= '0' , '1' after 50ns ;
	i1 <= '1' , '0' after 50ns ;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_xor2i of xor2i_tb is
	for TB_ARCHITECTURE
		for UUT : xor2i
			use entity work.xor2i(xor2i);
		end for;
	end for;
end TESTBENCH_FOR_xor2i;

