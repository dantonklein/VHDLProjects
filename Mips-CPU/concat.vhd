library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity concat is
	port (
		PC31_28 : in std_logic_vector(3 downto 0);
		input : in std_logic_vector (27 downto 0);
		output : out std_logic_vector (31 downto 0)
	);
end concat;

architecture bhv of concat is
begin
	output <= PC31_28 & input;
end bhv;