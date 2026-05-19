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
                    -- INC2 OVERFLOW AND CARRY
        x"808101",  -- 0 MOV 0x1020, W1
        x"808112",  -- 1 MOV 0x1022, W2
		  
        x"E88081",  -- 2 INC2 W1, W1
        x"300004",  -- 3 BRA OV, 0x2C8
        x"E88081",  -- 4 INC2 W1, W1
        x"300002",  -- 5 BRA OV, 0x2C8
		  
        x"408081",  -- 6 ADD W1, W1, W1
        x"408081",  -- 7 ADD W1, W1, W1
		  
        x"808112",  -- 10 MOV 0x1022, W2
		  
        x"E88102",  -- 11 INC2 W2, W2
        x"310004",  -- 12 BRA C, 0x2D6
        x"E88102",  -- 13 INC2 W2, W2
        x"310002",  -- 14 BRA C, 0x2D6
		  
        x"408081",  -- 15 ADD W1, W1, W1
        x"408081",  -- 16 ADD W1, W1, W1
		  
        x"888121",  -- 17 MOV W1, 0x1024
        x"888132",  -- 18 MOV W2, 0x1026
        x"37FFEE",  -- 19 BRA 0x2B8
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

