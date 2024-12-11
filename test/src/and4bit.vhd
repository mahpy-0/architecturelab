-------------------------------------------------------------------------------
--
-- Title       : and4bit
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\architecturelab\test\src\and4bit.vhd
-- Generated   : Wed Dec 11 14:44:40 2024
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
--{entity {and4bit} architecture {and4bit}}

library IEEE;
use IEEE.std_logic_1164.all;

entity and4bit is
	Port (
		a : in STD_LOGIC_VECTOR(3 downto 0);
		b : in STD_LOGIC_VECTOR(3 downto 0);
		q : out STD_LOGIC_VECTOR(3 downto 0)
		);
end and4bit;

--}} End of automatically maintained section

architecture and4bit of and4bit is
begin

	 -- enter your statements here --
	 q(0) <= a(0) and b(0);
	 q(1) <= a(1) and b(1);
	 q(2) <= a(2) and b(2);
	 q(3) <= a(3) and b(3);
end and4bit;
