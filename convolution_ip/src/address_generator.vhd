----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/03/2023 11:07:24 AM
-- Design Name: 
-- Module Name: address_generator - arc
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

entity address_generator is
    port (
        clk, rst, go, en : in std_logic;
        size : in std_logic_vector(16 downto 0);
        start_address: in std_logic_vector(14 downto 0);
        
        dram_rd_addr : out std_logic_vector(14 downto 0);
        done, dram_rd_en : out std_logic
     );
end address_generator;

architecture arc of address_generator is
    type state_t is (init, count, done_state);
	
	
	signal state_r : state_t;
	signal done_r : std_logic;
	--signal address_enable_r : std_logic;
	--signal size_r : std_logic_vector(16 downto 0);
	signal count_r : unsigned(16 downto 0);
	signal last_address_r : unsigned(16 downto 0);
begin
    
    dram_rd_addr <= std_logic_vector(count_r(14 downto 0));
    done <= done_r;
    
    process(clk, rst)
	begin
		if(rst = '1') then
			state_r <= init;
			done_r <= '0';
			--size_r <= (others => '0');
			count_r <= (others => '0');
			last_address_r <= (others => '0');
			dram_rd_en <= '0';
		elsif(rising_edge(clk)) then
			dram_rd_en <= '0';
			
			case(state_r) is
				when init =>
					dram_rd_en <= '0';
					if(go = '1') then
					    --size_r <= size;
						done_r <= '0';
						state_r <= count;
						count_r <= "00" & unsigned(start_address);
						dram_rd_en <= '1';
						last_address_r <= ("00" & unsigned(start_address)) + unsigned(size);
					end if;
				
				when count =>
					dram_rd_en <= '0';
					done_r <= '0';
					if (en = '1' ) then
						if (count_r = last_address_r - 1) then
							state_r <= done_state;
							dram_rd_en <= '0';
							done_r <= '1';
						else 
							count_r <= count_r + 1;
							dram_rd_en <= '1';
						end if;
					end if;
					
				when done_state =>
				
					done_r <= '1';
					dram_rd_en <= '0';
					if(go = '0') then
						state_r <= init;
					end if;
				
				when others => null;
			end case;
		end if;
	end process;

end arc;
