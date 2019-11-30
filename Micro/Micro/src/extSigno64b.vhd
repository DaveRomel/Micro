---------------------------------------------------------------------------------------------------
--
-- Title       : extSigno64b
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : extSigno64b.vhd
-- Generated   : Tue Nov 12 21:03:06 2019
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
--{entity {extSigno64b} architecture {extSigno64b}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity extSigno64b is
	 port(
		 entrada : in STD_LOGIC_VECTOR(8 downto 0);
		 salida : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end extSigno64b;


architecture extSigno64b of extSigno64b is
begin
	process(entrada)
	begin 
	 	if  entrada(8) = '0' then
			salida <= "0000000000000000000000000000000000000000000000000000000" & entrada;
		else
			salida <= "1111111111111111111111111111111111111111111111111111111" & entrada;
		end if;
	end process;
end extSigno64b;
