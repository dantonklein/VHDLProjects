--Danton Klein

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_tb is
end alu_tb;

architecture default_tb of alu_tb is 
	constant Width : positive := 32;
	signal inputA  : std_logic_vector(WIDTH-1 downto 0);
	signal inputB  : std_logic_vector(WIDTH-1 downto 0);
	signal OPSelect: std_logic_vector(4 downto 0); 
	signal IR	   : std_logic_vector(4 downto 0);
	signal result  : std_logic_vector(WIDTH-1 downto 0);
	signal result_high: std_logic_vector(WIDTH-1 downto 0);
	signal branch_taken: std_logic;
		
begin --TB

	UUT : entity work.alu(alu_bhv)
	generic map(WIDTH => WIDTH)
		port map(
			inputA => inputA,
			inputB => inputB,
			OPSelect => OPSelect,
			IR => IR,
			result => result,
			result_high => result_high,
			branch_taken => branch_taken
		);
		
	process
		variable result_correct : std_logic_vector(Width-1 downto 0);
		variable result_high_correct : std_logic_vector(Width-1 downto 0);
		variable branch_correct : std_logic;
		variable testselect : std_logic_vector(3 downto 0);
	begin
	
		for i in 0 to 11 loop
			IR <= "00000";
			OPSelect <= "00000";
			inputA <= (others => '0');
			inputB <= (others => '0');
			if (i = 0) then
				OPSelect <= "00000";
				inputA <= std_logic_vector(to_unsigned(10,WIDTH));
				inputB <= std_logic_vector(to_unsigned(15,WIDTH));
				result_correct := "00000000000000000000000000011001";
				result_high_correct := "00000000000000000000000000000000";
				branch_correct := '0';
			elsif(i = 1) then
				OPSelect <= "00001";
				inputA <= std_logic_vector(to_unsigned(25,WIDTH));
				inputB <= std_logic_vector(to_unsigned(10,WIDTH));
				result_correct := "00000000000000000000000000001111";
				result_high_correct := "00000000000000000000000000000000";
				branch_correct := '0';
			elsif(i = 2) then
				OPSelect <= "00010";
				inputA <= std_logic_vector(to_signed(10,WIDTH));
				inputB <= std_logic_vector(to_signed(-4,WIDTH));
				result_correct := "11111111111111111111111111011000";
				result_high_correct := "11111111111111111111111111111111";
				branch_correct := '0';
			elsif(i = 3) then
				OPSelect <= "00011";
				inputA <= std_logic_vector(to_unsigned(65536,WIDTH));
				inputB <= std_logic_vector(to_unsigned(131072,WIDTH));
				result_correct := "00000000000000000000000000000000";
				result_high_correct := "00000000000000000000000000000010";
				branch_correct := '0';
			elsif(i = 4) then
				OPSelect <= "00100";
				inputA <= x"0000FFFF";
				inputB <= x"FFFF1234";
				result_correct := "00000000000000000001001000110100";
				result_high_correct:= "00000000000000000000000000000000";
				branch_correct := '0';
			elsif(i = 5) then
				OPSelect <= "00111";
				IR <= std_logic_vector(to_unsigned(4, 5));
				inputA <= x"0000000F";
				result_correct := "00000000000000000000000000000000";
				result_high_correct := "00000000000000000000000000000000";
				branch_correct := '0';
			elsif(i = 6) then
				OPSelect <= "01001";
				IR <= std_logic_vector(to_unsigned(1, 5));
				inputA <= x"F0000008";
				result_high_correct := "00000000000000000000000000000000";
				result_correct := "11111000000000000000000000000100";
				branch_correct := '0';
			elsif(i = 7) then
				OPSelect <= "01001";
				IR <= std_logic_vector(to_unsigned(1, 5));
				inputA <= x"00000008";
				result_correct := "00000000000000000000000000000100";
				result_high_correct := "00000000000000000000000000000000";
				branch_correct := '0';
			elsif(i = 8) then
				OPSelect <= "01011";
				inputA <= std_logic_vector(to_unsigned(10, width));
				inputB <= std_logic_vector(to_unsigned(15, width));
				result_correct := "00000000000000000000000000000001";
				result_high_correct := "00000000000000000000000000000000";
				branch_correct := '0';
			elsif(i = 9) then
				OPSelect <= "01011";
				inputA <= std_logic_vector(to_unsigned(15, width));
				inputB <= std_logic_vector(to_unsigned(10, width));
				result_correct := "00000000000000000000000000000000";
				result_high_correct := "00000000000000000000000000000000";
				branch_correct := '0';
			elsif(i = 10) then
				OPSelect <= "01110";
				inputA <= std_logic_vector(to_unsigned(5, width));
				result_correct := "00000000000000000000000000000000";
				result_high_correct := "00000000000000000000000000000000";
				branch_correct := '0';
			elsif(i = 11) then
				OPSelect <= "01111";
				inputA <= std_logic_vector(to_unsigned(5, width));
				result_correct := "00000000000000000000000000000000";
				result_high_correct:= "00000000000000000000000000000000";
				branch_correct:= '1';
			end if;
			
			wait for 10 ns;
			assert(result = result_correct);
			assert(result_high = result_high_correct);
			assert(branch_taken = branch_correct);
			
		end loop;
		
		report "Tests completed. ";
		wait;
		
	end process;
	
end default_tb;
			