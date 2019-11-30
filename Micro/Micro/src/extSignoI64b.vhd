---------------------------------------------------------------------------------------------------
--
-- Title       : extSignoI64b
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : extSignoI64b.vhd
-- Generated   : Thu Nov 21 06:22:44 2019
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
--{entity {extSignoI64b} architecture {extSignoI64b}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity extSignoI64b is
	 port(
		 entrada : in STD_LOGIC_VECTOR(11 downto 0);
		 salida : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end extSignoI64b;


architecture extSignoI64b of extSignoI64b is
begin
	process(entrada)
	begin 
	 	if  entrada(11) = '0' then
			salida <= "0000000000000000000000000000000000000000000000000000" & entrada;
		else
			salida <= "1111111111111111111111111111111111111111111111111111" & entrada;
		end if;
	end process;
end extSignoI64b;
