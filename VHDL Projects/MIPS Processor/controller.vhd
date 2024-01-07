
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.control_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controller is
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
end controller;

architecture Behavioral of controller is
    signal aluop: std_logic_vector(1 downto 0);
    signal branch: std_logic;
begin
    alu_control: aludec port map(aluop, funct, alucontrol);
    main_control: maindec port map(op, memtoreg, memwrite, branch, alusrc, regdst, regwrite, jump, aluop);
    pcsrc <= branch and zero;
end Behavioral;
