library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity shiftleft2 is
	generic ( 
		WIDTH : positive := 32 
	);
	port (
		input : in std_logic_vector(width-1 downto 0);
		output : out std_logic_vector(width-1 downto 0)
	);
end shiftleft2;

architecture bhv of shiftleft2 is
begin
	output <= std_logic_vector(shift_left(unsigned(input), 2));
end bhv;