-------------------------------------------------------------------------------
--
-- Title       : mix2i
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\mix2i.vhd
-- Generated   : Sun Oct 27 19:21:55 2024
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
--{entity {mix2i} architecture {mix2i}}

library IEEE;
use IEEE.std_logic_1164.all;

entity mix2i is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end mix2i;

--}} End of automatically maintained section

architecture mix2i of mix2i is

	 -- enter your statements here --
	 	component or3i is
	 port(
		 i0 : in std_logic;
		 i1 : in std_logic;
		 i2 : in std_logic;
		 q : out std_logic
	     );
	end component;
		component not1i is
	 port(
		 i0 : in std_logic;
		 q : out std_logic
	     );
	end component;
	signal s1,s2:std_logic;
begin
	u1: not1i port map (i0 => a , q => s1);
	u2: not1i port map (i0 => b , q => s2);
	u3: or3i port map (i0 => s1 , i1 => s2 , i2 => s1 , q => q);
end mix2i;
