---------------------------------------------------------------------------------------------------
--
-- Title       : Add4
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : Add4.vhd
-- Generated   : Mon Nov 11 20:35:29 2019
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Add4} architecture {Add4}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;


entity Add4 is
	 port(
		 PcIn : in STD_LOGIC_VECTOR(63 downto 0);
		 PcOut : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end Add4;



architecture Add4 of Add4 is
begin
	process(PcIn)
	begin
		PcOut <= PcIn + x"0000000000000004";
	end process;
end Add4;
