---------------------------------------------------------------------------------------------------
--
-- Title       : control
-- Design      : Micro
-- Author      : El dave
-- Company     : PowerLab
--
---------------------------------------------------------------------------------------------------
--
-- File        : control.vhd
-- Generated   : Mon Nov 11 22:38:12 2019
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
--{entity {control} architecture {control}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity control is
	 port(
	 opcode : in STD_LOGIC_VECTOR(10 downto 0);
	 	 B : out STD_LOGIC;
	 	 BL	  :  out STD_LOGIC;
	  	 BR	  :	 out STD_LOGIC;
		 CBZ  :  out STD_LOGIC; 
		 CBNZ :	 out STD_LOGIC;
		 memRead : out STD_LOGIC;
		 memWrite : out STD_LOGIC;
		 regWrite : out STD_LOGIC;
		 ALUsrc : out STD_LOGIC;
		 Reg2Loc : out STD_LOGIC;
		 Mem2Reg : out STD_LOGIC;
		 extSig : out STD_LOGIC;
		 ALUop : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end control;


architecture control of control is
begin
	process(opcode)
	begin
		--ldur
		if(opcode = "11111000010") then
			memRead <= '1';
			memWrite <= '0';
			regWrite <= '1';
			ALUop <= "0010";
			ALUsrc <= '1';
			B <= '0';
			Reg2Loc <= '0';
			Mem2Reg	<= '1';
			extSig <= '0';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '0';	
		--stur
		elsif (opcode = "11111000000") then
			memRead <= '1';
			memWrite <= '1';
			regWrite <= '0';
			ALUop <= "0010";
			ALUsrc <= '1';
			B <= '0';
			Reg2Loc <= '1';
			Mem2Reg	<= '0';
			extSig <= '0';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '0';
		--add
		elsif (opcode = "10001011000") then
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '1';
			ALUop <= "0010";
			ALUsrc <= '0';
			B <= '0';
			Reg2Loc <= '0';
			Mem2Reg	<= '0';
			extSig <= '0';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '0';
		--sub
		elsif (opcode = "11001011000") then
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '1';
			ALUop <= "0110";
			ALUsrc <= '0';
			B <= '0';
			Reg2Loc <= '0';
			Mem2Reg	<= '0';
			extSig <= '0';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '0';
		--addi
		elsif (opcode(10 downto 1) = "1001000100") then
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '1';
			ALUop <= "0010";
			ALUsrc <= '1';
			B <= '0';
			Reg2Loc <= '0';
			Mem2Reg	<= '0';
			extSig <= '1';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '0';
		--subi
		elsif (opcode(10 downto 1) = "1101000100") then
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '1';
			ALUop <= "0110";
			ALUsrc <= '1';
			B <= '0';
			Reg2Loc <= '0';
			Mem2Reg	<= '0';
			extSig <= '1';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '0';
		--cbz
		elsif (opcode(10 downto 3) = "10110100") then
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '0';
			ALUop <= "0111";
			ALUsrc <= '0';
			B <= '0';
			Reg2Loc <= '1';
			Mem2Reg	<= '0';
			extSig <= '1';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '1';
		 	CBNZ <= '0';
		--cbnz
		elsif (opcode(10 downto 3) = "10110101") then
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '0';
			ALUop <= "0111";
			ALUsrc <= '0';
			B <= '0';
			Reg2Loc <= '1';
			Mem2Reg	<= '0';
			extSig <= '1';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '1';
		--B
		elsif (opcode(10 downto 5) = "000101") then
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '0';
			ALUop <= "0111";
			ALUsrc <= '1';
			B <= '1';
			Reg2Loc <= '0';
			Mem2Reg	<= '0';
			extSig <= '1';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '0';
		--BL
		elsif (opcode(10 downto 5) = "100101") then
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '1';
			ALUop <= "0111";
			ALUsrc <= '1';
			B <= '1';
			Reg2Loc <= '0';
			Mem2Reg	<= '0';
			extSig <= '1';
			BL <= '1';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '0';
		--BR
		elsif (opcode = "11010110000") then
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '0';
			ALUop <= "0111";
			ALUsrc <= '1';
			B <= '1';
			Reg2Loc <= '1';
			Mem2Reg	<= '0';
			extSig <= '1';
			BL <= '0';
	  	 	BR <= '1';
		 	CBZ <= '0';
		 	CBNZ <= '0';
		else
			memRead <= '0';
			memWrite <= '0';
			regWrite <= '0';
			ALUop <= "0000";
			ALUsrc <= '0';
			B <= '0';
			Reg2Loc <= '0';
			Mem2Reg	<= '0';
			extSig <= '0';
			BL <= '0';
	  	 	BR <= '0';
		 	CBZ <= '0';
		 	CBNZ <= '0';
		end if;
	end process;
end control;
