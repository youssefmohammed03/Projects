library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity flopr is
Generic (n: integer := 32);

    Port ( d : in  STD_LOGIC_VECTOR (n-1 downto 0);
           q : out  STD_LOGIC_VECTOR (n-1 downto 0);
           rst : in  STD_LOGIC;
           load : in  STD_LOGIC;
              clk : in  STD_LOGIC);
end flopr;

architecture Behavioral of flopr is

signal temp: STD_LOGIC_VECTOR (31 downto 0);

begin

process(rst,clk,load)
begin
if(rst='1') then temp<=(others=>'0');
elsif(clk'event and clk='1' and load='1') then temp <= d;
end if;
end process;
q<=temp;
end Behavioral;