library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity reg8b_tb is
end reg8b_tb;

architecture TB_ARCHITECTURE of reg8b_tb is
	-- Component declaration of the tested unit
	component reg8b
	port(
		clk : in STD_LOGIC;
		q : out STD_LOGIC_VECTOR(7 downto 0);
		d : in STD_LOGIC_VECTOR(7 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : STD_LOGIC;
	signal d : STD_LOGIC_VECTOR(7 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal q : STD_LOGIC_VECTOR(7 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : reg8b
		port map (
			clk => clk,
			q => q,
			d => d
		);

	-- Add your stimulus here ...
	d <= "11110000" , "00001111" after 50 ns;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_reg8b of reg8b_tb is
	for TB_ARCHITECTURE
		for UUT : reg8b
			use entity work.reg8b(reg8b);
		end for;
	end for;
end TESTBENCH_FOR_reg8b;

