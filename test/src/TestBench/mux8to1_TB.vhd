library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity mux8to1_tb is
end mux8to1_tb;

architecture TB_ARCHITECTURE of mux8to1_tb is
	-- Component declaration of the tested unit
	component mux8to1
	port(
		D : in STD_LOGIC_VECTOR(7 downto 0);
		Sel : in STD_LOGIC_VECTOR(2 downto 0);
		Y : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal D : STD_LOGIC_VECTOR(7 downto 0);
	signal Sel : STD_LOGIC_VECTOR(2 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Y : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : mux8to1
		port map (
			D => D,
			Sel => Sel,
			Y => Y
		);

	-- Add your stimulus here ...
   d <= "00001111";
   sel <= "000";
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_mux8to1 of mux8to1_tb is
	for TB_ARCHITECTURE
		for UUT : mux8to1
			use entity work.mux8to1(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_mux8to1;

