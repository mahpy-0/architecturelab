-------------------------------------------------------------------------------
--
-- Title       : full_adder
-- Design      : Session2
-- Author      : m.smasoudi72@gmail.com
-- Company     : SalTech
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Session2\src\full_adder.vhd
-- Generated   : Mon Oct 21 09:11:20 2024
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
--{component {full_adder} architecture {str}}

library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 c_in : in STD_LOGIC;
		 s : out STD_LOGIC;
		 c_out : out STD_LOGIC
	     );
end full_adder;

--}} End of automatically maintained section

architecture str of full_adder is 
component gate_and2i is
	 port(
		 i0 : in STD_LOGIC;
		 i1 : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end component;
component gate_or3i is
	 port(
		 i0 : in STD_LOGIC;
		 i1 : in STD_LOGIC;
		 i2 : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end component;
component gate_xor2i is
	 port(
		 i0 : in STD_LOGIC;
		 i1 : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end component;
signal s1, s2, s3, s4 : STD_LOGIC;
begin
	u1: gate_xor2i port map
		 (i0 => x, i1 => y, q => s1);
	
	u2: gate_xor2i port map
		(i0 => s1, i1 => c_in, q => s);
	
	u3: gate_and2i port map
		(i0 => x, i1 => y, q => s2);
	
	u4: gate_and2i port map
		(i0 => x, i1 => c_in, q => s3);	  
	
	u5: gate_and2i port map
		(i0 => y, i1 => c_in, q => s4);
	
	u6: gate_or3i port map
		(i0 => s2, i1 => s3, i2 => s4, q => c_out);

end str;
