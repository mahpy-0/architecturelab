-------------------------------------------------------------------------------
--
-- Title       : and2i
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\and2i.vhd
-- Generated   : Sun Oct 20 22:12:33 2024
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
--{entity {and2i} architecture {and2i}}

library IEEE;
use IEEE.std_logic_1164.all;

entity and2i is
	 port(
		 i0 : in std_logic;
		 i1 : in std_logic;
		 q : out std_logic
	     );
end and2i;

--}} End of automatically maintained section

architecture and2i of and2i is
begin

	 -- enter your statements here --
	 q <= i0 and i1;
end and2i;
