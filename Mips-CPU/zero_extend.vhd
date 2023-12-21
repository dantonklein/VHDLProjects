library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity zero_extend is
	port (
		input : in std_logic_vector (8 downto 0);
		output : out std_logic_vector (31 downto 0)
	);
end zero_extend;

architecture bhv of zero_extend is
begin
	output <= "00000000000000000000000" & input;
end bhv;