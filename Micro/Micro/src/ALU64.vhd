---------------------------------------------------------------------------------------------------
--
-- Title       : ALU64
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : ALU64.vhd
-- Generated   : Tue Nov 12 21:47:39 2019
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
--{entity {ALU64} architecture {ALU64}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity ALU64 is
	port(
		 Zero : out STD_LOGIC;
		 In0 : in STD_LOGIC_VECTOR(63 downto 0);
		 In1 : in STD_LOGIC_VECTOR(63 downto 0);
		 ctrl : in STD_LOGIC_VECTOR(3 downto 0);
		 Result : out STD_LOGIC_VECTOR(63 downto 0)
	     );
end ALU64;


architecture ALU64 of ALU64 is
begin
	process(ctrl,In0,In1)
	begin
		if ctrl    = "0000" then --00 AND
			if (In0 and In1) = x"0000000000000000" then
				Zero <= '1';
			else
				Zero <= '0';
			end if;
			Result <= In0 and In1; 	
		elsif ctrl = "0001" then --01 OR
			if (In0 or In1) = x"0000000000000000" then
				Zero <= '1';
			else
				Zero <= '0';
			end if;
			Result <= In0 or In1;	
		elsif ctrl = "0010" then --02 ADD , ADDI , LDUR , STUR 
			if (In0 + In1) = x"0000000000000000" then
				Zero <= '1';
			else
				Zero <= '0';
			end if;
			Result <= In0 + In1;
		--elsif ctrl = "0011" then --03
		--	Result <= In0 + In1;
		--elsif ctrl = "0011" then --04
		--	Result <= In0 - In1;
		elsif ctrl = "0110" then --06 SUB , SUBI
			if (In0 - In1) = x"0000000000000000" then
				Zero <= '1';
			else
				Zero <= '0';
			end if;
			Result <= In0 - In1;
		elsif ctrl = "0111" then --07 PSSB
			if In1 = x"0000000000000000" then
				Zero <= '1';
			else
				Zero <= '0';
			end if;
			Result <= In1;
		elsif ctrl = "1111" then --12  NOR
			if (In0 or In1) = x"0000000000000000" then
				Zero <= '1';
			else
				Zero <= '0';
			end if;
			Result <= In0 nor In1;
		else
			Result <= x"0000000000000000";
			Zero <= '0';
		end if;
	end process;
end ALU64;
