library ieee;
use ieee.std_logic_1164.all;

entity mux3_1 is
	generic (
		WIDTH : positive := 32
	);
	port (
		input0 : in std_logic_vector(WIDTH-1 downto 0);
		input1 : in std_logic_vector(WIDTH-1 downto 0);
		input2 : in std_logic_vector(WIDTH-1 downto 0);
		sel : in std_logic_vector(1 downto 0);
		output : out std_logic_vector(WIDTH-1 downto 0)
		);
end mux3_1;

architecture bhv1 of mux3_1 is

begin

	process(input0, input1, input2, sel)
	begin
		case sel is
			when "00" =>
				output <= input0;
			when "01" =>
				output <= input1;
			when "10" =>
				output <= input2;
			when others =>
				output <= input0;
		end case;
	end process;
end bhv1;
	
	