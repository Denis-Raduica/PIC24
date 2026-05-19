----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:04:21 11/04/2024 
-- Design Name: 
-- Module Name:    PC_Update - Behavioral 
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

entity PC_Update is
    Port ( Branch: in STD_LOGIC_VECTOR(2 downto 0);
	        Offset: in STD_LOGIC_VECTOR(15 downto 0);
	        PC : in  STD_LOGIC_VECTOR (22 downto 0);
           New_PC : out  STD_LOGIC_VECTOR (22 downto 0);
			  NF: in STD_LOGIC;
			  ZF: in STD_LOGIC;
			  OVF: in STD_LOGIC;
			  CF: in STD_LOGIC);
end PC_Update;

architecture Behavioral of PC_Update is

signal Slit16: std_logic_vector(15 downto 0);
signal PC_p2: std_logic_vector(22 downto 0);

begin

PC_p2 <= PC + 2;

Slit16 <= Offset(14 downto 0) & '0'; -- Slit16 * 2

New_PC <= PC_p2 + Slit16 when ((Branch = "000")
                         OR (Branch = "001" AND OVF = '1')
                         OR (Branch = "010" AND CF = '1')
                         OR (Branch = "011" AND NF = '1')
								 OR (Branch = "100" AND ZF = '1'))
								 else PC_p2; -- default (no branch)



end Behavioral;

