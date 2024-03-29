---------------------------------------------------------------------------------------------------
--
-- Title       : memInst
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : memInst.vhd
-- Generated   : Mon Nov 11 22:15:21 2019
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
--{entity {memInst} architecture {memInst}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity memInst is
	 port(
		 addr : in STD_LOGIC_VECTOR(63 downto 0);
		 instr : out STD_LOGIC_VECTOR(31 downto 0)
	     );
end memInst;

architecture memInst of memInst is
type memoria is array(0 to 31) of std_logic_vector(31 downto 0);
signal Instrucciones : memoria:=
(
	x"00000000",--00 - @0000 - 0000 ------------------
	x"00000000",--01 - @0004 - 0004 
	x"00000000",--02 - @0008 - 0008 
	x"00000000",--03 - @000C - 0012 
	
	x"00000000",--04 - @0010 - 0016 
	x"00000000",--05 - @0014 - 0020 
	x"00000000",--06 - @0018 - 0024 
	x"00000000",--07 - @001C - 0028 
	
	x"00000000",--08 - @0020 - 0032 
	x"00000000",--09 - @0024 - 0036 
	x"00000000",--10 - @0028 - 0040 
	x"00000000",--11 - @002C - 0044 
	
	x"00000000",--12 - @0030 - 0048 
	x"00000000",--13 - @0034 - 0052
	x"00000000",--14 - @0038 - 0056
	x"00000000",--15 - @003C - 0060
	
	x"00000000",--16 - @0040 - 0064
	x"00000000",--17 - @0044 - 0068
	x"00000000",--18 - @0048 - 0072
	x"00000000",--19 - @004C - 0076
	
	x"00000000",--20 - @0050 - 0080
	x"00000000",--21 - @0054 - 0084
	x"00000000",--22 - @0058 - 0088
	x"00000000",--23 - @005C - 0092
	
	x"00000000",--24 - @0060 - 0096
	x"00000000",--25 - @0064 - 0100
	x"00000000",--26 - @0068 - 0104
	x"00000000",--27 - @006C - 0108
	
	x"00000000",--28 - @0070 - 0112
	x"00000000",--29 - @0074 - 0116
	x"00000000",--30 - @0078 - 0120
	x"00000000" --31 - @007C - 0124 
);

begin
	process(addr)
	begin
		instr <= Instrucciones(conv_integer( addr(6 downto 2)));
	end process;
end memInst;
