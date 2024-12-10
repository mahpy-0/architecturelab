-------------------------------------------------------------------------------
--
-- Title       : \4bit_full_adder\
-- Design      : Session2
-- Author      : m.smasoudi72@gmail.com
-- Company     : SalTech
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Session2\src\4bit_full_adder.vhd
-- Generated   : Mon Oct 28 09:16:10 2024
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
--{entity {\4bit_full_adder\} architecture {str}}

library IEEE;
use IEEE.std_logic_1164.all;

entity IVbit_full_adder is
	 port(
		 c_in : in STD_LOGIC;
		 c_out : out STD_LOGIC;
		 x : in STD_LOGIC_VECTOR(3 downto 0);
		 y : in STD_LOGIC_VECTOR(3 downto 0);
		 sum : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end IVbit_full_adder;

--}} End of automatically maintained section

architecture str of IVbit_full_adder is
component gate_xor2i is
	 port(
		 i0 : in STD_LOGIC;
		 i1 : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end component;
component full_adder is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 c_in : in STD_LOGIC;
		 s : out STD_LOGIC;
		 c_out : out STD_LOGIC
	     );
end component;
signal sig : STD_LOGIC_VECTOR(3 downto 0);
signal carry : STD_LOGIC_VECTOR(4 downto 0);
begin					 
	labal1 : for i in 0 to 3 generate
		xor_i : gate_xor2i port map (c_in, y(i), sig(i));	 
		fa_i : full_adder port map (x(i), sig(i), carry(i), sum(i), carry(i+1));
	end generate;
	carry(0) <= c_in;
	c_out <= carry(4);
		

end str;
