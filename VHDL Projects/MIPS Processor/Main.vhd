----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:29 05/09/2023 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

entity Main is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           dataadr : out  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC);
end Main;

architecture Behavioral of Main is

signal memwritet: STD_LOGIC;
signal pc, instr, readdata, dataadrt, writedatat: STD_LOGIC_VECTOR (31 downto 0);

begin

	instrmem: imem port map (pc (7 downto 2), instr);
   datamemory: dmem port map (clk, memwritet, dataadrt, writedatat, readdata);
	processormips: Mips port map (clk, reset, pc, instr, memwritet, dataadrt, writedatat, readdata);

	writedata <= writedatat;
	dataadr <= dataadrt;
	memwrite <= memwritet;

end Behavioral;

