library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity alu_control is
	port (
		clk : in std_logic;
		rst : in std_logic;
		IR5_0 : in std_logic_vector(5 downto 0);
		ALUOP : in std_logic_vector(3 downto 0);
		OPSelect : out std_logic_vector(4 downto 0);
		HI_en : out std_logic;
		LO_en : out std_logic;
		ALU_LO_HI : out std_logic_vector(1 downto 0)
	);
end alu_control;

architecture bhv of alu_control is
	signal ALU_LO_HI_r : std_logic_vector(1 downto 0);
begin

process(IR5_0, ALUOP)
	begin
	--default values(adds by default)
	OPSelect <= (others => '0');
	HI_en <= '0';
	LO_en <= '0';
	ALU_LO_HI_r <= "00";
	if(ALUOP = "0001") then --rtype
		if(IR5_0 = "100001") then --ADDU
			OPSelect <= (others => '0');
		elsif(IR5_0 = "100011") then --SUBU
			OPSelect <= "00001";
		elsif(IR5_0 = "011000") then --MULT
			OPSelect <= "00010";
			HI_en <= '1';
			LO_en <= '1';
		elsif(IR5_0 = "011001") then --MULTU
			OPSelect <= "00011";
			HI_en <= '1';
			LO_en <= '1';
		elsif(IR5_0 = "100100") then --AND
			OPSelect <= "00100";
		elsif(IR5_0 = "100101") then --OR
			OPSelect <= "00101";
		elsif(IR5_0 = "100110") then --XOR
			OPSelect <= "00110";
		elsif(IR5_0 = "000010") then --SRL
			OPSelect <= "00111";
		elsif(IR5_0 = "000000") then --SLL
			OPSelect <= "01000";
		elsif(IR5_0 = "000011") then --SRA
			OPSelect <= "01001";
		elsif(IR5_0 = "101010") then --SLT
			OPSelect <= "01010";
		elsif(IR5_0 = "101011") then --SLTU
			OPSelect <= "01011";
		elsif(IR5_0 = "010000") then --MFHI
			OPSelect <= "10011";
			ALU_LO_HI_r <= "10";
		elsif(IR5_0 = "010010") then --MFLO
			OPSelect <= "10011";
			ALU_LO_HI_r <= "01";
		elsif(IR5_0 = "001000") then --JR
			OPSelect <= "10010";
		end if;
			
	elsif(ALUOP = "0010") then
		OPSelect <= "00001";
	elsif(ALUOP = "0011") then
		OPSelect <= "00100";
	elsif(ALUOP = "0100") then
		OPSelect <= "00101";
	elsif(ALUOP = "0101") then
		OPSelect <= "00110";
	elsif(ALUOP = "0110") then
		OPSelect <= "01010";
	elsif(ALUOP = "0111") then
		OPSelect <= "01011";
	elsif(ALUOP = "1000") then
		OPSelect <= "10010";
	elsif(ALUOP = "1001") then
		OPSelect <= "01100";
	elsif(ALUOP = "1010") then
		OPSelect <= "01101";
	elsif(ALUOP = "1011") then
		OPSelect <= "01110";
	elsif(ALUOP = "1100") then
		OPSelect <= "01111";
	end if;
end process;

	U_REG : entity work.reg(reg_not_enabled)
		generic map(WIDTH=>2)
		port map(
		clk => clk,
		reset => rst,
		enable =>  '1',
		input => ALU_LO_HI_r,
		output => ALU_LO_HI
		);
end bhv;