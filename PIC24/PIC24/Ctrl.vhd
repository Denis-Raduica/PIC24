----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:08 12/08/2024 
-- Design Name: 
-- Module Name:    Ctrl - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ctrl is

Port (OP: in STD_LOGIC_VECTOR(4 downto 0);
		ALUOP: out STD_LOGIC_VECTOR(3 downto 0);
		MemWr: out STD_LOGIC;
		Mem2Reg: out STD_LOGIC;
		RegWr: out STD_LOGIC;
		RegDest: out STD_LOGIC;
		RegSource: out STD_LOGIC;
		CE_OVF: out STD_LOGIC;
		CE_CF: out STD_LOGIC;
		CE_NF: out STD_LOGIC;
		CE_ZF: out STD_LOGIC;
		Funct: in STD_LOGIC_VECTOR(2 downto 0);
		Branch: out STD_LOGIC_VECTOR(2 downto 0));

end Ctrl;

architecture Behavioral of Ctrl is

begin

	ALUOP <= "0000" when OP = "01000" else --ADD -- 0
            "0001" when OP = "01010" else --SUB -- 1
            "0010" when OP = "01100" else --AND -- 2
            "0011" when OP = "01110" else --IOR	-- 3			
				"0100" when OP = "10000" else --MOV f, wnd -- 4
				"0101" when OP = "10001" else -- MOV wns, f -- 5
				
				"0110" when OP = "11011" else -- Sl Wb, Wns, Wnd
				"0111" when OP = "11101" else -- INC2 Ws, Wd
				"1000" when OP = "01011" else -- SUBB Wb, Ws, Wd
				"1001" when OP = "10110"      -- XOR #lit10, Wn
				else "1111";                  -- Branches 
				
				
				
	Branch <= "000" when OP = "00110" and Funct = "111" else -- BRA expr
	          "001" when OP = "00110" and Funct = "000" else -- BRA OV
				 "010" when OP = "00110" and Funct = "001" else -- BRA C
				 "011" when OP = "00110" and Funct = "011" else -- BRA N
				 "100" when OP = "00110" and Funct = "010" else -- BRA Z
	          "111";
				 
	MemWr <= '1' when OP = "10001" else '0';
	
	Mem2Reg <= '1' when OP = "10000" else '0';
	
	RegWr <= '0' when OP = "10001" else -- MOV wns, f
	         '0' when OP = "00110" -- BRANCHES
				else '1';
				
	RegDest <= '1' when OP = "10000" else
	           '1' when OP = "10110" else
				  '0';
	
	RegSource <= '1' when OP = "11011" else
	             '0';
					 
	CE_NF <= '0' when OP = "10000" else -- MOV f, wnd
	         '0' when OP = "10001" else -- MOV wns, f
	         '0' when OP = "00110" -- BRANCHES
				else '1';
	
	CE_ZF <= '0' when OP = "10000" else -- MOV f, wnd
	         '0' when OP = "10001" else -- MOV wns, f
	         '0' when OP = "00110" 
				else '1';
	
   CE_OVF <= '1' when OP = "01000" else --  ADD
	          '1' when OP = "01010" else -- SUB
				 '1' when OP = "11101" else -- INC2 Ws, Wd
				 '1' when OP = "01011" else -- SUBB Wb, Ws, Wd
				 '0';
				 
	CE_CF <=  '1' when OP = "01000" else --  ADD
	          '1' when OP = "01010" else -- SUB
				 '1' when OP = "11101" else -- INC2 Ws, Wd
				 '1' when OP = "01011" else -- SUBB Wb, Ws, Wd
				 '0';
	
				



end Behavioral;

