---------------------------------------------------------------------------------------------------
--
-- Title       : Procesador
-- Design      : Micro
-- Author      : Usuario
-- Company     : Power Lab
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Micro\Micro\compile\Procesador.vhd
-- Generated   : Sat Nov 30 04:39:30 2019
-- From        : c:\My_Designs\Micro\Micro\src\Procesador.bde
-- By          : Bde2Vhdl ver. 2.6
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;


entity Procesador is
  port(
       clk : in STD_LOGIC;
       rst : in STD_LOGIC;
       X30 : in STD_LOGIC_VECTOR(4 downto 0)
  );
end Procesador;

architecture Procesador of Procesador is

---- Component declarations -----

component add4
  port (
       PcIn : in STD_LOGIC_VECTOR(63 downto 0);
       PcOut : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component alu64
  port (
       In0 : in STD_LOGIC_VECTOR(63 downto 0);
       In1 : in STD_LOGIC_VECTOR(63 downto 0);
       ctrl : in STD_LOGIC_VECTOR(3 downto 0);
       Result : out STD_LOGIC_VECTOR(63 downto 0);
       Zero : out STD_LOGIC
  );
end component;
component branch
  port (
       cbnz : in STD_LOGIC;
       cbz : in STD_LOGIC;
       zero : in STD_LOGIC;
       salida : out STD_LOGIC
  );
end component;
component control
  port (
       opcode : in STD_LOGIC_VECTOR(10 downto 0);
       ALUop : out STD_LOGIC_VECTOR(3 downto 0);
       ALUsrc : out STD_LOGIC;
       B : out STD_LOGIC;
       BL : out STD_LOGIC;
       BR : out STD_LOGIC;
       CBNZ : out STD_LOGIC;
       CBZ : out STD_LOGIC;
       Mem2Reg : out STD_LOGIC;
       Reg2Loc : out STD_LOGIC;
       extSig : out STD_LOGIC;
       memRead : out STD_LOGIC;
       memWrite : out STD_LOGIC;
       regWrite : out STD_LOGIC
  );
end component;
component ext26bits
  port (
       entrada : in STD_LOGIC_VECTOR(25 downto 0);
       salida : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component extcorr2bits
  port (
       entrada : in STD_LOGIC_VECTOR(18 downto 0);
       salida : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component extSigno64b
  port (
       entrada : in STD_LOGIC_VECTOR(8 downto 0);
       salida : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component extSignoI64b
  port (
       entrada : in STD_LOGIC_VECTOR(11 downto 0);
       salida : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component memdata
  port (
       MemRead : in STD_LOGIC;
       MemWrite : in STD_LOGIC;
       addres : in STD_LOGIC_VECTOR(63 downto 0);
       clk : in STD_LOGIC;
       writeData : in STD_LOGIC_VECTOR(63 downto 0);
       ReadData : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component meminst
  port (
       addr : in STD_LOGIC_VECTOR(63 downto 0);
       instr : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component mux64b
  port (
       A : in STD_LOGIC_VECTOR(63 downto 0);
       B : in STD_LOGIC_VECTOR(63 downto 0);
       ctrl : in STD_LOGIC;
       Salida : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component pc
  port (
       PCin : in STD_LOGIC_VECTOR(63 downto 0);
       clk : in STD_LOGIC;
       rst : in STD_LOGIC;
       PCout : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component regfile
  port (
       clk : in STD_LOGIC;
       r1 : in STD_LOGIC_VECTOR(4 downto 0);
       r2 : in STD_LOGIC_VECTOR(4 downto 0);
       rw : in STD_LOGIC_VECTOR(4 downto 0);
       w : in STD_LOGIC;
       writeData : in STD_LOGIC_VECTOR(63 downto 0);
       read1 : out STD_LOGIC_VECTOR(63 downto 0);
       read2 : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component regMux
  port (
       A : in STD_LOGIC_VECTOR(4 downto 0);
       B : in STD_LOGIC_VECTOR(4 downto 0);
       Reg2Loc : in STD_LOGIC;
       Sal : out STD_LOGIC_VECTOR(4 downto 0)
  );
end component;
component suma
  port (
       A : in STD_LOGIC_VECTOR(63 downto 0);
       B : in STD_LOGIC_VECTOR(63 downto 0);
       Salida : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET1055 : STD_LOGIC;
signal NET13964 : STD_LOGIC;
signal NET2038 : STD_LOGIC;
signal NET2684 : STD_LOGIC;
signal NET2690 : STD_LOGIC;
signal NET3962 : STD_LOGIC;
signal NET5940 : STD_LOGIC;
signal NET626 : STD_LOGIC;
signal NET8211 : STD_LOGIC;
signal NET8247 : STD_LOGIC;
signal NET8255 : STD_LOGIC;
signal NET8305 : STD_LOGIC;
signal NET8354 : STD_LOGIC;
signal NET8430 : STD_LOGIC;
signal BUS15095 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS15111 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS2296 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS2300 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS2360 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS3875 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS3893 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS5848 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS5856 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS5901 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS6450 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS6451 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS7090 : STD_LOGIC_VECTOR (4 downto 0);
signal BUS7153 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS7540 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS7562 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS7627 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS7724 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS9413 : STD_LOGIC_VECTOR (63 downto 0);
signal BUS9650 : STD_LOGIC_VECTOR (63 downto 0);
signal Inst : STD_LOGIC_VECTOR (31 downto 0);
signal sal2r2 : STD_LOGIC_VECTOR (4 downto 0);

begin

----  Component instantiations  ----

U1 : pc
  port map(
       PCin => BUS7153,
       PCout => BUS15111,
       clk => clk,
       rst => rst
  );

U10 : memdata
  port map(
       MemRead => NET2684,
       MemWrite => NET2690,
       ReadData => BUS3875,
       addres => BUS3893,
       clk => clk,
       writeData => BUS9413
  );

U11 : mux64b
  port map(
       A => BUS3893,
       B => BUS3875,
       Salida => BUS6451,
       ctrl => NET3962
  );

U12 : extSignoI64b
  port map(
       entrada(0) => Inst(10),
       entrada(1) => Inst(11),
       entrada(2) => Inst(12),
       entrada(3) => Inst(13),
       entrada(4) => Inst(14),
       entrada(5) => Inst(15),
       entrada(6) => Inst(16),
       entrada(7) => Inst(17),
       entrada(8) => Inst(18),
       entrada(9) => Inst(19),
       entrada(10) => Inst(20),
       entrada(11) => Inst(21),
       salida => BUS5856
  );

U13 : mux64b
  port map(
       A => BUS5848,
       B => BUS5856,
       Salida => BUS5901,
       ctrl => NET5940
  );

U14 : extcorr2bits
  port map(
       entrada(0) => Inst(5),
       entrada(1) => Inst(6),
       entrada(2) => Inst(7),
       entrada(3) => Inst(8),
       entrada(4) => Inst(9),
       entrada(5) => Inst(10),
       entrada(6) => Inst(11),
       entrada(7) => Inst(12),
       entrada(8) => Inst(13),
       entrada(9) => Inst(14),
       entrada(10) => Inst(15),
       entrada(11) => Inst(16),
       entrada(12) => Inst(17),
       entrada(13) => Inst(18),
       entrada(14) => Inst(19),
       entrada(15) => Inst(20),
       entrada(16) => Inst(21),
       entrada(17) => Inst(22),
       entrada(18) => Inst(23),
       salida => BUS7562
  );

U15 : mux64b
  port map(
       A => BUS6451,
       B => BUS15095,
       Salida => BUS6450,
       ctrl => NET13964
  );

U16 : regMux
  port map(
       A(0) => inst(0),
       A(1) => inst(1),
       A(2) => inst(2),
       A(3) => inst(3),
       A(4) => inst(4),
       B => X30,
       Reg2Loc => NET13964,
       Sal => BUS7090
  );

U17 : mux64b
  port map(
       A => BUS15095,
       B => BUS7540,
       Salida => BUS7627,
       ctrl => NET8305
  );

U18 : mux64b
  port map(
       A => BUS7627,
       B => BUS7724,
       Salida => BUS9650,
       ctrl => NET8430
  );

U19 : mux64b
  port map(
       A => BUS9650,
       B => BUS9413,
       Salida => BUS7153,
       ctrl => NET8354
  );

U2 : add4
  port map(
       PcIn => BUS15111,
       PcOut => BUS15095
  );

U20 : suma
  port map(
       A => BUS15111,
       B => BUS7562,
       Salida => BUS7540
  );

U21 : ext26bits
  port map(
       entrada(0) => Inst(0),
       entrada(1) => Inst(1),
       entrada(2) => Inst(2),
       entrada(3) => Inst(3),
       entrada(4) => Inst(4),
       entrada(5) => Inst(5),
       entrada(6) => Inst(6),
       entrada(7) => Inst(7),
       entrada(8) => Inst(8),
       entrada(9) => Inst(9),
       entrada(10) => Inst(10),
       entrada(11) => Inst(11),
       entrada(12) => Inst(12),
       entrada(13) => Inst(13),
       entrada(14) => Inst(14),
       entrada(15) => Inst(15),
       entrada(16) => Inst(16),
       entrada(17) => Inst(17),
       entrada(18) => Inst(18),
       entrada(19) => Inst(19),
       entrada(20) => Inst(20),
       entrada(21) => Inst(21),
       entrada(22) => Inst(22),
       entrada(23) => Inst(23),
       entrada(24) => Inst(24),
       entrada(25) => Inst(25),
       salida => BUS7724
  );

U22 : branch
  port map(
       cbnz => NET8247,
       cbz => NET8255,
       salida => NET8305,
       zero => NET8211
  );

U3 : meminst
  port map(
       addr => BUS15111,
       instr => Inst
  );

U4 : control
  port map(
       ALUop => BUS2360,
       ALUsrc => NET2038,
       B => NET8430,
       BL => NET13964,
       BR => NET8354,
       CBNZ => NET8247,
       CBZ => NET8255,
       Mem2Reg => NET3962,
       opcode(0) => inst(21),
       opcode(1) => inst(22),
       opcode(2) => inst(23),
       opcode(3) => inst(24),
       opcode(4) => inst(25),
       opcode(5) => inst(26),
       opcode(6) => inst(27),
       opcode(7) => inst(28),
       opcode(8) => inst(29),
       opcode(9) => inst(30),
       opcode(10) => inst(31),
       Reg2Loc => NET1055,
       extSig => NET5940,
       memRead => NET2684,
       memWrite => NET2690,
       regWrite => NET626
  );

U5 : regfile
  port map(
       r1(0) => inst(5),
       r1(1) => inst(6),
       r1(2) => inst(7),
       r1(3) => inst(8),
       r1(4) => inst(9),
       clk => clk,
       r2 => sal2r2,
       read1 => BUS2296,
       read2 => BUS9413,
       rw => BUS7090,
       w => NET626,
       writeData => BUS6450
  );

U6 : regMux
  port map(
       A(0) => Inst(16),
       A(1) => Inst(17),
       A(2) => Inst(18),
       A(3) => Inst(19),
       A(4) => Inst(20),
       B(0) => inst(0),
       B(1) => inst(1),
       B(2) => inst(2),
       B(3) => inst(3),
       B(4) => inst(4),
       Reg2Loc => NET1055,
       Sal => sal2r2
  );

U7 : extSigno64b
  port map(
       entrada(0) => Inst(12),
       entrada(1) => Inst(13),
       entrada(2) => Inst(14),
       entrada(3) => Inst(15),
       entrada(4) => Inst(16),
       entrada(5) => Inst(17),
       entrada(6) => Inst(18),
       entrada(7) => Inst(19),
       entrada(8) => Inst(20),
       salida => BUS5848
  );

U8 : mux64b
  port map(
       A => BUS9413,
       B => BUS5901,
       Salida => BUS2300,
       ctrl => NET2038
  );

U9 : alu64
  port map(
       In0 => BUS2296,
       In1 => BUS2300,
       Result => BUS3893,
       Zero => NET8211,
       ctrl => BUS2360
  );


end Procesador;
