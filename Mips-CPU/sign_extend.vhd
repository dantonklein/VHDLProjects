library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity sign_extend is
	port (
		IsSigned : in std_logic;
		input : in std_logic_vector(15 downto 0);
		output : out std_logic_vector(31 downto 0)
	);
end sign_extend;

architecture bhv of sign_extend is
begin

process(IsSigned, input)

	variable temp :std_logic_vector(15 downto 0);
	
	begin
	if(IsSigned = '1') then
		if(input(15) = '1') then
			temp := (others => '1');
		else
			temp := (others => '0');
		end if;
	else
		temp := (others => '0');
	end if;
	
	output <= temp & input;
end process;

end bhv;
