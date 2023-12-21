library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is
	generic (
		WIDTH : positive := 32
	);
	port (
		input0 : in std_logic_vector(WIDTH-1 downto 0);
		input1 : in std_logic_vector(WIDTH-1 downto 0);
		sel : in std_logic;
		output : out std_logic_vector(WIDTH-1 downto 0)
		);
end mux2_1;

architecture bhv of mux2_1 is

begin

	process(input0, input1, sel)
	begin
		if (sel = '0') then
			output <= input0;
		else
			output <= input1;
		end if;
	end process;
end bhv;
	
	