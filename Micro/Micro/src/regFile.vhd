---------------------------------------------------------------------------------------------------
--
-- Title       : regFile
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : regFile.vhd
-- Generated   : Mon Nov 11 23:06:57 2019
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
--{entity {regFile} architecture {regFile}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity regFile is
	 port(
		 w : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 r1 : in STD_LOGIC_VECTOR(4 downto 0);
		 r2 : in STD_LOGIC_VECTOR(4 downto 0);
		 rw : in STD_LOGIC_VECTOR(4 downto 0);
		 writeData : in STD_LOGIC_VECTOR(63 downto 0);
		 read1 : out STD_LOGIC_VECTOR(63 downto 0);
		 read2 : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end regFile;


 architecture regFile of regFile is
type memoria is array (0 to 31) of std_logic_vector(63 downto 0);
signal Registros : memoria :=
(																					--Natural--Hexa---
	x"0000000000000000",x"0000000000000000",x"0000000000000000",x"0000000000000000",--x00-x03--x00-x03
	x"0000000000000000",x"0000000000000000",x"0000000000000000",x"0000000000000000",--x04-x07--x04-x07
	x"0000000000000000",x"0000000000000000",x"0000000000000000",x"0000000000000000",--x08-x11--x08-x0B
	x"0000000000000000",x"0000000000000000",x"0000000000000000",x"0000000000000000",--x12-x15--x0C-x0F
	
	x"0000000000000000",x"0000000000000000",x"0000000000000000",x"0000000000000000",--x16-x19--x10-x13
	x"0000000000000003",x"0000000000000004",x"0000000000000000",x"0000000000000000",--x20-x23--x14-x17
	x"0000000000000000",x"0000000000000000",x"0000000000000000",x"0000000000000000",--x24-x27--x18-x1B
	x"0000000000000000",x"0000000000000000",x"0000000000000000",x"0000000000000000"---x28-x31--x1C-x1F     
);										   ---^reg31(x30)BR--- ---^reg32(XZR)[0]---

begin
	process(clk,r1,r2,rw,w)
	begin
		if Rising_edge(clk) and w='1' then
			Registros(conv_integer(rw)) <= writeData;
		end if;
		
		read1 <= Registros(conv_integer(r1));
		read2 <= Registros(conv_integer(r2));
	end process;
end regFile;
