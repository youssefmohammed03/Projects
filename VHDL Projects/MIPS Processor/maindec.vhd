----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:27 05/07/2023 
-- Design Name: 
-- Module Name:    maindec - Behavioral 
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


entity maindec is
port(op: in std_logic_vector(5 downto 0);
memtoreg, memwrite: out std_logic;
branch, alusrc: out std_logic;
regdst, regwrite: out std_logic;
jump: out std_logic;
aluop: out std_logic_vector(1 downto 0));
end maindec;

architecture Behavioral of maindec is
signal controls: std_logic_vector(8 downto 0);
begin
process(op)
		begin
			case(op) is
				when "000000" => controls <= "110000010"; --R type
				when "100011" => controls <= "101001000"; --lw
				when "101011" => controls <= "001010000"; --sw
				when "000100" => controls <= "000100001"; --beq
				when "001000" => controls <= "101000000"; --addi
				when "000010" => controls <= "000000100"; --J
				when others => controls <= "---------"; --illegal op
			end case;
	end process;
	(regwrite, regdst, alusrc, branch, memwrite, memtoreg, jump, aluop(1), aluop(0)) <= controls;
end Behavioral;


