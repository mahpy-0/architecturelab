library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity and2i_tb is
end and2i_tb;

architecture TB_ARCHITECTURE of and2i_tb is
	-- Component declaration of the tested unit
	component and2i
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
	UUT : and2i
		port map (
			i0 => i0,
			i1 => i1,
			q => q
		);

	-- Add your stimulus here ...
	i0 <= '1' , '0' after 50ns ;
	i1 <= '1' , '0' after 50ns ;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_and2i of and2i_tb is
	for TB_ARCHITECTURE
		for UUT : and2i
			use entity work.and2i(and2i);
		end for;
	end for;
end TESTBENCH_FOR_and2i;

