---------------------------------------------------------------------------------------------------
--
-- Title       : branch
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : branch.vhd
-- Generated   : Tue Nov 26 06:50:28 2019
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
--{entity {branch} architecture {branch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity branch is
	 port(
		 cbz : in STD_LOGIC;
		 cbnz : in STD_LOGIC;
		 zero : in STD_LOGIC;
		 salida : out STD_LOGIC
	     );
end branch;


architecture branch of branch is
begin
	process(cbz,cbnz,zero)
	begin
		salida <= (cbz and zero) or (cbnz and not zero) ;	 
	end process;
end branch;
