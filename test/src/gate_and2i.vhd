-------------------------------------------------------------------------------
--
-- Title       : gate_and2i
-- Design      : Session2
-- Author      : m.smasoudi72@gmail.com
-- Company     : SalTech
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Session2\src\gate_and2i.vhd
-- Generated   : Mon Oct 21 09:12:49 2024
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
--{entity {gate_and2i} architecture {beh}}														

library IEEE;
use IEEE.std_logic_1164.all;

entity gate_and2i is
	 port(
		 i0 : in STD_LOGIC;
		 i1 : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end gate_and2i;

--}} End of automatically maintained section

architecture beh of gate_and2i is
begin

	q <= i0 and i1;

end beh;
