----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:26:00 12/01/2024 
-- Design Name: 
-- Module Name:    ROM32x24 - Behavioral 
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

entity ROM32x24 is
    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (23 downto 0));
end ROM32x24;

architecture Behavioral of ROM32x24 is

type tROM is array (0 to 31) of std_logic_vector(23 downto 0);

  
    constant ROM : tROM := (
                    -- XOR
        x"808101",  -- 0 MOV 0x1020, W1
        x"808112",  -- 1 MOV 0x1022, W2
        x"B28102",  -- 2 XOR #0x10, W2
        x"330005",  -- 3 BRA N, 0x2CA
        x"808101",  -- 4 MOV 0x1020, W1
        x"B29081",  -- 5 XOR #0x108, W1
        x"330002",  -- 6 BRA N, 0x2CA
        x"408182",  -- 7 ADD W1, W2, W3
        x"410182",  -- 10 ADD W2, W2, W3
        x"B28102",  -- 11 XOR #0x10, W2
        x"320004",  -- 12 BRA Z, 0x2D6
        x"B29112",  -- 13 XOR #0x111, W2
        x"320002",  -- 14 BRA Z, 0x2D6
        x"408182",  -- 15 ADD W1, W2, W3
        x"410182",  -- 16 ADD W2, W2, W3
        x"000000",  -- 17
        x"000000",  -- 18
        x"000000",  -- 19
        x"000000",  -- 20
        x"000000",  -- 21
        x"000000",  -- 22
        x"000000",  -- 23
        x"000000",  -- 24
        x"000000",  -- 25
        x"000000",  -- 26
        x"000000",  -- 27
        x"000000",  -- 28
        x"000000",  -- 29
        x"000000",  -- 30
		  x"000000",  -- 18
        x"000000",  -- 19
        x"000000"   -- 31
    );

begin

Data <= ROM(conv_integer(Addr));


end Behavioral;

