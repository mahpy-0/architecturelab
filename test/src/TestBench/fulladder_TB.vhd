library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity fulladder_tb is
end fulladder_tb;

architecture TB_ARCHITECTURE of fulladder_tb is
	-- Component declaration of the tested unit
	component fulladder
	port(
		x : in STD_LOGIC;
		y : in STD_LOGIC;
		cin : in STD_LOGIC;
		s : out STD_LOGIC;
		cout : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal x : STD_LOGIC;
	signal y : STD_LOGIC;
	signal cin : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal s : STD_LOGIC;
	signal cout : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : fulladder
		port map (
			x => x,
			y => y,
			cin => cin,
			s => s,
			cout => cout
		);

	-- Add your stimulus here ...
   x <= '1';
   y <= '1';
   cin <= '1';
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_fulladder of fulladder_tb is
	for TB_ARCHITECTURE
		for UUT : fulladder
			use entity work.fulladder(fulladder);
		end for;
	end for;
end TESTBENCH_FOR_fulladder;

