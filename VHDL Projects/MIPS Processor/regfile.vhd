library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_logic_SIGNED.all;
use IEEE.STD_logic_arith.all;
use work.pack_1.all;


entity RegisterFile is
Generic (n: integer := 32);
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk, reset : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

signal tmp0 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp1 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp2 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp3 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp4 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp5 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp6 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp7 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp8 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp9 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp10 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp11 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp12 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp13 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp14 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp15 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp16 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp17 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp18 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp19 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp20 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp21 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp22 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp23 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp24 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp25 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp26 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp27 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp28 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp29 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp30 : STD_LOGIC_VECTOR (31 downto 0);
signal tmp31 : STD_LOGIC_VECTOR (31 downto 0);

signal out_dec : STD_LOGIC_VECTOR (n-1 downto 0);


begin


r0 : flopr generic map (n) port map (write_data, tmp0 ,reset , write_ena and out_dec(0) ,clk );
r1 : flopr generic map (n) port map (write_data, tmp1 ,reset , write_ena and out_dec(1) ,clk );
r2 : flopr generic map (n) port map (write_data, tmp2 ,reset , write_ena and out_dec(2) ,clk );
r3 : flopr generic map (n) port map (write_data, tmp3 ,reset , write_ena and out_dec(3) ,clk );
r4 : flopr generic map (n) port map (write_data, tmp4 ,reset , write_ena and out_dec(4) ,clk );
r5 : flopr generic map (n) port map (write_data, tmp5 ,reset , write_ena and out_dec(5) ,clk );
r6 : flopr generic map (n) port map (write_data, tmp6 ,reset , write_ena and out_dec(6) ,clk );
r7 : flopr generic map (n) port map (write_data, tmp7 ,reset , write_ena and out_dec(7) ,clk );
r8 : flopr generic map (n) port map (write_data, tmp8 ,reset , write_ena and out_dec(8) ,clk );
r9 : flopr generic map (n) port map (write_data, tmp9 ,reset , write_ena and out_dec(9) ,clk );
r10 : flopr generic map (n) port map (write_data, tmp10 ,reset , write_ena and out_dec(10) ,clk );
r11 : flopr generic map (n) port map (write_data, tmp11 ,reset , write_ena and out_dec(11) ,clk );
r12 : flopr generic map (n) port map (write_data, tmp12 ,reset , write_ena and out_dec(12) ,clk );
r13 : flopr generic map (n) port map (write_data, tmp13 ,reset , write_ena and out_dec(13) ,clk );
r14 : flopr generic map (n) port map (write_data, tmp14 ,reset , write_ena and out_dec(14) ,clk );
r15 : flopr generic map (n) port map (write_data, tmp15 ,reset , write_ena and out_dec(15) ,clk );
r16 : flopr generic map (n) port map (write_data, tmp16 ,reset , write_ena and out_dec(16) ,clk );
r17 : flopr generic map (n) port map (write_data, tmp17 ,reset , write_ena and out_dec(17) ,clk );
r18 : flopr generic map (n) port map (write_data, tmp18 ,reset , write_ena and out_dec(18) ,clk );
r19 : flopr generic map (n) port map (write_data, tmp19 ,reset , write_ena and out_dec(19) ,clk );
r20 : flopr generic map (n) port map (write_data, tmp20 ,reset , write_ena and out_dec(20) ,clk );
r21 : flopr generic map (n) port map (write_data, tmp21 ,reset , write_ena and out_dec(21) ,clk );
r22 : flopr generic map (n) port map (write_data, tmp22 ,reset , write_ena and out_dec(22) ,clk );
r23 : flopr generic map (n) port map (write_data, tmp23 ,reset , write_ena and out_dec(23) ,clk );
r24 : flopr generic map (n) port map (write_data, tmp24 ,reset , write_ena and out_dec(24) ,clk );
r25 : flopr generic map (n) port map (write_data, tmp25 ,reset , write_ena and out_dec(25) ,clk );
r26 : flopr generic map (n) port map (write_data, tmp26 ,reset , write_ena and out_dec(26) ,clk );
r27 : flopr generic map (n) port map (write_data, tmp27 ,reset , write_ena and out_dec(27) ,clk );
r28 : flopr generic map (n) port map (write_data, tmp28 ,reset , write_ena and out_dec(28) ,clk );
r29 : flopr generic map (n) port map (write_data, tmp29 ,reset , write_ena and out_dec(29) ,clk );
r30 : flopr generic map (n) port map (write_data, tmp30 ,reset , write_ena and out_dec(30) ,clk );
r31 : flopr generic map (n) port map (write_data, tmp31 ,reset , write_ena and out_dec(31) ,clk );

mux1 : mux_32 generic map (n) port map (tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17, tmp18, tmp19, tmp20, tmp21, tmp22, tmp23, tmp24, tmp25, tmp26, tmp27, tmp28, tmp29, tmp30, tmp31, data1, read_sel1 );
mux2 : mux_32 generic map (n) port map (tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17, tmp18, tmp19, tmp20, tmp21, tmp22, tmp23, tmp24, tmp25, tmp26, tmp27, tmp28, tmp29, tmp30, tmp31, data2, read_sel2 );
decod : decoder generic map (n) port map (write_sel , out_dec );

--jjj

end Behavioral;