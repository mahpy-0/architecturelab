-------------------------------------------------------------------------------
--
-- Title       : not1i
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\not1i.vhd
-- Generated   : Sun Oct 27 19:25:07 2024
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
--{entity {not1i} architecture {not1i}}

library IEEE;
use IEEE.std_logic_1164.all;

entity not1i is
	 port(
		 i0 : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end not1i;

--}} End of automatically maintained section

architecture not1i of not1i is
begin

	 -- enter your statements here --
	 q <= not i0;
end not1i;
