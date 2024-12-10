-------------------------------------------------------------------------------
--
-- Title       : gate_xor2i
-- Design      : Session2
-- Author      : m.smasoudi72@gmail.com
-- Company     : SalTech
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Session2\src\gate_xor2i.vhd
-- Generated   : Mon Oct 21 09:16:04 2024
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
--{entity {gate_xor2i} architecture {beh}}

library IEEE;
use IEEE.std_logic_1164.all;

entity gate_xor2i is
	 port(
		 i0 : in STD_LOGIC;
		 i1 : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end gate_xor2i;

--}} End of automatically maintained section

architecture beh of gate_xor2i is
begin

	q <= i0 xor i1;

end beh;
