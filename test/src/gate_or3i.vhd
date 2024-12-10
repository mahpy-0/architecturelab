-------------------------------------------------------------------------------
--
-- Title       : gate_or3i
-- Design      : Session2
-- Author      : m.smasoudi72@gmail.com
-- Company     : SalTech
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Session2\src\gate_or3i.vhd
-- Generated   : Mon Oct 21 09:15:00 2024
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
--{entity {gate_or3i} architecture {beh}}

library IEEE;
use IEEE.std_logic_1164.all;

entity gate_or3i is
	 port(
		 i0 : in STD_LOGIC;
		 i1 : in STD_LOGIC;
		 i2 : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end gate_or3i;

--}} End of automatically maintained section

architecture beh of gate_or3i is
begin

	 q <= i0 or i1 or i2;

end beh;
