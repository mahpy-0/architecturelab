-------------------------------------------------------------------------------
--
-- Title       : or3i
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\or3i.vhd
-- Generated   : Sun Oct 20 22:17:59 2024
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
--{entity {or3i} architecture {or3i}}

library IEEE;
use IEEE.std_logic_1164.all;

entity or3i is
	 port(
		 i0 : in std_logic;
		 i1 : in std_logic;
		 i2 : in std_logic;
		 q : out std_logic
	     );
end or3i;

--}} End of automatically maintained section

architecture or3i of or3i is
begin

	 -- enter your statements here --
	 q <= i0 or i1 or i2;
end or3i;
