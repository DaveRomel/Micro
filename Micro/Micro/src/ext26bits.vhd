---------------------------------------------------------------------------------------------------
--
-- Title       : ext26bits
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : ext26bits.vhd
-- Generated   : Tue Nov 26 05:21:09 2019
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
--{entity {ext26bits} architecture {ext26bits}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity ext26bits is
	 port(
		 entrada : in STD_LOGIC_VECTOR(25 downto 0);
		 salida : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end ext26bits;


architecture ext26bits of ext26bits is
--signal aux: std_logic_vector (25 downto 0);
begin	 
	process(entrada)
	begin
		--aux <= ;
		salida <= "00000000000000000000000000000000000000" & std_logic_vector(unsigned(entrada) sll 2);
	end process;
end ext26bits;
