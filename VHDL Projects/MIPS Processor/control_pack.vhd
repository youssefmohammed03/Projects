--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package control_pack is

component maindec is
port(op: in std_logic_vector(5 downto 0);
memtoreg, memwrite: out std_logic;
branch, alusrc: out std_logic;
regdst, regwrite: out std_logic;
jump: out std_logic;
aluop: out std_logic_vector(1 downto 0));
end component;

component aludec is
Port ( aluop : in  STD_LOGIC_VECTOR (1 downto 0);
           func : in  STD_LOGIC_VECTOR (5 downto 0);
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

end control_pack;

