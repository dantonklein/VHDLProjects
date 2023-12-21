library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity memory is
	generic (
		WIDTH : positive := 32
	);
	port (
		mem_read : in std_logic;
		mem_write : in std_logic;
		address_in: in std_logic_vector(31 downto 0);
		data_in: in std_logic_vector(Width-1 downto 0);
		clk : in std_logic;
		rst : in std_logic;
		input_port : in std_logic_vector(WIDTH-1 downto 0);
		input_select : in std_logic;
		input_enable : in std_logic;
		output_port : out std_logic_vector(WIDTH-1 downto 0);
		data_out : out std_logic_vector(WIDTH-1 downto 0)
	);
end memory;

architecture memory_bhv of memory is
	signal ram_write : std_logic;
	signal ram_read : std_logic;
	signal input0_enable : std_logic;
	signal input1_enable : std_logic;
	signal output_port_write : std_logic;
	signal input0_port_data : std_logic_vector(WIDTH-1 downto 0);
	signal input1_port_data : std_logic_vector(WIDTH-1 downto 0);
	signal ram_data : std_logic_vector(WIDTH-1 downto 0);
	signal mux_select : std_logic_vector(1 downto 0);
	signal mux_select_r : std_logic_vector(1 downto 0);
begin

	U_INPUT0_port : entity work.reg(reg_enabled) 
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => '0',
		enable => input0_enable,
		input => input_port,
		output => input0_port_data
		);
		
	U_INPUT1_port : entity work.reg(reg_enabled) 
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => '0',
		enable => input1_enable,
		input => input_port,
		output => input1_port_data
		);
		
	U_OUTPUT_PORT : entity work.reg(reg_enabled)
		generic map(WIDTH=>WIDTH)
		port map(
		clk => clk,
		reset => rst,
		enable => output_port_write,
		input => data_in,
		output => output_port
		);
	
	U_RAM : entity work.ram256
		port map(
		address => address_in(9 downto 2),
		clock => clk,
		data => data_in,
		wren => ram_write,
		q => ram_data
		);
		
	U_MUX3_1 : entity work.mux3_1(bhv1)
		generic map(WIDTH=>WIDTH)
		port map(
		input0 => input0_port_data,
		input1 => input1_port_data,
		input2 => ram_data,
		output => data_out,
		sel => mux_select_r
		);
		
	U_MUX_SELECT_REG : entity work.reg(reg_not_enabled)
		generic map(WIDTH=>2)
		port map(
		clk => clk,
		reset => rst,
		enable => '1',
		input => mux_select,
		output => mux_select_r
		);	
		
	process(input_select, input_enable)
	begin
	if(input_enable = '1') then
		if(input_select = '0') then
			input0_enable <= '1';
			input1_enable <= '0';
		else
			input0_enable <= '0';
			input1_enable <= '1';
		end if;
	else
		input0_enable <= '0';
		input1_enable <= '0';
	end if;
	end process;
	
	process(mem_read, address_in) --read logic
	begin
	mux_select <= "10";
	if(mem_read = '1') then
		if(address_in = x"0000FFF8") then
			mux_select <= "00";
		elsif(address_in = x"0000FFFC") then
			mux_select <= "01";
		elsif((unsigned(address_in) >= 0) and (unsigned(address_in) <= 1023)) then
			mux_select <= "10";
		end if;
	end if;
	end process;
	
	process(mem_write, address_in) --write logic
	begin
	ram_write <= '0';
	output_port_write <= '0';
	if(mem_write = '1') then
		if(address_in = x"0000FFFC") then
			output_port_write <= '1';
		elsif((unsigned(address_in) >= 0) and (unsigned(address_in) <= 1023)) then
			ram_write <= '1';
		end if;
	end if;
	end process;
end memory_bhv;