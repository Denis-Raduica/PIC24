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

        -- BRA OVF --

        x"808101",  -- 0 MOV 0x1020, W1
        x"808112",  -- 1 MOV 0x1022, W2
        x"410382",  -- 2 ADD W2, W2, W7
        x"300004",  -- 3 BRA OV, 0x2C8
        x"408182",  -- 4 ADD W1, W2, W3
        x"300002",  -- 5 BRA OV, 0x2C8
        x"708182",  -- 6 IOR W1, W2, W3
        x"888137",  -- 7 MOV W7, 0x1026
        x"888123",  -- 8 MOV W3, 0x1024
        x"37FFF6",  -- 9 37FFF6 BRA 0x2B8
        x"000400",  -- 10
        x"000800",  -- 11
        x"001000",  -- 12
        x"002000",  -- 13
        x"004000",  -- 14
        x"008000",  -- 15
        x"010000",  -- 16
        x"020000",  -- 17
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

