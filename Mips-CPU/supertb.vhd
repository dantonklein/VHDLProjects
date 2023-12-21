library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity supertb is
end supertb;

architecture default_tb of supertb is
	signal clk : std_logic := '0';
	signal rst : std_logic;
	signal button : std_logic;
	signal switches : std_logic_vector(9 downto 0);
	signal LEDS : std_logic_vector(31 downto 0);
	signal clk_en : std_logic := '1';

begin

	UUT : entity work.controller_and_datapath(bhv)
		port map(
			clk => clk,
			rst => rst,
			button => button,
			switches => switches,
			LEDS => LEDS
		);
	
	clk <= not clk and clk_en after 5 ns;
	
	process
	begin
		clk_en <= '1';
		rst <= '1';
		button <= '1';
		switches <= "0000000100";
		
		wait until rising_edge(clk);
		button <= '0';
		wait until rising_edge(clk);
		switches <= "1000001000";
		button <= '1';
		wait until rising_edge(clk);
		rst <= '0';
		for i in 1 to 2000 loop
			wait until rising_edge(clk);
		end loop;
		clk_en <= '0';
		report "Tests completed.";
		wait;
	end process;
end default_tb;