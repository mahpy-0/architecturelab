-------------------------------------------------------------------------------
--
-- Title       : reg8b
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\reg8b.vhd
-- Generated   : Mon Nov 18 11:03:52 2024
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
--{entity {reg8b} architecture {reg8b}}

library IEEE;
use IEEE.std_logic_1164.all;

entity reg8b is
	 port(
		 clk : in STD_LOGIC;
		 q : out STD_LOGIC_VECTOR(7 downto 0);
		 d : in STD_LOGIC_VECTOR(7 downto 0)
	     );
end reg8b;

--}} End of automatically maintained section

architecture reg8b of reg8b is
begin

	 -- enter your statements here --
	 q(0) <= d(0);
	 q(1) <= d(1);
	 q(2) <= d(2);
	 q(3) <= d(3);
	 q(4) <= d(4);
	 q(5) <= d(5);
	 q(6) <= d(6);
	 q(7) <= d(7);
end reg8b;
