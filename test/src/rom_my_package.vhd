library ieee;
use ieee.std_logic_1164.all;

package My_package is
	constant rom_length: Integer := 8;
	constant word_length: integer := 8;
	
	subtype rom_word 	   is std_logic_vector (word_length-1 downto 0);
	type rom_table is array(0 to rom_length-1) of rom_word;
	constant rom: rom_table := (x"02", x"04", x"08", x"0A", x"0F", x"10", x"12", x"14");
end package;