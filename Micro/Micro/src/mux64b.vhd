---------------------------------------------------------------------------------------------------
--
-- Title       : mux64b
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : mux64b.vhd
-- Generated   : Tue Nov 12 21:31:07 2019
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
--{entity {mux64b} architecture {mux64b}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity mux64b is
	port( 
		ctrl : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(63 downto 0);
		 B : in STD_LOGIC_VECTOR(63 downto 0);
		 Salida : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end mux64b;


architecture mux64b of mux64b is
begin
	process(ctrl,A,B)
	begin
		if ctrl = '0' then
			Salida <= A;
		else
			Salida <= B;
		end if;
	end process;
end mux64b;
