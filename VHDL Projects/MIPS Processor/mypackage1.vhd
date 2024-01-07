

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package mypackage1 is

Component decoder is
generic(n:integer :=32);
port(  I: in std_logic_vector(4 downto 0); 
       o: out std_logic_vector(n-1 downto 0));
end Component;


Component mux_32 is
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

end Component;

component flopr is
Generic (n: integer := 32);

     port (
         d : in  STD_LOGIC_VECTOR (n-1 downto 0);
           q : out  STD_LOGIC_VECTOR (n-1 downto 0);
           rst : in  STD_LOGIC;
           load : in  STD_LOGIC;
              clk : in  STD_LOGIC
    );
end component;


end mypackage1;

