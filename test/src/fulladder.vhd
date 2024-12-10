-------------------------------------------------------------------------------
--
-- Title       : fulladder
-- Design      : test
-- Author      : test
-- Company     : Test
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\test\src\fulladder.vhd
-- Generated   : Mon Oct 21 10:53:04 2024
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
--{entity {fulladder} architecture {fulladder}}

library IEEE;
use IEEE.std_logic_1164.all;

entity fulladder is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 cin : in STD_LOGIC; 
		 s : out STD_LOGIC;
		 cout : out STD_LOGIC
	     );
end fulladder;

--}} End of automatically maintained section

architecture fulladder of fulladder is


-- enter your statements here --  
	component or3i is
	 port(
		 i0 : in std_logic;
		 i1 : in std_logic;
		 i2 : in std_logic;
		 q : out std_logic
	     );
	end component;
	component xor2i is
	 port(
		 i0 : in std_logic;
		 i1 : in std_logic;
		 q : out std_logic
	     );
	end component;
		component and2i is                      
	 port(
		 i0 : in std_logic;
		 i1 : in std_logic;
		 q : out std_logic
	     );
	end component;
	signal s1,s2,s3,s4:std_logic;
begin
	u1: xor2i port map (i0 => x , i1 => y , q => s1);
	u2: xor2i port map (i0 => s1 , i1 => cin , q => s);
	u3: and2i port map (i0 => x , i1 => y , q => s2);
	u4: and2i port map (i0 => x , i1 => cin , q => s3);
	u5: and2i port map (i0 => y , i1 => cin , q => s4);
	u6: or3i port map (i0 => s2 , i1 => s3 , i2 => s4, q => cout);
end fulladder;
