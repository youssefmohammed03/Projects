library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL; 


entity ALU is
    Port (
			  data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
			  zflag : OUT  STD_LOGIC
);

end ALU;

architecture Behavioral of ALU is
	
	signal tmp1,tmp2: STD_LOGIC_VECTOR (32 downto 0);
	signal result,tmp3: STD_LOGIC_VECTOR (31 downto 0);
	
	

begin
	
	
	tmp1 <= (data1(31)&data1)+(data2(31)&data2);
	
	tmp2 <= (data1(31)&data1)-(data2(31)&data2);
	
	tmp3 <= x"00000001" when (data1 < data2) else
	x"00000000";
	
	result <= data1 and data2 when aluop(3 downto 0)="0000" else
	
			data1 OR data2 when aluop(3 downto 0)="0001" else
			
			tmp1(31 downto 0) when aluop(3 downto 0) ="0010" else
			
			tmp2(31 downto 0) when aluop (3 downto 0) ="0110" else
			
			not (data1 OR data2) when aluop (3 downto 0) ="1100" else
			
			tmp3 when aluop (3 downto 0) ="0111" else
			(others => 'Z');
			
	zflag <= '1' when result = X"00000000" else '0';
	
				
	dataout <= result;

end Behavioral;