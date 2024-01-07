

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package pack_1 is

Component ALU is
    port (
        data1 : in std_logic_vector(31 downto 0);
        data2 : in std_logic_vector(31 downto 0);
        aluop : in std_logic_vector(3 downto 0);
        dataout: out std_logic_vector(31 downto 0);
        zflag: out std_logic
    );
end Component;
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


Component RegisterFile is
    port (
        read_sel1 : in std_logic_vector(4 downto 0);
        read_sel2 : in std_logic_vector(4 downto 0);
        write_sel : in std_logic_vector(4 downto 0);
        write_ena : in std_logic;
        clk, reset : in std_logic;
        write_data : in std_logic_vector(31 downto 0);
        data1 : out std_logic_vector(31 downto 0);
        data2 : out std_logic_vector(31 downto 0)
    );
end Component;

Component adder is
    port (
        a, b : in std_logic_vector(31 downto 0);
        sum : out std_logic_vector(31 downto 0)
    );
end Component;

Component sl2 is
    port (
         a : in std_logic_vector(31 downto 0);
			result : out std_logic_vector(31 downto 0)
    );
end Component;

Component mux2 is
    port (
         sel : in std_logic;
			 a, b : in std_logic_vector(31 downto 0);
			 c : out std_logic_vector(31 downto 0)
    );
end Component;

Component flopr is
Generic (n: integer := 32);
    port (
         d : in  STD_LOGIC_VECTOR (n-1 downto 0);
           q : out  STD_LOGIC_VECTOR (n-1 downto 0);
           rst : in  STD_LOGIC;
           load : in  STD_LOGIC;
              clk : in  STD_LOGIC
    );
end Component;


Component mux3 is
    port (
    sel : in std_logic;
    a, b : in std_logic_vector(4 downto 0);
    c : out std_logic_vector(4 downto 0)
  );
end Component;


Component SignExtender is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : out  STD_LOGIC_VECTOR (31 downto 0));
end Component;

Component dmem is
    port(clk, we: in STD_LOGIC;
			a, wd: in STD_LOGIC_VECTOR (31 downto 0);
			rd: out STD_LOGIC_VECTOR (31 downto 0));

end Component;

Component imem is
    Port ( a: in STD_LOGIC_VECTOR(5 downto 0);
rd: out STD_LOGIC_VECTOR(31 downto 0));
end Component;

Component Datapath is
  port( clk, reset: in STD_LOGIC;
		instr, readdata: in STD_LOGIC_VECTOR(31 downto 0);
		memtoreg, pcsrc,alusrc,regwrite, regdst: in STD_LOGIC;
		aluoperation: in STD_LOGIC_VECTOR(3 downto 0);
		zero: out STD_LOGIC;
		jump: in STD_LOGIC;
		pc: out STD_LOGIC_VECTOR(31 downto 0);
		aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0));
end Component;

Component controller is
    Port ( op : in STD_LOGIC_VECTOR (5 downto 0);
           funct : in STD_LOGIC_VECTOR (5 downto 0);
           zero : in STD_LOGIC;
           memtoreg : out STD_LOGIC;
           memwrite : out STD_LOGIC;
           pcsrc : out STD_LOGIC;
           alusrc : out STD_LOGIC;
           regdst : out STD_LOGIC;
           regwrite : out STD_LOGIC;
           jump : out STD_LOGIC;
           alucontrol : out STD_LOGIC_VECTOR (3 downto 0));
end Component;

Component Mips is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pc : out  STD_LOGIC_VECTOR (31 downto 0);
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC;
           aluout : out  STD_LOGIC_VECTOR (31 downto 0);
           writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           readdata : in  STD_LOGIC_VECTOR (31 downto 0));
end Component;

component adderandsub 

    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component sr1 

    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component sl1 

    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : out  STD_LOGIC_VECTOR (3 downto 0));
end component;




end pack_1;

