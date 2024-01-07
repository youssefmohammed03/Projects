----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:34 05/07/2023 
-- Design Name: 
-- Module Name:    aludec - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aludec is
Port ( aluop : in  STD_LOGIC_VECTOR (1 downto 0);
           func : in  STD_LOGIC_VECTOR (5 downto 0);
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end aludec;

architecture Behavioral of aludec is
begin
process(aluop, func)
	begin
		case aluop is
		when "00" => alucontrol <= "0010"; --add (for lw/sw/addi)
		when "01" => alucontrol <= "0110"; --sub (beg)
		when others => 
			case func is -- R-Type Instructions
			when "100000" => alucontrol <= "0010"; -- add
			when "100010" => alucontrol <= "0110"; -- sub
			when "100100" => alucontrol <= "0000"; -- and
			when "100101" => alucontrol <= "0001"; -- or
			when "101010" => alucontrol <= "0111"; -- slt
			when others => alucontrol <= "----"; -- ???
			--when others => null; -- ???
			end case;
		end case;
	end process;


end Behavioral;

