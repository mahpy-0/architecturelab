library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use IEEE.std_logic_1164.all;
library test;
use test.rom.all;

	-- Add your library and packages declaration here ...

entity rom1_tb is
end rom1_tb;

architecture TB_ARCHITECTURE of rom1_tb is
	-- Component declaration of the tested unit
	component rom1
	port(
		data : out rom_word;
		address : in STD_LOGIC_VECTOR(2 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal address : STD_LOGIC_VECTOR(2 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal data : rom_word;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : rom1
		port map (
			data => data,
			address => address
		);

	-- Add your stimulus here ...
	

	--address <="111" ;
	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_rom1 of rom1_tb is
	for TB_ARCHITECTURE
		for UUT : rom1
			use entity work.rom1(rom1);
		end for;
	end for;
end TESTBENCH_FOR_rom1;

