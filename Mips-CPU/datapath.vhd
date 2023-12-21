library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
	generic (
		Width : positive := 32
	);
	port (
		clk : in std_logic;
		rst : in std_logic;
		JumpAndLink : in std_logic; 
		IsSigned : in std_logic;
		PCSource : in std_logic_vector(1 downto 0);
		ALUOp : in std_logic_vector(3 downto 0);
		ALUSrcB : in std_logic_vector(1 downto 0);
		ALUSrcA : in std_logic;
		RegWrite : in std_logic;
		RegDst : in std_logic;
		PCWriteOrPcWriteCond : in std_logic;
		IorD : in std_logic;
		MemRead : in std_logic;
		MemWrite : in std_logic;
		MemToReg : in std_logic;
		IRWrite : in std_logic;
		button : in std_logic;
		switches : in std_logic_vector(9 downto 0);
		LEDS : out std_logic_vector(width-1 downto 0);
		branch_taken : out std_logic;
		instruction_register31_26 : out std_logic_vector(5 downto 0);
		instruction_register20_16 : out std_logic_vector(4 downto 0);
		instruction_register5_0 : out std_logic_vector(5 downto 0)
	);
end datapath;

architecture bhv of datapath is
	signal pc_out : std_logic_vector(width-1 downto 0);
	signal pc_in : std_logic_vector(width-1 downto 0);
	signal alu_result : std_logic_vector(width-1 downto 0);
	signal alu_out_reg : std_logic_vector(width-1 downto 0);
	signal PC_OUT_ALU_OUT_2_1MUX_OUT : std_logic_vector(width-1 downto 0);
	signal zero_extended_switches : std_logic_vector(width-1 downto 0);
	signal instruction_register_in : std_logic_vector(width-1 downto 0);
	signal instruction_register_out : std_logic_vector(width-1 downto 0);
	signal REG_B_OUT : std_logic_vector(width-1 downto 0);
	signal REG_A_OUT : std_logic_vector(width-1 downto 0);
	signal memory_data_register_out : std_logic_vector(width-1 downto 0);
	signal WRITE_REGISTER_REGISTERS_FILE : std_logic_vector(4 downto 0);
	signal ALU_OUT_LO_HI_3_TO_1_MUX_OUTPUT : std_logic_vector(width-1 downto 0);
	signal WRITE_DATA_REGISTERS_FILE : std_logic_vector(width-1 downto 0);
	signal REG_B_IN : std_logic_vector(width-1 downto 0);
	signal REG_A_IN : std_logic_vector(width-1 downto 0);
	signal INSTRUCTION_REGISTER_OUT_15_TO_0_SIGN_EXTEND_OUT : std_logic_vector(width-1 downto 0);
	signal INSTRUCTION_REGISTER_OUT_15_TO_0_SIGN_EXTEND_OUT_LEFTSHIFT2 : std_logic_vector(width-1 downto 0);
	signal ALU_INPUT_A : std_logic_vector(width-1 downto 0);
	signal ALU_INPUT_B : std_logic_vector(width-1 downto 0);
	signal INSTRUCTION_REGISTER_OUT_25_TO_0_SHIFT_LEFT_2 : std_logic_vector(27 downto 0);
	signal OPSelect : std_logic_vector(4 downto 0); 
	signal alu_result_high : std_logic_vector(31 downto 0);
	signal INSTRUCTION_REGISTER_OUT_25_TO_0_SHIFT_LEFT_2_CONCAT : std_logic_vector(width-1 downto 0);
	signal HI_en : std_logic;
	signal LO_en : std_logic;
	signal ALU_LO_HI : std_logic_vector(1 downto 0);
	signal LO_REGISTER_OUT : std_logic_vector(width-1 downto 0);
	signal HI_REGISTER_OUT : std_logic_vector(width-1 downto 0);
	signal instruction_register_out_25_downto_0_wide : std_logic_vector(27 downto 0);
