library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_tb is
end memory_tb;

architecture default_tb of memory_tb is
	constant WIDTH : positive := 32;
	signal mem_read : std_logic;
	signal mem_write : std_logic;
	signal address_in: std_logic_vector(31 downto 0);
	signal data_in: std_logic_vector(Width-1 downto 0);
	signal clk : std_logic := '0';
	signal rst : std_logic;
	signal input_port : std_logic_vector(WIDTH-1 downto 0);
	signal input_select : std_logic;
	signal input_enable : std_logic;
	signal output_port : std_logic_vector(WIDTH-1 downto 0);
	signal data_out : std_logic_vector(WIDTH-1 downto 0);
	
	signal clk_en : std_logic := '1';
	
begin

	UUT : entity work.memory(memory_bhv)
	generic map(WIDTH => WIDTH)
		port map(
			mem_read => mem_read,
			mem_write => mem_write, 
			address_in => address_in,
			data_in => data_in,
			clk => clk,
			rst => rst,
			input_port => input_port,
			input_select => input_select,
			input_enable => input_enable,
			output_port => output_port,
			data_out => data_out
			);
			
			
	clk <= not clk and clk_en after 5 ns;
	
	process
	begin
		clk_en <= '1';
		rst <= '0';
		mem_read <= '0';
		mem_write <= '0';
		address_in <= (others => '0');
		data_in <= (others => '0');
		input_port <= (others => '0');
		input_enable <= '0';
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Write 0x0A0A0A0A to byte address 0x00000000
		data_in <= x"0A0A0A0A";
		address_in <= x"00000000";
		mem_write <= '1';
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Write 0xF0F0F0F0 to byte address 0x00000004
		data_in <= x"F0F0F0F0";
		address_in <= x"00000004";
		mem_write <= '1';
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Read from byte address 0x00000000 (should show 0x0A0A0A0A on read data output)
		mem_write <= '0';
		mem_read <= '1';
		address_in <= x"00000000";
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Read from byte address 0x00000001 (should show 0x0A0A0A0A on read data output)
		mem_read <= '1';
		address_in <= x"00000001";
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Read from byte address 0x00000004 (should show 0xF0F0F0F0 on read data output)
		mem_read <= '1';
		address_in <= x"00000004";
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Read from byte address 0x00000005 (should show 0xF0F0F0F0 on read data output)
		mem_read <= '1';
		address_in <= x"00000005";
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Write 0x00001111 to the outport (should see value appear on outport)
		mem_read <= '0';
		mem_write <= '1';
		data_in <= x"00001111";
		address_in <= x"0000FFFC";
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Load 0x00010000 into inport 0
		mem_write <= '0';
		mem_read <= '1';
		input_port <= x"00010000";
		address_in <= x"0000FFF8";
		input_select <= '0';
		input_enable <= '1';
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Load 0x00000001 into inport 1
		mem_write <= '0';
		mem_read <= '1';
		input_port <= x"00000001";
		address_in <= x"0000FFFC";
		input_select <= '1';
		input_enable <= '1';
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Read from inport 0 (should show 0x00010000 on read data output)
		mem_read <= '1';
		address_in <= x"0000FFF8";
		input_enable <= '0';
		
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		--Read from inport 1 (should show 0x00000001 on read data output)
		mem_read <= '1';
		address_in <= x"0000FFFC";
		
		clk_en <= '0';
		report "Tests completed.";
		wait;
	end process;
end default_tb;