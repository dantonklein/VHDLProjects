----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2023 04:35:29 PM
-- Design Name: 
-- Module Name: size_conversion - arc
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity size_conversion is
    generic (WIDTH : positive);
    port (
        input : in std_logic_vector(width-1 downto 0);
        output : out std_logic_vector(width-1 downto 0)
     );
end size_conversion;

architecture arc of size_conversion is
    
begin
    
    process(input)
    begin
    if(input(0) = '1') then
        output <= std_logic_vector(unsigned(input) / 2 + 1);
    else
        output <= std_logic_vector(unsigned(input) / 2);
    end if;
    end process;

end arc;
