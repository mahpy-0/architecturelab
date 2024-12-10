-------------------------------------------------------------------------------
--
-- Title       : xor2i
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\xor2i.vhd
-- Generated   : Sun Oct 20 22:15:37 2024
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
--{entity {xor2i} architecture {xor2i}}

library IEEE;
use IEEE.std_logic_1164.all;

entity xor2i is
	 port(
		 i0 : in std_logic;
		 i1 : in std_logic;
		 q : out std_logic
	     );
end xor2i;

--}} End of automatically maintained section

architecture xori of xor2i is
begin

	 -- enter your statements here --
	 q <= i0 xor i1;
end xori;
