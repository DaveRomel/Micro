---------------------------------------------------------------------------------------------------
--
-- Title       : PC
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : PC.vhd
-- Generated   : Mon Nov 11 19:58:10 2019
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
--{entity {PC} architecture {PC}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity PC is
	 port(
		 rst : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 PCin : in STD_LOGIC_VECTOR(63 downto 0);
		 PCout : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end PC;


architecture PC of PC is
begin
	process(rst,clk)
	begin
		if rst = '1' then
			PCout <= x"0000000000000000";
		elsif Falling_edge(clk) then 
			PCout <= PcIn;
		end if;
	end process;
end PC;
