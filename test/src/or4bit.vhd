-------------------------------------------------------------------------------
--
-- Title       : or4bit
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\architecturelab\test\src\or4bit.vhd
-- Generated   : Wed Dec 11 14:45:10 2024
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
--{entity {or4bit} architecture {or4bit}}

library IEEE;
use IEEE.std_logic_1164.all;

entity or4bit is
		Port (
		a : in STD_LOGIC_VECTOR(3 downto 0);
		b : in STD_LOGIC_VECTOR(3 downto 0);
		q : out STD_LOGIC_VECTOR(3 downto 0)
		);
end or4bit;

--}} End of automatically maintained section

architecture or4bit of or4bit is
begin

	 -- enter your statements here --
	q(0) <= a(0) or b(0);
	q(1) <= a(1) or b(1);
	q(2) <= a(2) or b(2);
	q(3) <= a(3) or b(3);
end or4bit;
