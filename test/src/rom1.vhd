-------------------------------------------------------------------------------
--
-- Title       : rom1
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\rom1.vhd
-- Generated   : Mon Nov 25 09:24:22 2024
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {rom1} architecture {rom1}}

library IEEE;
use IEEE.std_logic_1164.all;
use work.rom.all;
use ieee.std_logic_unsigned.all;


entity rom1 is
	 port(
		 data : out rom_word;
		 address : in STD_LOGIC_VECTOR(2 downto 0)
	     );
end rom1;

--}} End of automatically maintained section

architecture rom1 of rom1 is
begin

	 -- enter your statements here --
	 data <= rom(conv_Integer(address)) after 20ns;
end rom1;
