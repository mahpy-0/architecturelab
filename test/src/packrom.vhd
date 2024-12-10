-------------------------------------------------------------------------------
--
-- Title       : packrom
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\packrom.vhd
-- Generated   : Mon Nov 25 08:57:38 2024
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
--{entity {packrom} architecture {packrom}}

library ieee; 
use ieee.std_logic_1164.all;
package rom is
	constant rom_length : Integer := 8;
	constant word_length : Integer := 8;
subtype rom_word is STD_LOGIC_VECTOR ( word_length-1 downto 0);
type rom_table is array (0 to rom_length-1) of rom_word ;
constant rom : rom_table :=(x"00",x"02",x"04",x"06",x"08",x"a0",x"a2",x"a4");
end package;
				 


