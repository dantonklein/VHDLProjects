library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller_and_datapath is
	port (
		clk : in std_logic;
		rst : in std_logic;
		button : in std_logic;
		switches : in std_logic_vector(9 downto 0);
		LEDS : out std_logic_vector(31 downto 0)
	);
end controller_and_datapath;

architecture bhv of controller_and_datapath is 
	signal instruction_register31_26 : std_logic_vector(5 downto 0);
	signal instruction_register20_16 : std_logic_vector(4 downto 0);
	signal instruction_register5_0 : std_logic_vector(5 downto 0);
	signal JumpAndLink : std_logic; 
	signal IsSigned : std_logic;
	signal PCSource : std_logic_vector(1 downto 0);
	signal ALUOp : std_logic_vector(3 downto 0);
	signal ALUSrcB : std_logic_vector(1 downto 0);
	signal ALUSrcA : std_logic;
	signal RegWrite : std_logic;
	signal RegDst : std_logic;
	signal PCWrite : std_logic;
	signal PcWriteCond : std_logic;
	signal IorD : std_logic;
	signal MemRead : std_logic;
	signal MemWrite : std_logic;
	signal MemToReg : std_logic;
	signal IRWrite : std_logic;
	signal Branch_taken : std_logic;
	signal PCWriteOrPcWriteCond : std_logic;
begin
	U_CONTROLLER : entity work.controller
		port map(
		clk => clk,
		rst => rst,
		instruction_register31_26 => instruction_register31_26,
		instruction_register20_16 => instruction_register20_16,
		instruction_register5_0 => instruction_register5_0,
		JumpAndLink => JumpAndLink,
		IsSigned => IsSigned, 
		PCSource => PCSource,
		ALUOp => ALUOp,
		ALUSrcB => ALUSrcB,
		ALUSrcA => ALUSrcA,
		RegWrite => RegWrite,
		RegDst => RegDst,
		PCWrite => PCWrite,
		PcWriteCond => PcWriteCond,
		IorD => IorD,
		MemRead => MemRead,
		MemWrite => MemWrite,
		MemToReg => MemToReg,
		IRWrite => IRWrite
		);
		
	PCWriteOrPcWriteCond <= PCWrite or (PcWriteCond and Branch_taken);
	
	U_DATAPATH : entity work.datapath
		generic map(width => 32)
		port map(
		clk => clk,
		rst => rst,
		instruction_register31_26 => instruction_register31_26,
		instruction_register20_16 => instruction_register20_16,
		instruction_register5_0 => instruction_register5_0,
		JumpAndLink => JumpAndLink,
		IsSigned => IsSigned, 
		PCSource => PCSource,
		ALUOp => ALUOp,
		ALUSrcB => ALUSrcB,
		ALUSrcA => ALUSrcA,
		RegWrite => RegWrite,
		RegDst => RegDst,
		PCWriteOrPcWriteCond => PCWriteOrPcWriteCond,
		IorD => IorD,
		MemRead => MemRead,
		MemWrite => MemWrite,
		MemToReg => MemToReg,
		IRWrite => IRWrite,
		switches => switches,
		button => button,
		LEDS => LEDS,
		branch_taken => branch_taken
		);

end;
