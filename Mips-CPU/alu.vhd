library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity alu is 
	generic ( 
		WIDTH : positive := 32 
	); 
	port (

		inputA : in std_logic_vector(WIDTH-1 downto 0);
		inputB : in std_logic_vector(WIDTH-1 downto 0);
		OPSelect : in std_logic_vector(4 downto 0); 
		IR : in std_logic_vector(4 downto 0); 
		result : out std_logic_vector(WIDTH-1 downto 0); 
		result_high : out std_logic_vector(WIDTH-1 downto 0); 
		branch_taken : out std_logic 
		); 	
end alu;

architecture alu_bhv of alu is

begin
	
	process(inputA, inputB, OPSelect, IR)
	
		variable temp : std_logic_vector(2 * width-1 downto 0); 
		
		
	begin
	
		branch_taken <= '0';
		result <= (others => '0');
		result_high <= (others => '0');
		case OPSelect is
			when "00000" => --1, add
			
				result <= std_logic_vector(unsigned(inputA) + unsigned(inputB));
				
			when "00001" => --2, subtract
			
				result <= std_logic_vector(unsigned(inputA) - unsigned(inputB));
				
			when "00010" => --3, signed multiply
			
				temp := std_logic_vector(signed(inputA) * signed(inputB));
				result <= temp(WIDTH-1 downto 0);
				result_high <= temp(2*WIDTH-1 downto WIDTH); 
			
			when "00011" => --4, unsigned multiply
			
				temp := std_logic_vector(unsigned(inputA) * unsigned(inputB));
				result <= temp(WIDTH-1 downto 0);
				result_high <= temp(2*WIDTH-1 downto WIDTH); 
				
			when "00100" => --5, And
			
				result <= inputA and inputB;
				
			when "00101" => --6, Or
			
				result <= inputA or inputB;
				
			when "00110" => --7, Xor
			
				result <= inputA xor inputB;
				
			when "00111" => --8, Logical Shift Right
			
				result <= std_logic_vector(SHIFT_RIGHT(unsigned(inputB) , to_integer(unsigned(IR)) ));
				
			when "01000" => --9, Logical Shift Left
			
				result <= std_logic_vector(SHIFT_LEFT(unsigned(inputB) , to_integer(unsigned(IR)) ));
				
			when "01001" => --10, Arithmetic Shift Right
				
				result <= std_logic_vector(SHIFT_RIGHT(signed(inputB) , to_integer(unsigned(IR)) ));
				
			when "01010" => --11, set on less than signed
				
				if(signed(inputB) > signed(inputA)) then
					result <= std_logic_vector(to_unsigned(1, WIDTH));
				else
					result <= (others => '0');
				end if;
				
			when "01011" => --12, set on less than unsigned
			
				if(unsigned(inputB) > unsigned(inputA)) then
					result <= std_logic_vector(to_unsigned(1, WIDTH));
				else
					result <= (others => '0');
				end if;
				
			when "01100" => --13, Branch on Equal
			
				if(inputA = inputB) then
					branch_taken <= '1';
				end if;
				
			
			when "01101" => --14, Branch on not Equal
			
				if(inputA /= inputB) then
					branch_taken <= '1';
				end if;
				
			when "01110" => --15, Branch on Less Than or Equal to Zero
			
				if(unsigned(inputA) <= 0) then
					branch_taken <= '1';
				end if;
				
			when "01111" => --16, Branch on Greater Than Zero
			
				if(unsigned(inputA) > 0) then
					branch_taken <= '1';
				end if;
				
			when "10000" => --17, Branch on Less Than Zero
			
				if(unsigned(inputA) < 0) then
					branch_taken <= '1';
				end if;
				
			when "10001" => --18, Branch on Greater Than or Equal to Zero
			
				if(unsigned(inputA) >= 0) then
					branch_taken <= '1';
				end if;
				
			when "10010" => --19, pass inputA to output
				result <= inputA;
				
			when "10011" => --20, No Operation
				result <= (others => '0');
			when others =>
			
		end case;
	end process;
end alu_bhv;
				
				