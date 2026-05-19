----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:43:38 12/06/2024 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( RdData1 : in  STD_LOGIC_VECTOR (15 downto 0);
           RdData2 : in  STD_LOGIC_VECTOR (15 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (15 downto 0);
			  NF: out STD_LOGIC;
			  CE_NF: in STD_LOGIC;
			  OVF: out STD_LOGIC;
			  CE_OVF: in STD_LOGIC;
			  CE_ZF: in STD_LOGIC;
			  ZF: out STD_LOGIC;
			  CE_CF: in STD_LOGIC;
			  CF: out STD_LOGIC;
			  Clk: in STD_LOGIC;
			  TenBitLiteral: in STD_LOGIC_VECTOR(9 downto 0);
			  WorkingRegister: in STD_LOGIC_VECTOR(15 downto 0)
			  
			  );
end ALU;





architecture Behavioral of ALU is

signal OP1 : std_logic_vector(15 downto 0);
signal OP2 : std_logic_vector(15 downto 0);
signal sY: std_logic_vector(16 downto 0);
signal ShiftAmount: integer;
signal OP1_Aux: std_logic_vector(15 downto 0);
signal Carry: std_logic;
signal Zero: std_logic;
signal Overflow: std_logic;
signal NegCarry: std_logic;



begin

OP1 <= RdData1;
OP2 <= RdData2;



Y <= sY(15 downto 0);



ShiftAmount <= conv_integer(OP2(4 downto 0)); -- get the last 5 bits of the operand and convert the number into an integer

--ShiftAmount_2 <= 15 when (ShiftAmount_1 > 15) else ShiftAmount_1; 



with ShiftAmount select

OP1_Aux <= OP1(15 downto 0)      when 0,
           OP1(14 downto 0) & '0' when 1,
           OP1(13 downto 0) & "00" when 2,
			  OP1(12 downto 0) & "000" when 3,
			  OP1(11 downto 0) & "0000" when 4,
			  OP1(10 downto 0) & "00000" when 5,
			  OP1(9 downto 0) &  "000000" when 6,
			  OP1(8 downto 0) &  "0000000" when 7,
			  OP1(7 downto 0) &  "00000000" when 8,
			  OP1(6 downto 0) &  "000000000" when 9,
			  OP1(5 downto 0) &  "0000000000" when 10,
			  OP1(4 downto 0) &  "00000000000" when 11,
			  OP1(3 downto 0) &  "000000000000" when 12,
			  OP1(2 downto 0) &  "0000000000000" when 13,
			  OP1(1 downto 0) &  "00000000000000" when 14,
			  OP1(0 downto 0) &  "000000000000000" when 15,
			  "0000000000000000" when others;



Zero <= '1' when sY(15 downto 0) = x"0000" else '0';

ZF <= Zero when ((rising_edge(Clk)) and (CE_ZF = '1'));

Overflow <= '1' when (
   -- Addition Overflow Conditions
   (OP1(15) = '0' and OP2(15) = '0' and sY(15) = '1') or    -- Positive + Positive -> Negative (Overflow)
   (OP1(15) = '1' and OP2(15) = '1' and sY(15) = '0') or    -- Negative + Negative -> Positive (Overflow)

   -- Subtraction Overflow Conditions
   (OP1(15) = '1' and OP2(15) = '0' and sY(15) = '0') or    -- Negative - Positive -> Positive (Overflow)
   (OP1(15) = '0' and OP2(15) = '1' and sY(15) = '1')       -- Positive - Negative -> Negative (Overflow)
) else '0';

OVF <= Overflow when ((rising_edge(Clk)) and (CE_OVF = '1'));

NF <= sY(15) when (rising_edge(Clk) and CE_NF = '1');

Carry <= sY(16); 

NegCarry <= NOT Carry when ((CE_CF = '1') and (rising_edge(Clk)));

CF <= Carry when ((CE_CF = '1') and (rising_edge(Clk)));

with ALUOP select 
                 sY <= ('0' & OP1) + ('0' & OP2) when "0000", -- ADD
					  
					        ('0' & OP1) + ('0' & (NOT OP2)) + '1' when "0001", -- SUB
							  
							  ('0' & OP1) AND ('0' & OP2) when "0010", -- AND
							  
							  ('0' & OP1) OR ('0' & OP2) when "0011", -- IOR
							  
							  ('0' & OP1_Aux) when "0110", -- SL Wb, Ws, Wnd 
							  
							  ('0' & OP2) + "00000000000000010" when "0111", -- INC2 Ws, Wd
							  
							  ('0' & WorkingRegister) XOR ("0000000" & TenBitLiteral) when "1001",
							  
							  ('0' & OP1) + ('0' & (NOT OP2)) + '1' - NegCarry when "1000",
					
							  
							  (others => 'Z') when others;
					      





end Behavioral;

