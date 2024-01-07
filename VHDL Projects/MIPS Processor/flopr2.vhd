library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity flopr2 is
generic (n: natural :=32);
    Port ( clk , reset: in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (n-1 downto 0);
           q : out  STD_LOGIC_VECTOR (n-1 downto 0));
end flopr2;

rchitecture Behavioral of flopr2 is

begin

process (clk , reset)
begin

if reset = '1' then
	q <= (others => '0');
elsif (clk'event and clk = '1') then
	q <= d;
end if;

end process;

end Behavioral;

