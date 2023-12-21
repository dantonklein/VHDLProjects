library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity registersfile is
	port(
		clk : in std_logic;
		rst : in std_logic;
		JumpAndLink: in std_logic;
		RegWrite: in std_logic;
		read_reg1 : in std_logic_vector(4 downto 0); --address signals
		read_reg2 : in std_logic_vector(4 downto 0);
		write_reg : in std_logic_vector(4 downto 0);
		write_data : in std_logic_vector(31 downto 0);
		output_data1 : out std_logic_vector(31 downto 0);
		output_data2 : out std_logic_vector(31 downto 0)
	);
end registersfile;

architecture bhv of registersfile is
	type reg_array is array(0 to 31) of std_logic_vector(31 downto 0);
	signal regs : reg_array;
begin
	process(read_reg1,regs)
	begin
		if(read_reg1 = "00000") then
			output_data1 <= (others => '0');
		else
			output_data1 <= regs(to_integer(unsigned(read_reg1)));
		end if;
	end process;
	
	process(read_reg2,regs)
	begin
		if(read_reg2 = "00000") then
			output_data2 <= (others => '0');
		else
			output_data2 <= regs(to_integer(unsigned(read_reg2)));
		end if;
	end process;


	process(clk, rst)
	begin
		if (rst = '1') then
			for i in regs'range loop
				regs(i) <= (others => '0');
			end loop;
		elsif(rising_edge(clk)) then
			if(RegWrite = '1') then
				if(JumpAndLink = '1') then
					regs(31) <= write_data;
				else
					regs(to_integer(unsigned(write_reg))) <= write_data;
				end if;
			end if;
		end if;
	end process;
end bhv;
			