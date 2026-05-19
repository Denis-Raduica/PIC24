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

        -- SL --

        x"808101",  -- 0 MOV 0x1020, W1
        x"808112",  -- 1 MOV 0x1022, W2
        x"DD0982",  -- 2 SL W1, W2, W3
        x"330004",  -- 3 BRA N, 0x2C8
        x"DD1201",  -- 4 SL W2, W1, W4
        x"330002",  -- 5 BRA N, 0x2C8
        x"408102",  -- 6 ADD W1, W2, W2
        x"410184",  -- 7 ADD W2, W4, W3
        x"DD0982",  -- 8 SL W1, W2, W3
        x"320004",  -- 9 BRA Z, 0x2D4
        x"DD0A84",  -- 10 SL W1, W4, W5
        x"320002",  -- 11 BRA Z, 0x2D4
        x"408101",  -- 12 ADD W1, W1, W2
        x"410102",  -- 13 ADD W2, W2, W2
        x"888283",  -- 14 MOV W3, 0x1050
        x"888294",  -- 15 MOV W4, 0x1052
        x"8882A5",  -- 16 MOV W5, 0x1054
        x"37FFEE",  -- 17 BRA 0x2B8
        x"040000",  -- 18
        x"080000",  -- 19
        x"100000",  -- 20
        x"200000",  -- 21
        x"400000",  -- 22
        x"800000",  -- 23
        x"123456",  -- 24
        x"ABCDEF",  -- 25
        x"789ABC",  -- 26
        x"456789",  -- 27
        x"0F0F0F",  -- 28
        x"F0F0F0",  -- 29
        x"333333",  -- 30
        x"666666"   -- 31
    );

begin

Data <= ROM(conv_integer(Addr));


end Behavioral;

