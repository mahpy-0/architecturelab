library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity fulladder4i_tb is
end fulladder4i_tb;

architecture TB_ARCHITECTURE of fulladder4i_tb is
	-- Component declaration of the tested unit
	component fulladder4i
	port(
		x : in STD_LOGIC_VECTOR(3 downto 0);
		y : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		cout : out STD_LOGIC;
		s : out STD_LOGIC_VECTOR(3 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal x : STD_LOGIC_VECTOR(3 downto 0);
	signal y : STD_LOGIC_VECTOR(3 downto 0);
	signal cin : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal cout : STD_LOGIC;
	signal s : STD_LOGIC_VECTOR(3 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : fulladder4i
		port map (
			x => x,
			y => y,
			cin => cin,
			cout => cout,
			s => s
		);

	-- Add your stimulus here ...
	x<="1100";
	y<="0011";
	cin<='0';
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_fulladder4i of fulladder4i_tb is
	for TB_ARCHITECTURE
		for UUT : fulladder4i
			use entity work.fulladder4i(fulladder4i);
		end for;
	end for;
end TESTBENCH_FOR_fulladder4i;

