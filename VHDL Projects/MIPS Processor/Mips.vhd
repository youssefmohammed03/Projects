----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:12 05/09/2023 
-- Design Name: 
-- Module Name:    Mips - Behavioral 
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
use ieee.numeric_std.all;
use work.pack_1.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mips is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pc : out  STD_LOGIC_VECTOR (31 downto 0);
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC;
           aluout : out  STD_LOGIC_VECTOR (31 downto 0);
           writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           readdata : in  STD_LOGIC_VECTOR (31 downto 0));
end Mips;

architecture Behavioral of Mips is

signal memtoreg, alusrc, regdst, regwrite, jump, pcsrc: STD_LOGIC;
Signal zero: STD_LOGIC;
signal alucontrol: STD_LOGIC_VECTOR(3 downto 0);

begin
			  	  
	 control: controller port map(
	 instr(31 downto 26),
	 instr(5 downto 0),
	 zero,
	 memtoreg,
	 memwrite,
	 pcsrc,
	 alusrc,
	 regdst,
	 regwrite,
	 jump,
	 alucontrol);
		
	 path: Datapath port map(
	 clk,
	 reset,
	 instr,
	 readdata,
	 memtoreg,
	 pcsrc,
	 alusrc,
	 regwrite,
	 regdst,
	 alucontrol,
	 zero,
	 jump,
	 pc,
	 aluout,
	 writedata);

end Behavioral;

