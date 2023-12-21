library ieee; 
use ieee.std_logic_1164.all;

entity reg is
	generic (
		WIDTH : positive := 32
	);
	port (
		clk : in std_logic;
		reset : in std_logic;
		enable : in std_logic;
		input : in std_logic_vector(WIDTH-1 downto 0);
		output : out std_logic_vector(WIDTH-1 downto 0)
		);
end reg;

architecture reg_enabled of reg is

begin

	process(clk,reset)
	
	begin
	
		if(reset = '1') then
			output <= (others => '0');
		elsif(rising_edge(clk)) then
			if(enable = '1') then
				output <= input;
			end if;
		end if;
	end process;
end reg_enabled;

architecture reg_not_enabled of reg is

begin

	process(clk,reset)
	
	begin
	
		if(reset = '1') then
			output <= (others => '0');
		elsif(rising_edge(clk)) then
			output <= input;
		end if;
	end process;
end reg_not_enabled;