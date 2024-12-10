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

entity fulladder4i is
	 port(
		 cin : in STD_LOGIC;
		 cout : out STD_LOGIC;
		 x : in STD_LOGIC_VECTOR(3 downto 0);
		 y : in STD_LOGIC_VECTOR(3 downto 0);
		 sum : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end fulladder4i;

--}} End of automatically maintained section

architecture str of fulladder4i is
component xor2i is
	 port(
		 i0 : in STD_LOGIC;
		 i1 : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end component;
component fulladder is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 cin : in STD_LOGIC;
		 s : out STD_LOGIC;
		 cout : out STD_LOGIC
	     );
end component;
signal sig : STD_LOGIC_VECTOR(3 downto 0);
signal carry : STD_LOGIC_VECTOR(4 downto 0);
begin					 
	labal1 : for i in 0 to 3 generate
		xor_i : xor2i port map (cin, y(i), sig(i));	 
		fa_i : fulladder port map (x(i), sig(i), carry(i), sum(i), carry(i+1));
	end generate;
	carry(0) <= cin;
	cout <= carry(4);
		

end str;
