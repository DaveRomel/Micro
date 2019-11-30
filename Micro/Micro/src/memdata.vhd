 ---------------------------------------------------------------------------------------------------
--
-- Title       : memdata
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : memdata.vhd
-- Generated   : Tue Nov 12 22:46:25 2019
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
--{entity {memdata} architecture {memdata}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity memdata is
	port(
		 clk :in STD_LOGIC;
		 MemWrite : in STD_LOGIC;
		 MemRead : in STD_LOGIC;
		 addres : in STD_LOGIC_VECTOR(63 downto 0);
		 writeData : in STD_LOGIC_VECTOR(63 downto 0);
		 ReadData : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end memdata;


architecture memdata of memdata is
type memoria is array (0 to 31) of std_logic_vector(63 downto 0);
signal MemData : memoria :=
(
	x"0000000000000000",x"0000000000000001",x"0000000000000004",x"0000000000000003",
	x"0000000000000004",x"0000000000000005",x"0000000000000006",x"0000000000000007",
	x"0000000000000008",x"0000000000000009",x"000000000000000A",x"000000000000000B",
	x"000000000000000C",x"000000000000000D",x"000000000000000E",x"000000000000000F",
	
	x"0000000000000010",x"0000000000000011",x"0000000000000012",x"0000000000000013",
	x"0000000000000014",x"0000000000000015",x"0000000000000016",x"0000000000000017",
	x"0000000000000018",x"0000000000000019",x"000000000000001A",x"000000000000001B",
	x"000000000000001C",x"000000000000001D",x"000000000000001E",x"000000000000001F"
);

begin
	process(clk,MemWrite,MemRead,writeData,addres)
	begin  
		if Falling_edge(clk) and MemWrite = '1' then
			MemData(conv_integer(addres(7 downto 3))) <= writeData;
		end if;
		 	ReadData <= MemData(conv_integer(addres(7 downto 3)));	
	end process;
end memdata;
