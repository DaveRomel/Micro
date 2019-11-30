---------------------------------------------------------------------------------------------------
--
-- Title       : extcorr2bits
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : extcorr2bits.vhd
-- Generated   : Sat Nov 23 18:06:20 2019
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
--{entity {extcorr2bits} architecture {extcorr2bits}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity extcorr2bits is
	 port(
		 entrada : in STD_LOGIC_VECTOR(18 downto 0);
		 salida : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end extcorr2bits;


architecture extcorr2bits of extcorr2bits is
--signal aux: std_logic_vector (18 downto 0);
begin	 
	process(entrada)
	begin
		--aux <= ;
		salida <= "000000000000000000000000000000000000000000000" & std_logic_vector(unsigned(entrada) sll 2);
	end process;
end extcorr2bits;
