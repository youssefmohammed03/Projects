----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:47 04/22/2023 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity decoder is
generic(n:integer :=32);
port(  I: in std_logic_vector(4 downto 0); 
       o: out std_logic_vector(n-1 downto 0));
end decoder;
architecture Behavioral of decoder is

begin
o<=
"00000000000000000000000000000001" when I = "00000" else
"00000000000000000000000000000010" when I ="00001" else
"00000000000000000000000000000100" when I ="00010" else
"00000000000000000000000000001000" when I = "00011" else
"00000000000000000000000000010000" when I = "00100" else
"00000000000000000000000000100000" when I = "00101" else
"00000000000000000000000001000000" when I = "00110"else
"00000000000000000000000010000000" when I = "00111"else
"00000000000000000000000100000000" when I = "01000"else
"00000000000000000000001000000000" when I = "01001"else
"00000000000000000000010000000000" when I = "01010"else
"00000000000000000000100000000000" when I = "01011"else
"00000000000000000001000000000000" when I = "01100"else
"00000000000000000010000000000000" when I = "01101"else
"00000000000000000100000000000000" when I = "01110"else
"00000000000000001000000000000000" when I = "01111"else
"00000000000000010000000000000000" when I = "10000"else

"00000000000000100000000000000000" when I ="10001"else
"00000000000001000000000000000000" when I ="10010"else
"00000000000010000000000000000000" when I = "10011"else
"00000000000100000000000000000000" when I = "10100"else
"00000000001000000000000000000000" when I = "10101"else
"00000000010000000000000000000000" when I = "10110"else
"00000000100000000000000000000000" when I = "10111"else
"00000001000000000000000000000000" when I = "11000"else
"00000010000000000000000000000000" when I = "11001"else
"00000100000000000000000000000000" when I = "11010"else
"00001000000000000000000000000000" when I = "11011"else
"00010000000000000000000000000000" when I = "11100"else
"00100000000000000000000000000000" when I = "11101"else
"01000000000000000000000000000000" when I = "11110"else
"10000000000000000000000000000000" when I = "11111" else
(others => '0');

end Behavioral;
