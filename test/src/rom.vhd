library ieee;
use ieee.std_logic_1164.all;
use work.my_package.all;
use ieee.std_logic_unsigned.all;

entity ROM_EX is
	port (address: in std_logic_vector (2 downto 0);
		data : out rom_word);
end ROM_EX;

architecture beh of rom_ex is
begin
	data <= rom(conv_integer(address)) after 20ns;
end architecture;
