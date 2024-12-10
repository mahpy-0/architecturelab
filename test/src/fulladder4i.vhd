-------------------------------------------------------------------------------
--
-- Title       : fulladder4i
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\fulladder4i.vhd
-- Generated   : Mon Oct 28 10:26:44 2024
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
--{entity {fulladder4i} architecture {fulladder4i}}

library IEEE;
use IEEE.std_logic_1164.all;

entity fulladder4 is
	port(
		x : in STD_LOGIC_VECTOR(3 downto 0);
		y : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		cout : out STD_LOGIC;
		s : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end fulladder4;

--}} End of automatically maintained section

architecture fulladder4i of fulladder4i is
	 	component fulladder is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 cin : in STD_LOGIC; 
		 s : out STD_LOGIC;
		 cout : out STD_LOGIC
	     );
	end component;
		component xor2i is
	 port(
		 i0 : in std_logic;
		 i1 : in std_logic;
		 q : out std_logic
	     );
	end component;
	signal sig:std_logic_vector(3 downto 0);
	signal c:std_logic_vector(4 downto 0);
begin
	  
	 -- enter your statements here --
	 g1:for i in 0 to 3 generate
		 x1:xor2i port map (  y(i),cin,sig(i));
		 x2: fulladder port map (x(i),sig(i),c(i),s(i),c(i+1)) ;
	 end generate;
	 c(0)<=cin;
	 cout<=c(4);
end fulladder4i;
