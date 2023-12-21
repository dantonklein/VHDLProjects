library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
	port (
		clk : in std_logic;
		rst : in std_logic;
		instruction_register31_26 : in std_logic_vector(5 downto 0);
		instruction_register20_16 : in std_logic_vector(4 downto 0);
		instruction_register5_0 : in std_logic_vector(5 downto 0);
		JumpAndLink : out std_logic; 
		IsSigned : out std_logic;
		PCSource : out std_logic_vector(1 downto 0);
		ALUOp : out std_logic_vector(3 downto 0);
		ALUSrcB : out std_logic_vector(1 downto 0);
		ALUSrcA : out std_logic;
		RegWrite : out std_logic;
		RegDst : out std_logic;
		PCWrite : out std_logic;
		PcWriteCond : out std_logic;
		IorD : out std_logic;
		MemRead : out std_logic;
		MemWrite : out std_logic;
		MemToReg : out std_logic;
		IRWrite : out std_logic
	);
end controller;

architecture main of controller is

	type state_t is (start, instruction_fetch1, instruction_fetch2, instruction_fetch3, instruction_decode, r_type1, r_type2, i_type1, i_type2, load_and_store_word1, load_and_store_word2, load_word3, load_word4, jump, JumpAndLink1, JumpAndLink2, Branch1, Branch2);
	
	signal state_r : state_t;
	
