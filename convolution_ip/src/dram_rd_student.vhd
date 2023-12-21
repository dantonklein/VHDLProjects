----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2023 03:50:12 PM
-- Design Name: 
-- Module Name: dram_rd_student - dram_rd
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

entity dram_rd_student is
port (
    dram_clk             : in  std_logic;
    user_clk             : in  std_logic;
    dram_rst             : in  std_logic;
    user_rst             : in  std_logic;
    go                   : in  std_logic;
    rd_en                : in  std_logic;
    stall                : in  std_logic;
    start_addr           : in  std_logic_vector (14 downto 0);
    size                 : in  std_logic_vector (16 downto 0);
    valid                : out std_logic;
    data                 : out std_logic_vector (15 downto 0);
    done                 : out std_logic;
    debug_count          : out std_logic_vector (16 downto 0);
    debug_dma_size       : out std_logic_vector (15 downto 0);
    debug_dma_start_addr : out std_logic_vector (14 downto 0);
    debug_dma_addr       : out std_logic_vector (14 downto 0);
    debug_dma_prog_full  : out std_logic;
    debug_dma_empty      : out std_logic;
    dram_ready           : in  std_logic;
    dram_rd_en           : out std_logic;
    dram_rd_addr         : out std_logic_vector (14 downto 0);
    dram_rd_data         : in  std_logic_vector (31 downto 0);
    dram_rd_valid        : in  std_logic );
end dram_rd_student;

architecture dram_rd of dram_rd_student is

component dma_fifo_student
    port (
        rst : IN STD_LOGIC;
        wr_clk : IN STD_LOGIC;
        rd_clk : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC;
        wr_rst_busy : OUT STD_LOGIC;
        rd_rst_busy : OUT STD_LOGIC;
        prog_full : out std_logic);
    end component;
    

signal always_on : std_logic;
signal always_off : std_logic;
signal size_converted_size : std_logic_vector(16 downto 0);
signal address_generator_go : std_logic;
signal program_full_from_fifo : std_logic;
signal address_generator_en : std_logic;
signal address_generator_done : std_logic;
signal counter_done : std_logic;
--signal counter_done_r : std_logic;
signal counter_done_dram : std_logic;
signal fifo_reset : std_logic;
signal dram_rd_data_swapped : std_logic_vector(31 downto 0);
signal fifo_empty : std_logic;
signal fifo_rd_en : std_logic;
signal addr_dram_rd_en : std_logic;
signal fifo_reset_out : std_logic;

begin
always_on <= '1';
always_off <= '0';
--Converts size from 16bit word addressing to 32bit word addressing
U_SIZE_CONVERSION : entity work.size_conversion
    generic map (WIDTH => 17)
    port map (
    input => size,
    output => size_converted_size
    );
    
U_HANDSHAKE : entity work.handshake1
    port map (
        clk_src => user_clk,
        clk_dest => dram_clk,
        rst_src => user_rst,
        rst_dest => dram_rst,
        go_0 => go,
        delay_ack => always_off,
        rcv => address_generator_go
        );

address_generator_en <= not program_full_from_fifo and dram_ready;
U_ADRESS_GENERATOR : entity work.address_generator
    port map (
        clk => dram_clk,
        rst => dram_rst,
        go => address_generator_go,
        en => address_generator_en,
        size => size_converted_size,
        start_address => start_addr,
        dram_rd_addr => dram_rd_addr,
        dram_rd_en => dram_rd_en,
        done => address_generator_done
        );
--dram_rd_en <= addr_dram_rd_en and not program_full_from_fifo;
U_DONE_DUAL_FLOP: entity work.delay
    generic map (
            cycles => 2,
            width  => 1,
            init   => "0")
        port map (
            clk       => dram_clk,
            rst       => dram_rst,
            en        => always_on,
            input(0)  => fifo_reset_out,
            output(0) => counter_done_dram);
        
--U_DONE_REGISTER: entity work.delay   
--    generic map (
--            cycles => 1,
--            width  => 1,
--            init   => "0")
--        port map (
--            clk       => user_clk,
--            rst       => user_rst,
--            en        => always_on,
--            input(0)  => counter_done,
--            output(0) => counter_done_r);
            
fifo_reset <= counter_done_dram or dram_rst;
dram_rd_data_swapped <= dram_rd_data(15 downto 0) & dram_rd_data(31 downto 16);      
U_FIFO : dma_fifo_student
    port map(
        rst => fifo_reset,
        wr_clk => dram_clk,
        rd_clk => user_clk,
        din => dram_rd_data_swapped,
        wr_en => dram_rd_valid,
        rd_en => fifo_rd_en,
        dout => data,
        empty => fifo_empty,
        prog_full => program_full_from_fifo
    );
    
fifo_rd_en <= not fifo_empty and rd_en;
valid <= not fifo_empty;
U_DONE_COUNTER : entity work.done_counter
    port map(
        go => go,
        reset_fifo => fifo_reset_out,
        rst => user_rst,
        done => counter_done,
        clk => user_clk,
        enable => fifo_rd_en,
        size => size);
        
 done <= counter_done;   
--What to do next: done counter logic, counter for resetting fifo for 3-4 cycles

end dram_rd;
