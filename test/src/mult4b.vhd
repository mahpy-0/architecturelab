-------------------------------------------------------------------------------
--
-- Title       : g_MULTI4bit
-- Design      : test7
-- Author      : MEYBODUNI
-- Company     : MEYBODUNI
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\test7\src\g_MULTI4bit.vhd
-- Generated   : Mon Nov  4 10:53:47 2024
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
--{entity {g_MULTI4bit} architecture {str}}

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

architecture str of mult4b is 
type M1 is array (0 to 3 ) of std_logic_vector(0 to 3 );
signal X : M1;
type M2 is array (0 to 3 ) of std_logic_vector (0 to 2 );
signal sum, carry : M2 ;
 component fulladder is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 cin : in STD_LOGIC;
		 cout : out STD_LOGIC;
		 s : out STD_LOGIC
	     );
end component;
begin		  
	g1 : for i in 0 to 3 generate
		g2 : for j in 0 to 3 generate 
			x(i)(j) <= a(j) and b(i);
		end generate;
	end generate;
	g3 : for k in 0 to 2 generate
		FA_k : fulladder port map (x(k)(1), x(k + 1)(0), '0', carry(0)(k), sum(0)(k));
		end generate;
	g4: for l in 0 to 1 generate
		g5 : for n in 0 to 1 generate
			FALN: fulladder port map (x(n)(l + 2), sum(l)(n + 1), carry(l)(n), carry(l + 1)(n),sum(l + 1)(n));	
		end generate;
	end generate;
	g6: for p in 0 to 1 generate 
		F_AP : fulladder port map (x(3)(p + 1), x(2)(p + 2), carry(p)(2),carry(p + 1)(2), sum(p + 1)(2));
	end generate;
	g7: fulladder port map ('0',sum(2)(1), carry(2)(0),carry(3)(0),sum(3)(0));
	g8: fulladder port map (carry(3)(0),  sum(2)(2), carry(2)(1), carry(3)(1), sum(3)(1));	
	g9: fulladder port map (carry(3)(1),  x(3)(3), carry(2)(2), carry(3)(2), sum(3)(2));
	
	p(0) <= x(0)(0);
	p(1) <= sum(0)(0);
	p(2) <= sum(1)(0);
	p(3) <= sum(2)(0);
	p(4) <= sum(3)(0);
	p(5) <= sum(3)(1);
	p(6) <= sum(3)(2);
	p(7) <= carry(3)(2);
	
	
	 -- enter your statements here --

end str;
