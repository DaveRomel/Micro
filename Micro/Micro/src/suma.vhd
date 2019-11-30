---------------------------------------------------------------------------------------------------
--
-- Title       : suma
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : suma.vhd
-- Generated   : Tue Nov 26 05:05:53 2019
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
--{entity {suma} architecture {suma}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity suma is
	 port(
		 A : in STD_LOGIC_VECTOR(63 downto 0);
		 B : in STD_LOGIC_VECTOR(63 downto 0);
		 Salida : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end suma;


architecture suma of suma is
begin
	process(A,B)
		begin
			Salida <= A+B;
	end process;
end suma;
