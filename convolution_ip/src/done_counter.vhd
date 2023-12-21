----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2023 09:22:02 PM
-- Design Name: 
-- Module Name: done_counter - 
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

entity done_counter is
    Port ( 
    clk, rst, enable, go : in std_logic; 
    done : out std_logic;
    reset_fifo : out std_logic;
    size: in std_logic_vector(16 downto 0)
    );
end done_counter;

architecture arc of done_counter is
    type state_t is (init, count, done_state);
    signal count_r : unsigned(16 downto 0);
    signal state_r : state_t;
    signal reset_fifo_r : std_logic;
    --signal size_r : unsigned(16 downto 0);
    signal done_r : std_logic;
    signal done_counter : unsigned(1 downto 0);
begin
    
    done <= done_r;
    reset_fifo <= reset_fifo_r;
    process(clk, rst)
    begin
        if(rst = '1') then
            done_r <= '0';
            state_r <= init;
            --size_r <= (others => '0');
            count_r <= (others => '0');
            done_counter <= (others => '0');
            reset_fifo_r <= '0';
        elsif(rising_edge(clk)) then
            reset_fifo_r <= '0';
            case(state_r) is
                when init =>
                    state_r <= count;
                    count_r <= (others => '0');
                    done_r <= '0';
                when count =>
                    done_r <= '0';
                    if(count_r = unsigned(size)) then
                        state_r <= done_state;
                            done_r <= '1';
                        done_counter <= (others => '0');
                    elsif (enable = '1') then
                        count_r <= count_r + 1;            
                    end if;
                    
                when done_state =>
                    if(go = '0') then
                        done_r <= '1';
                        if(done_counter = 2) then
                            reset_fifo_r <= '0';
                        else
                            done_counter <= done_counter + 1;
                            reset_fifo_r <= '1';
                        end if;
                        --done_r <= '1';
                        --count_r <= (others => '0');
                        --state_r <= init;
                    else
                        state_r <= init;
                        done_r <= '0';
                        reset_fifo_r <= '0';
                    end if;
                when others => null;
            end case;
        end if;
    end process;
end arc;
