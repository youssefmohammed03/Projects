library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity mux_32 is
Generic (n: integer := 32);
    Port ( i0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i3 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i4 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i5 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i6 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i7 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i8 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i9 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i10 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i11 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i12 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i13 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i14 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i15 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i16 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i17 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i18 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i19 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i20 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i21 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i22 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i23 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i24 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i25 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i26 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i27 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i28 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i29 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i30 : in  STD_LOGIC_VECTOR (n-1 downto 0);
i31 : in  STD_LOGIC_VECTOR (n-1 downto 0);
 y : out  STD_LOGIC_VECTOR (n-1 downto 0);
s : in  STD_LOGIC_VECTOR (4 downto 0));
end mux_32;

architecture Behavioral of mux_32 is

begin

y <= i0 when s = "00000" else
          i1 when s = "00001" else
          i2 when s = "00010" else
          i3 when s = "00011" else
          i4 when s = "00100" else
          i5 when s = "00101" else
          i6 when s = "00110" else
          i7 when s = "00111" else
          i8 when s = "01000" else
          i9 when s = "01001" else
          i10 when s = "01010" else
          i11 when s = "01011" else
          i12 when s = "01100" else
          i13 when s = "01101" else
          i14 when s = "01110" else
          i15 when s = "01111" else
          i16 when s = "10000" else
          i17 when s = "10001" else
          i18 when s = "10010" else
          i19 when s = "10011" else
          i20 when s = "10100" else
          i21 when s = "10101" else
          i22 when s = "10110" else
          i23 when s = "10111" else
          i24 when s = "11000" else
          i25 when s = "11001" else
          i26 when s = "11010" else
          i27 when s = "11011" else
          i28 when s = "11100" else
          i29 when s = "11101" else
          i30 when s = "11110" else
          i31;

end Behavioral;