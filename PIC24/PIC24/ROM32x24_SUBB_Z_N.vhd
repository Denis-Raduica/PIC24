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
                    -- SUBB Z, N
        x"808101",  -- 0 MOV 0x1020, W1
        x"808112",  -- 1 MOV 0x1022, W2
		  
        x"410382",  -- 2 ADD W2, W2, W7
        x"590182",  -- 3 SUBB W2, W2, W3
        x"320005",  -- 4 BRA Z, 0x2CC
        x"408382",  -- 5 ADD W1, W2, W7
        x"590182",  -- 6 SUBB W2, W2, W3
        x"320002",  -- 7 BRA Z, 0x2CC
		  
        x"408182",  -- 10 ADD W1, W2, W3
        x"408182",  -- 11 ADD W1, W2, W3
		  
        x"408382",  -- 12 ADD W1, W2, W7
        x"590382",  -- 13 SUBB W2, W2, W7
        x"330005",  -- 14 BRA N, 0x2DC
        x"410382",  -- 15 ADD W2, W2, W7
        x"588202",  -- 16 SUBB W1, W2, W4
        x"330002",  -- 17 BRA N, 0x2DC
        x"408182",  -- 18 ADD W1, W2, W3
        x"408182",  -- 19 ADD W1, W2, W3
        x"888123",  -- 20 MOV W3, 0x1024
        x"888134",  -- 21 MOV W4, 0x1026
        x"37FFEB",  -- 22 BRA 0x2B8
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

