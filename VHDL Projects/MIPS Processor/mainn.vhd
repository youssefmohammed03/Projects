----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:00:44 05/20/2023 
-- Design Name: 
-- Module Name:    main - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use work.pack_1.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mainn is
    Port ( word : in  STD_LOGIC_VECTOR (11 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end mainn;

architecture Behavioral of mainn is

signal data1: STD_LOGIC_VECTOR (3 downto 0);
signal data2: STD_LOGIC_VECTOR (3 downto 0);
signal aluop: STD_LOGIC_VECTOR (3 downto 0);

begin

aluop <= word (11 downto 8);
data1 <= word (7 downto 4);
data2 <= word (3 downto 0);

if aluop = "1001" then
adder: adderandsub port map (data1 , data2 , '1' , output);

elsif aluop = "0100" then
srr: sr1 port map (data1 , output);

elsif aluop = "0010" then
sll: sl1 port map (data1 , output);

else output <= "0000";

end if;



end Behavioral;