begin

	U_PC_REG : entity work.reg(reg_enabled)
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => rst,
		enable => PCWriteOrPcWriteCond,
		input => pc_in,
		output => pc_out
		);
		
	U_PC_OUT_ALU_OUT_2_1MUX : entity work.mux2_1
		generic map(WIDTH=>WIDTH)
		port map(
		input0 => pc_out,
		input1 => alu_out_reg,
		output => PC_OUT_ALU_OUT_2_1MUX_OUT,
		sel => IorD
		);
		
	U_MEMORY : entity work.memory
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		rst => rst,
		mem_read => MemRead,
		mem_write => MemWrite,
		address_in => PC_OUT_ALU_OUT_2_1MUX_OUT,
		data_in => REG_B_OUT,
		input_port => zero_extended_switches,
		input_select => switches(9),
		input_enable => button,
		output_port => LEDS,
		data_out => instruction_register_in
		);
		
	U_SWITCH_INPUT_ZERO_EXTEND : entity work.zero_extend
		port map(
			input => switches(8 downto 0),
			output => zero_extended_switches
		);
	
	U_INSTRUCTION_REGISTER : entity work.reg(reg_enabled)
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => rst,
		enable => IRWrite,
		input => instruction_register_in,
		output => instruction_register_out
		);
		
	U_MEMORY_DATA_REGISTER : entity work.reg(reg_not_enabled)
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => rst,
		enable => '1',
		input => instruction_register_in,
		output => memory_data_register_out
		);
		
	instruction_register31_26 <= instruction_register_out(31 downto 26);
	instruction_register20_16 <= instruction_register_out(20 downto 16);
	instruction_register5_0 <= instruction_register_out(5 downto 0);
	
	U_INSTRUCTION_REGISTER_OUT_20_TO_16_15_TO_11_MUX : entity work.mux2_1
		generic map(WIDTH=>5)
		port map(
		input0 => instruction_register_out(20 downto 16),
		input1 => instruction_register_out(15 downto 11),
		output => WRITE_REGISTER_REGISTERS_FILE,
		sel => RegDst
		);
		
	U_MEMORY_DATA_REGISTER_ALU_OUT_LO_HI_3_TO_1_MUX_MUX : entity work.mux2_1
		generic map(WIDTH=>WIDTH)
		port map(
		input0 => ALU_OUT_LO_HI_3_TO_1_MUX_OUTPUT,
		input1 => memory_data_register_out,
		output => WRITE_DATA_REGISTERS_FILE,
		sel => MemToReg
		);
		
	U_REGISTERFILE : entity work.registersfile
		port map(
		clk => clk,
		rst => rst,
		JumpAndLink => JumpAndLink,
		RegWrite => RegWrite,
		read_reg1 => instruction_register_out(25 downto 21),
		read_reg2 => instruction_register_out(20 downto 16),
		write_reg => WRITE_REGISTER_REGISTERS_FILE,
		write_data => WRITE_DATA_REGISTERS_FILE,
		output_data1 => REG_A_IN,
		output_data2 => REG_B_IN
		);
		
	U_INSTRUCTION_REGISTER_OUT_15_TO_0_SIGN_EXTEND : entity work.sign_extend
		port map(
		IsSigned => IsSigned,
		input => instruction_register_out(15 downto 0),
		output => INSTRUCTION_REGISTER_OUT_15_TO_0_SIGN_EXTEND_OUT
		);
		
	U_REG_A : entity work.reg(reg_not_enabled)
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => rst,
		enable =>  '1',
		input => REG_A_IN,
		output => REG_A_OUT
		);
		
	U_REG_B : entity work.reg(reg_not_enabled)
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => rst,
		enable => '1',
		input => REG_B_IN,
		output => REG_B_OUT
		);
		
	U_SIGN_EXTEND_OUT_SHIFT_LEFT_2 : entity work.shiftleft2
		generic map(WIDTH=>WIDTH)
		port map(
		input => INSTRUCTION_REGISTER_OUT_15_TO_0_SIGN_EXTEND_OUT,
		output => INSTRUCTION_REGISTER_OUT_15_TO_0_SIGN_EXTEND_OUT_LEFTSHIFT2
		);
		
	U_REG_A_MUX : entity work.mux2_1
		generic map(WIDTH=>WIDTH)
		port map(
		input0 => pc_out,
		input1 => REG_A_OUT,
		output => ALU_INPUT_A,
		sel => ALUSrcA
		);
			
	U_REG_B_MUX : entity work.mux4_1
		generic map(WIDTH=>WIDTH)
		port map(
		input0 => REG_B_OUT,
		input1 => std_logic_vector(to_unsigned(4, 32)),
		input2 =>INSTRUCTION_REGISTER_OUT_15_TO_0_SIGN_EXTEND_OUT,
		input3 =>INSTRUCTION_REGISTER_OUT_15_TO_0_SIGN_EXTEND_OUT_LEFTSHIFT2,
		output => ALU_INPUT_B,
		sel => ALUSrcB
		);
		
	instruction_register_out_25_downto_0_wide <= "00" & instruction_register_out(25 downto 0);
		
	U_INSTRUCTION_REGISTER_OUT_25_TO_0_SHIFT_LEFT_2 : entity work.shiftleft2
		generic map(WIDTH=>28)
		port map(
		input => instruction_register_out_25_downto_0_wide,
		output => INSTRUCTION_REGISTER_OUT_25_TO_0_SHIFT_LEFT_2
		);
		
	U_ALU : entity work.alu
		generic map(WIDTH=>WIDTH)
		port map(
		inputA => ALU_INPUT_A,
		inputB => ALU_INPUT_B,
		OPSelect => OPSelect,
		IR => instruction_register_out(10 downto 6),
		result => alu_result,
		result_high => alu_result_high,
		branch_taken => branch_taken
		);
		
	U_INSTRUCTION_REGISTER_OUT_25_TO_0_SHIFT_LEFT_2_CONCAT : entity work.concat
		port map(
			PC31_28 => pc_out(31 downto 28),
			input => INSTRUCTION_REGISTER_OUT_25_TO_0_SHIFT_LEFT_2,
			output => INSTRUCTION_REGISTER_OUT_25_TO_0_SHIFT_LEFT_2_CONCAT
		);
	
	U_ALU_CONTROL : entity work.alu_control 
		port map(
			clk => clk,
			rst => rst,
			IR5_0 => instruction_register_out(5 downto 0),
			ALUOp => ALUOp ,
			OPSelect => OPSelect,
			HI_en => HI_en,
			LO_en => LO_en,
			ALU_LO_HI => ALU_LO_HI
		);
		
	U_ALU_OUT_REG : entity work.reg(reg_not_enabled)
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => rst,
		enable => '1',
		input => alu_result,
		output => alu_out_reg
		);
		
	U_LO_REGISTER : entity work.reg(reg_enabled)
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => rst,
		enable => LO_en,
		input => alu_result,
		output => LO_REGISTER_OUT
		);
		
	U_HI_REGISTER : entity work.reg(reg_enabled)
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => rst,
		enable => HI_en,
		input => alu_result_high,
		output => HI_REGISTER_OUT
		);
		
	U_PC_IN_MUX : entity work.mux3_1(bhv1)
		generic map(WIDTH=>WIDTH)
		port map(
		input0 => alu_result,
		input1 => alu_out_reg,
		input2 => INSTRUCTION_REGISTER_OUT_25_TO_0_SHIFT_LEFT_2_CONCAT,
		output => pc_in,
		sel => PCSource
		);
		
	U_PC_OUT_FRIEND_MUX : entity work.mux3_1(bhv1)
		generic map(WIDTH=>WIDTH)
		port map(
		input0 => alu_out_reg,
		input1 => LO_REGISTER_OUT,
		input2 => HI_REGISTER_OUT,
		output => ALU_OUT_LO_HI_3_TO_1_MUX_OUTPUT,
		sel => ALU_LO_HI
		);
end bhv;