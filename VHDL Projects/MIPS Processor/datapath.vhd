library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pack_1.all;

entity Datapath is
port( clk, reset: in STD_LOGIC;
		instr, readdata: in STD_LOGIC_VECTOR(31 downto 0);
		memtoreg, pcsrc,alusrc,regwrite, regdst: in STD_LOGIC;
		aluoperation: in STD_LOGIC_VECTOR(3 downto 0);
		zero: out STD_LOGIC;
		jump: in STD_LOGIC;
		pc: out STD_LOGIC_VECTOR(31 downto 0);
		aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0));


end Datapath;

architecture Behavioral of Datapath is
    
   signal read_data1, read_data2: std_logic_vector(31 downto 0);
	signal writereg: STD_LOGIC_VECTOR(4 downto 0);
	signal pcjump, pcnext, pcnextbr, pcplus4,  pcbranch: STD_LOGIC_VECTOR(31 downto 0);
	signal signimm, signimmsh: STD_LOGIC_VECTOR(31 downto 0);
	signal srca, srcb, result: STD_LOGIC_VECTOR(31 downto 0);
	signal reg_write: STD_LOGIC_VECTOR(4 downto 0);
	signal alumuxout: STD_LOGIC_VECTOR(31 downto 0);
	signal pc1: STD_LOGIC_VECTOR(31 downto 0);
	signal aluout1: STD_LOGIC_VECTOR(31 downto 0);
	signal writedata1: STD_LOGIC_VECTOR(31 downto 0);
	
	

begin
 pc <= pc1;
aluout <= aluout1;
writedata <= writedata1;
    regfile: RegisterFile port map (
        instr(25 downto 21),
        instr(20 downto 16),
        reg_write,
        regwrite,
        clk,
		  reset,
        srca,
        read_data1,
        writedata1
		  );

    alufile: ALU port map (
        read_data1,
        alumuxout,
        aluoperation, 
        aluout1,
        zero
    );
	 
	 pcjump <= pcplus4(31 downto 28) & instr(25 downto 0) & "00"; 
	 pcreg: flopr generic map(32) port map( pcnext, pc1, reset, '1', clk ); 
	 pcadd1: adder port map(pc1, X"00000004", pcplus4);
    immsh: sl2 port map(signimm, signimmsh);
    pcadd2: adder port map(pcplus4, signimmsh, pcbranch); 
    pcbrmux: mux2 port map( pcsrc, pcplus4, pcbranch,  pcnextbr);
    pcmux: mux2 port map(jump, pcnextbr, pcjump, pcnext);
	 instrmemmux: mux3 port map(regdst, instr(20 downto 16), instr(15 downto 11), reg_write);
	 signextend: SignExtender port map (instr(15 downto 0), signimm );
	 regfileToAlu: mux2 port map ( alusrc, writedata1, signimm , alumuxout);
	 datamux: mux2 port map (memtoreg, aluout1, readdata, srca);
	 

	
	 
end Behavioral;