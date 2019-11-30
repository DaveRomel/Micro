---------------------------------------------------------------------------------------------------
--
-- Title       : regMux
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : regMux.vhd
-- Generated   : Tue Nov 12 00:39:50 2019
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
--{entity {regMux} architecture {regMux}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity regMux is
	 port(
		 Reg2Loc : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(4 downto 0);
		 B : in STD_LOGIC_VECTOR(4 downto 0);
		 Sal : out STD_LOGIC_VECTOR(4 downto 0)
	     );
end regMux;


architecture regMux of regMux is
begin
	process(Reg2Loc,A,B)
	begin
		if Reg2Loc = '0' then
			Sal <= A;
		else
			Sal <= B;
	   	end if;
	end process;
end regMux;
