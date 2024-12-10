-------------------------------------------------------------------------------
--
-- Title       : mult4b
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\mult4b.vhd
-- Generated   : Mon Nov  4 10:49:27 2024
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
--{entity {mult4b} architecture {mult4b}}

library IEEE;
use IEEE.std_logic_1164.all;

entity mult4b is
	 port(
		 a : in STD_LOGIC_VECTOR(3 downto 0);
		 b : in STD_LOGIC_VECTOR(3 downto 0);
		 p : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end mult4b;

--}} End of automatically maintained section

architecture mult4b of mult4b is
	 	component fulladder is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 cin : in STD_LOGIC; 
		 s : out STD_LOGIC;
		 cout : out STD_LOGIC
	     );
	end component;
begin

	 -- enter your statements here --

end mult4b;
