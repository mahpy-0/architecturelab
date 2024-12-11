library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity and4bit_tb is
end and4bit_tb;

architecture TB_ARCHITECTURE of and4bit_tb is
	-- Component declaration of the tested unit
	component and4bit
	port(
		a : in STD_LOGIC_VECTOR(3 downto 0);
		b : in STD_LOGIC_VECTOR(3 downto 0);
		q : out STD_LOGIC_VECTOR(3 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal a : STD_LOGIC_VECTOR(3 downto 0);
	signal b : STD_LOGIC_VECTOR(3 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal q : STD_LOGIC_VECTOR(3 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : and4bit
		port map (
			a => a,
			b => b,
			q => q
		);

	-- Add your stimulus here ...
	a <= "1010";
	b <= "1111";
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_and4bit of and4bit_tb is
	for TB_ARCHITECTURE
		for UUT : and4bit
			use entity work.and4bit(and4bit);
		end for;
	end for;
end TESTBENCH_FOR_and4bit;