begin

	process(clk,rst)
	begin
		if (rst = '1') then
			state_r <= start;
			JumpAndLink <= '0';
			IsSigned <= '0';
			PCSource <= "00";
			ALUOp <= "0000";
			ALUSrcB <= "00";
			ALUSrcA <= '1';
			RegWrite <= '0';
			RegDst <= '0';
			PCWrite <= '0';
			PcWriteCond <= '0';
			IorD <= '0';
			MemRead <= '0';
			MemWrite <= '0';
			MemToReg <= '0';
			IRWrite <= '0';
		elsif(rising_edge(clk)) then
			--default signal values
			JumpAndLink <= '0';
			IsSigned <= '0';
			PCSource <= "00";
			ALUOp <= "0000";
			ALUSrcB <= "00";
			ALUSrcA <= '1';
			RegWrite <= '0';
			RegDst <= '0';
			PCWrite <= '0';
			PcWriteCond <= '0';
			IorD <= '0';
			MemRead <= '0';
			MemWrite <= '0';
			MemToReg <= '0';
			IRWrite <= '0';
			
			--For ALUOP:
			--0000 is ADD
			--0001 is R_TYPE
			--0010 is Subtract
			--0011 is And
			--0100 is or
			--0110 is slt
			--0111 is sltu
			--1000 inputA to result
			--1001 Branch if Equal
			--1010 Branch not equal
			--1011 Branch on Less Than or Equal to Zero
			--1100 Branch on Greater Than or Equal to Zero
			--1101 Branch on Less Than Zero
			--1110 Branch on Greater Than or Equal to Zero
			case state_r is
				when start =>
					state_r <= instruction_fetch1;
				when instruction_fetch1 =>
					IorD <= '0'; --fetching an instruction, not data
					MemRead <= '1';
					state_r <= instruction_fetch2;
					
				when instruction_fetch2 =>
					IRWrite <= '1';
					ALUSrcA <= '0';
					ALUSrcB <= "01";
					ALUOp <= "0000"; --add
					PCSource <= "00";
					PCWrite <= '1';
					state_r <= instruction_fetch3;
					
				when instruction_fetch3 =>
					state_r <= instruction_decode;
				
				when instruction_decode =>
					if(instruction_register31_26 = "000000") then --rtype
						state_r <= r_type1;
					elsif(instruction_register31_26 = "001001") then --addiu
						state_r <= i_type1;
					elsif(instruction_register31_26 = "010000") then --subiu
						state_r <= i_type1;
					elsif(instruction_register31_26 = "001100") then --andi
						state_r <= i_type1;
					elsif(instruction_register31_26 = "001101") then --ori
						state_r <= i_type1;
					elsif(instruction_register31_26 = "001110") then --xori
						state_r <= i_type1;
					elsif(instruction_register31_26 = "001010") then --slti
						state_r <= i_type1;
					elsif(instruction_register31_26 = "001011") then --slti
						state_r <= i_type1;
					elsif(instruction_register31_26 = "100011") then --LW
						state_r <= load_and_store_word1;
					elsif(instruction_register31_26 = "101011") then --SW
						state_r <= load_and_store_word1;
					elsif(instruction_register31_26 = "000010") then --J
						state_r <= jump;
					elsif(instruction_register31_26 = "111111") then --Halt
						state_r <= instruction_decode;
					elsif(instruction_register31_26 = "000011") then --JumpAndLink
						state_r <= JumpAndLink1;
					elsif(instruction_register31_26 = "000100") then --BEQ
						state_r <= Branch1;
					elsif(instruction_register31_26 = "000101") then --BNE
						state_r <= Branch1;
					elsif(instruction_register31_26 = "000110") then --BLEZ
						state_r <= Branch1;
					elsif(instruction_register31_26 = "000111") then --BGTZ
						state_r <= Branch1;
					elsif(instruction_register31_26 = "000001") then --BLTZ and BGEZ
						state_r <= Branch1;
					else
					end if;	
					
				when r_type1 =>
					ALUSrcA <= '1';
					ALUSrcB <= "00";
					ALUOp <= "0001";
					if(instruction_register5_0 = "001000") then
						PCSource <= "00";
						PCWrite <= '1';
						state_r <= instruction_fetch1;
					else 
						state_r <= r_type2;
					end if;
					
				when r_type2 =>
					MemToReg <= '0';
					RegWrite <= '1';
					if(instruction_register5_0 = "011000" or instruction_register5_0 = "011001") then
						RegWrite <= '0';
					end if;
					RegDst <= '1';
					state_r <= instruction_fetch1;
					
				when i_type1 =>
					ALUSrcA <= '1';
					ALUSrcB <= "10";
					IsSigned <= '1';
					if(instruction_register31_26 = "001001") then
						ALUOp <= "0000";
					elsif(instruction_register31_26 = "010000") then
						ALUOp <= "0010";
					elsif(instruction_register31_26 = "001100") then
						IsSigned <= '0';
						ALUOp <= "0011";
					elsif(instruction_register31_26 = "001101") then
						IsSigned <= '0';
						ALUOp <= "0100";
					elsif(instruction_register31_26 = "001110") then	
						IsSigned <= '0';
						ALUOp <= "0101";
					elsif(instruction_register31_26 = "001010") then
						ALUOp <= "0110";
					elsif(instruction_register31_26 = "001011") then
						ALUOp <= "0111";
					end if;
					state_r <= i_type2;
				
				when i_type2 =>
					MemToReg <= '0';
					RegWrite <= '1';
					RegDst <= '0';
					state_r <= instruction_fetch1;
				
				when load_and_store_word1 =>
					IsSigned <= '0';
					ALUSrcA <= '1';
					ALUSrcB <= "10";
					ALUOP <= "0000";
					state_r <= load_and_store_word2;
					
				when load_and_store_word2 =>
					IorD <= '1';
					if(instruction_register31_26 = "100011") then --lw
						MemRead <= '1';
						state_r <= load_word3;
					else --sw
						MemWrite <= '1';
						state_r <= instruction_fetch1;
					end if;
					
				when load_word3 =>
					state_r <= load_word4;
					
				when load_word4 =>
					MemToReg <= '1';
					RegWrite <= '1';
					RegDst <= '0';
					state_r <= instruction_fetch1;
					
				when jump =>
					PCSource <= "10";
					PCWrite <= '1';
					state_r <= instruction_fetch1;
					
				when JumpAndLink1 =>
					ALUSrcA <= '0';
					ALUOp <= "1000";
					PCSource <= "10";
					PCWrite <= '1';
					state_r <= JumpAndLink2;
					
				when JumpAndLink2 =>
					MemToReg <= '0';
					JumpAndLink <= '1';
					RegWrite <= '1';
					state_r <= instruction_fetch1;
					
				when Branch1 =>
					ALUSrcB <= "11";
					IsSigned <= '1';
					ALUSrcA <= '0';
					ALUOp <= "0000";
					state_r <= Branch2;
					
				when Branch2 =>
					AluSrcA <= '1';
					AluSrcB <= "00";
					PCWriteCond <= '1';
					PCSource <= "01";
					if(instruction_register31_26 = "000100") then --BEQ
						ALUOP <= "1001";
					elsif(instruction_register31_26 = "000101") then --BNE
						ALUOP <= "1010";
					elsif(instruction_register31_26 = "000110") then --BLEZ
						ALUOP <= "1011";
					elsif(instruction_register31_26 = "000111") then --BGTZ
						ALUOP <= "1100";
					elsif(instruction_register31_26 = "000001") then --BLTZ and BGEZ
						if(instruction_register20_16 = "00000") then --BLTZ
							ALUOP <= "1101";
						elsif(instruction_register20_16 = "00001") then --BGEZ
							ALUOP <= "1110";
						end if;
					end if;
					state_r <= instruction_fetch1;
			end case;
		end if;
	end process;
end main;
