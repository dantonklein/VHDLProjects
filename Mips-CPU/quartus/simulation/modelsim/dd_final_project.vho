-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/12/2023 20:34:30"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	controller IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	instruction_register31_26 : IN std_logic_vector(5 DOWNTO 0);
	instruction_register20_16 : IN std_logic_vector(4 DOWNTO 0);
	instruction_register5_0 : IN std_logic_vector(5 DOWNTO 0);
	JumpAndLink : OUT std_logic;
	IsSigned : OUT std_logic;
	PCSource : OUT std_logic_vector(1 DOWNTO 0);
	ALUOp : OUT std_logic_vector(3 DOWNTO 0);
	ALUSrcB : OUT std_logic_vector(1 DOWNTO 0);
	ALUSrcA : OUT std_logic;
	RegWrite : OUT std_logic;
	RegDst : OUT std_logic;
	PCWrite : OUT std_logic;
	PcWriteCond : OUT std_logic;
	IorD : OUT std_logic;
	MemRead : OUT std_logic;
	MemWrite : OUT std_logic;
	MemToReg : OUT std_logic;
	IRWrite : OUT std_logic
	);
END controller;

-- Design Ports Information
-- JumpAndLink	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IsSigned	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSource[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCSource[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrcB[0]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrcB[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrcA	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegDst	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCWrite	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PcWriteCond	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IorD	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRead	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemToReg	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRWrite	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register31_26[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register31_26[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register31_26[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register31_26[4]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register31_26[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register31_26[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register20_16[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register20_16[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register20_16[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register20_16[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register20_16[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register5_0[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register5_0[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register5_0[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register5_0[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register5_0[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_register5_0[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_instruction_register31_26 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_instruction_register20_16 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_instruction_register5_0 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_JumpAndLink : std_logic;
SIGNAL ww_IsSigned : std_logic;
SIGNAL ww_PCSource : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALUOp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ALUSrcB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALUSrcA : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_PCWrite : std_logic;
SIGNAL ww_PcWriteCond : std_logic;
SIGNAL ww_IorD : std_logic;
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_MemToReg : std_logic;
SIGNAL ww_IRWrite : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \JumpAndLink~output_o\ : std_logic;
SIGNAL \IsSigned~output_o\ : std_logic;
SIGNAL \PCSource[0]~output_o\ : std_logic;
SIGNAL \PCSource[1]~output_o\ : std_logic;
SIGNAL \ALUOp[0]~output_o\ : std_logic;
SIGNAL \ALUOp[1]~output_o\ : std_logic;
SIGNAL \ALUOp[2]~output_o\ : std_logic;
SIGNAL \ALUOp[3]~output_o\ : std_logic;
SIGNAL \ALUSrcB[0]~output_o\ : std_logic;
SIGNAL \ALUSrcB[1]~output_o\ : std_logic;
SIGNAL \ALUSrcA~output_o\ : std_logic;
SIGNAL \RegWrite~output_o\ : std_logic;
SIGNAL \RegDst~output_o\ : std_logic;
SIGNAL \PCWrite~output_o\ : std_logic;
SIGNAL \PcWriteCond~output_o\ : std_logic;
SIGNAL \IorD~output_o\ : std_logic;
SIGNAL \MemRead~output_o\ : std_logic;
SIGNAL \MemWrite~output_o\ : std_logic;
SIGNAL \MemToReg~output_o\ : std_logic;
SIGNAL \IRWrite~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \instruction_register31_26[1]~input_o\ : std_logic;
SIGNAL \instruction_register31_26[0]~input_o\ : std_logic;
SIGNAL \instruction_register31_26[3]~input_o\ : std_logic;
SIGNAL \instruction_register31_26[4]~input_o\ : std_logic;
SIGNAL \instruction_register31_26[5]~input_o\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \instruction_register31_26[2]~input_o\ : std_logic;
SIGNAL \state_r~53_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \state_r~54_combout\ : std_logic;
SIGNAL \state_r~55_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \instruction_register5_0[1]~input_o\ : std_logic;
SIGNAL \instruction_register5_0[0]~input_o\ : std_logic;
SIGNAL \instruction_register5_0[3]~input_o\ : std_logic;
SIGNAL \instruction_register5_0[2]~input_o\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \instruction_register5_0[5]~input_o\ : std_logic;
SIGNAL \instruction_register5_0[4]~input_o\ : std_logic;
SIGNAL \state_r~60_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \state_r.r_type1~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state_r.r_type2~q\ : std_logic;
SIGNAL \state_r~57_combout\ : std_logic;
SIGNAL \state_r.i_type1~q\ : std_logic;
SIGNAL \state_r.i_type2~feeder_combout\ : std_logic;
SIGNAL \state_r.i_type2~q\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \state_r~61_combout\ : std_logic;
SIGNAL \state_r.load_and_store_word1~q\ : std_logic;
SIGNAL \state_r.load_and_store_word2~feeder_combout\ : std_logic;
SIGNAL \state_r.load_and_store_word2~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state_r.load_word3~feeder_combout\ : std_logic;
SIGNAL \state_r.load_word3~q\ : std_logic;
SIGNAL \state_r.load_word4~feeder_combout\ : std_logic;
SIGNAL \state_r.load_word4~q\ : std_logic;
SIGNAL \state_r~59_combout\ : std_logic;
SIGNAL \state_r.jump~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state_r~41_combout\ : std_logic;
SIGNAL \state_r~63_combout\ : std_logic;
SIGNAL \state_r.Branch1~q\ : std_logic;
SIGNAL \state_r.Branch2~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \MemWrite~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \state_r.instruction_fetch1~q\ : std_logic;
SIGNAL \state_r.instruction_fetch2~0_combout\ : std_logic;
SIGNAL \state_r.instruction_fetch2~q\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \state_r.instruction_decode~q\ : std_logic;
SIGNAL \state_r~56_combout\ : std_logic;
SIGNAL \state_r~58_combout\ : std_logic;
SIGNAL \state_r~62_combout\ : std_logic;
SIGNAL \state_r.JumpAndLink1~q\ : std_logic;
SIGNAL \state_r.JumpAndLink2~feeder_combout\ : std_logic;
SIGNAL \state_r.JumpAndLink2~q\ : std_logic;
SIGNAL \JumpAndLink~reg0_q\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \IsSigned~reg0_q\ : std_logic;
SIGNAL \PCSource[0]~reg0_q\ : std_logic;
SIGNAL \PCSource~0_combout\ : std_logic;
SIGNAL \PCSource[1]~reg0_q\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \instruction_register20_16[4]~input_o\ : std_logic;
SIGNAL \instruction_register20_16[1]~input_o\ : std_logic;
SIGNAL \instruction_register20_16[2]~input_o\ : std_logic;
SIGNAL \Equal19~1_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \instruction_register20_16[3]~input_o\ : std_logic;
SIGNAL \Equal19~2_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \instruction_register20_16[0]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \ALUOp[0]~reg0_q\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \ALUOp~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \ALUOp[1]~reg0_q\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \Selector12~5_combout\ : std_logic;
SIGNAL \Selector12~6_combout\ : std_logic;
SIGNAL \ALUOp[2]~reg0_q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \ALUOp[3]~reg0_q\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \ALUSrcB[0]~reg0_q\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \ALUSrcB[1]~reg0_q\ : std_logic;
SIGNAL \WideOr12~combout\ : std_logic;
SIGNAL \ALUSrcA~reg0_q\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \RegWrite~reg0_q\ : std_logic;
SIGNAL \RegDst~reg0_q\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \PCWrite~reg0_q\ : std_logic;
SIGNAL \PcWriteCond~reg0feeder_combout\ : std_logic;
SIGNAL \PcWriteCond~reg0_q\ : std_logic;
SIGNAL \IorD~reg0feeder_combout\ : std_logic;
SIGNAL \IorD~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \MemRead~reg0_q\ : std_logic;
SIGNAL \MemWrite~reg0_q\ : std_logic;
SIGNAL \MemToReg~reg0_q\ : std_logic;
SIGNAL \IRWrite~reg0feeder_combout\ : std_logic;
SIGNAL \IRWrite~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_instruction_register31_26 <= instruction_register31_26;
ww_instruction_register20_16 <= instruction_register20_16;
ww_instruction_register5_0 <= instruction_register5_0;
JumpAndLink <= ww_JumpAndLink;
IsSigned <= ww_IsSigned;
PCSource <= ww_PCSource;
ALUOp <= ww_ALUOp;
ALUSrcB <= ww_ALUSrcB;
ALUSrcA <= ww_ALUSrcA;
RegWrite <= ww_RegWrite;
RegDst <= ww_RegDst;
PCWrite <= ww_PCWrite;
PcWriteCond <= ww_PcWriteCond;
IorD <= ww_IorD;
MemRead <= ww_MemRead;
MemWrite <= ww_MemWrite;
MemToReg <= ww_MemToReg;
IRWrite <= ww_IRWrite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X26_Y39_N23
\JumpAndLink~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JumpAndLink~reg0_q\,
	devoe => ww_devoe,
	o => \JumpAndLink~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\IsSigned~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IsSigned~reg0_q\,
	devoe => ww_devoe,
	o => \IsSigned~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\PCSource[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCSource[0]~reg0_q\,
	devoe => ww_devoe,
	o => \PCSource[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\PCSource[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCSource[1]~reg0_q\,
	devoe => ww_devoe,
	o => \PCSource[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\ALUOp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ALUOp[0]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\ALUOp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ALUOp[1]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\ALUOp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ALUOp[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\ALUOp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ALUOp[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\ALUSrcB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUSrcB[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ALUSrcB[0]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\ALUSrcB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUSrcB[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ALUSrcB[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\ALUSrcA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUSrcA~reg0_q\,
	devoe => ww_devoe,
	o => \ALUSrcA~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\RegWrite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegWrite~reg0_q\,
	devoe => ww_devoe,
	o => \RegWrite~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\RegDst~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDst~reg0_q\,
	devoe => ww_devoe,
	o => \RegDst~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\PCWrite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCWrite~reg0_q\,
	devoe => ww_devoe,
	o => \PCWrite~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\PcWriteCond~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PcWriteCond~reg0_q\,
	devoe => ww_devoe,
	o => \PcWriteCond~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\IorD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IorD~reg0_q\,
	devoe => ww_devoe,
	o => \IorD~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\MemRead~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemRead~reg0_q\,
	devoe => ww_devoe,
	o => \MemRead~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\MemWrite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemWrite~reg0_q\,
	devoe => ww_devoe,
	o => \MemWrite~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\MemToReg~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemToReg~reg0_q\,
	devoe => ww_devoe,
	o => \MemToReg~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\IRWrite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IRWrite~reg0_q\,
	devoe => ww_devoe,
	o => \IRWrite~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y39_N15
\instruction_register31_26[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register31_26(1),
	o => \instruction_register31_26[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\instruction_register31_26[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register31_26(0),
	o => \instruction_register31_26[0]~input_o\);

-- Location: IOIBUF_X22_Y39_N22
\instruction_register31_26[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register31_26(3),
	o => \instruction_register31_26[3]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\instruction_register31_26[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register31_26(4),
	o => \instruction_register31_26[4]~input_o\);

-- Location: IOIBUF_X20_Y39_N8
\instruction_register31_26[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register31_26(5),
	o => \instruction_register31_26[5]~input_o\);

-- Location: LCCOMB_X23_Y35_N16
\Equal16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (!\instruction_register31_26[4]~input_o\ & !\instruction_register31_26[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register31_26[4]~input_o\,
	datac => \instruction_register31_26[5]~input_o\,
	combout => \Equal16~1_combout\);

-- Location: IOIBUF_X22_Y39_N15
\instruction_register31_26[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register31_26(2),
	o => \instruction_register31_26[2]~input_o\);

-- Location: LCCOMB_X20_Y35_N28
\state_r~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~53_combout\ = (\instruction_register31_26[0]~input_o\ & (\instruction_register31_26[1]~input_o\ & ((\instruction_register31_26[3]~input_o\) # (!\instruction_register31_26[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[0]~input_o\,
	datab => \instruction_register31_26[2]~input_o\,
	datac => \instruction_register31_26[1]~input_o\,
	datad => \instruction_register31_26[3]~input_o\,
	combout => \state_r~53_combout\);

-- Location: LCCOMB_X21_Y35_N0
\Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!\instruction_register31_26[2]~input_o\ & (!\instruction_register31_26[1]~input_o\ & (!\instruction_register31_26[0]~input_o\ & !\instruction_register31_26[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[2]~input_o\,
	datab => \instruction_register31_26[1]~input_o\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \instruction_register31_26[3]~input_o\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X21_Y35_N12
\state_r~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~54_combout\ = (\instruction_register31_26[3]~input_o\ & ((\instruction_register31_26[2]~input_o\ & (\instruction_register31_26[1]~input_o\ & \instruction_register31_26[0]~input_o\)) # (!\instruction_register31_26[2]~input_o\ & 
-- (!\instruction_register31_26[1]~input_o\ & !\instruction_register31_26[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[2]~input_o\,
	datab => \instruction_register31_26[1]~input_o\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \instruction_register31_26[3]~input_o\,
	combout => \state_r~54_combout\);

-- Location: LCCOMB_X21_Y35_N30
\state_r~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~55_combout\ = (\instruction_register31_26[5]~input_o\ & ((\instruction_register31_26[4]~input_o\ $ (\state_r~54_combout\)))) # (!\instruction_register31_26[5]~input_o\ & (!\Equal9~0_combout\ & ((\instruction_register31_26[4]~input_o\) # 
-- (\state_r~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[5]~input_o\,
	datab => \Equal9~0_combout\,
	datac => \instruction_register31_26[4]~input_o\,
	datad => \state_r~54_combout\,
	combout => \state_r~55_combout\);

-- Location: LCCOMB_X22_Y35_N10
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\instruction_register31_26[0]~input_o\ & ((\instruction_register31_26[1]~input_o\ & ((!\instruction_register31_26[2]~input_o\))) # (!\instruction_register31_26[1]~input_o\ & (!\instruction_register31_26[5]~input_o\)))) # 
-- (!\instruction_register31_26[0]~input_o\ & (!\instruction_register31_26[5]~input_o\ & ((\instruction_register31_26[2]~input_o\) # (\instruction_register31_26[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[0]~input_o\,
	datab => \instruction_register31_26[5]~input_o\,
	datac => \instruction_register31_26[2]~input_o\,
	datad => \instruction_register31_26[1]~input_o\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X21_Y35_N6
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\instruction_register31_26[4]~input_o\ & (\Equal9~0_combout\)) # (!\instruction_register31_26[4]~input_o\ & ((\instruction_register31_26[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal9~0_combout\,
	datac => \instruction_register31_26[4]~input_o\,
	datad => \instruction_register31_26[3]~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X21_Y35_N20
\Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~1_combout\ & (((\instruction_register31_26[4]~input_o\ & !\Selector3~0_combout\)))) # (!\Selector3~1_combout\ & ((\instruction_register31_26[5]~input_o\) # (\instruction_register31_26[4]~input_o\ $ 
-- (\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[5]~input_o\,
	datab => \Selector3~1_combout\,
	datac => \instruction_register31_26[4]~input_o\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: IOIBUF_X29_Y39_N15
\instruction_register5_0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register5_0(1),
	o => \instruction_register5_0[1]~input_o\);

-- Location: IOIBUF_X24_Y39_N29
\instruction_register5_0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register5_0(0),
	o => \instruction_register5_0[0]~input_o\);

-- Location: IOIBUF_X24_Y39_N15
\instruction_register5_0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register5_0(3),
	o => \instruction_register5_0[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\instruction_register5_0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register5_0(2),
	o => \instruction_register5_0[2]~input_o\);

-- Location: LCCOMB_X24_Y35_N24
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\instruction_register5_0[1]~input_o\ & (!\instruction_register5_0[0]~input_o\ & (\instruction_register5_0[3]~input_o\ & !\instruction_register5_0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register5_0[1]~input_o\,
	datab => \instruction_register5_0[0]~input_o\,
	datac => \instruction_register5_0[3]~input_o\,
	datad => \instruction_register5_0[2]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: IOIBUF_X29_Y39_N8
\instruction_register5_0[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register5_0(5),
	o => \instruction_register5_0[5]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\instruction_register5_0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register5_0(4),
	o => \instruction_register5_0[4]~input_o\);

-- Location: LCCOMB_X22_Y35_N6
\state_r~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~60_combout\ = (!\instruction_register31_26[1]~input_o\ & (!\instruction_register31_26[0]~input_o\ & \state_r~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[1]~input_o\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \state_r~58_combout\,
	combout => \state_r~60_combout\);

-- Location: IOIBUF_X0_Y18_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X22_Y35_N7
\state_r.r_type1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r~60_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.r_type1~q\);

-- Location: LCCOMB_X24_Y35_N10
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state_r.r_type1~q\ & (((\instruction_register5_0[5]~input_o\) # (\instruction_register5_0[4]~input_o\)) # (!\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \instruction_register5_0[5]~input_o\,
	datac => \instruction_register5_0[4]~input_o\,
	datad => \state_r.r_type1~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X24_Y35_N11
\state_r.r_type2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.r_type2~q\);

-- Location: LCCOMB_X21_Y35_N24
\state_r~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~57_combout\ = (!\instruction_register31_26[5]~input_o\ & (\state_r~56_combout\ & ((\instruction_register31_26[3]~input_o\) # (\instruction_register31_26[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[5]~input_o\,
	datab => \instruction_register31_26[3]~input_o\,
	datac => \instruction_register31_26[4]~input_o\,
	datad => \state_r~56_combout\,
	combout => \state_r~57_combout\);

-- Location: FF_X21_Y35_N25
\state_r.i_type1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r~57_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.i_type1~q\);

-- Location: LCCOMB_X24_Y35_N2
\state_r.i_type2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r.i_type2~feeder_combout\ = \state_r.i_type1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_r.i_type1~q\,
	combout => \state_r.i_type2~feeder_combout\);

-- Location: FF_X24_Y35_N3
\state_r.i_type2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r.i_type2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.i_type2~q\);

-- Location: LCCOMB_X20_Y35_N20
\Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = ((\instruction_register31_26[4]~input_o\) # ((\instruction_register31_26[2]~input_o\) # (!\instruction_register31_26[1]~input_o\))) # (!\instruction_register31_26[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[0]~input_o\,
	datab => \instruction_register31_26[4]~input_o\,
	datac => \instruction_register31_26[1]~input_o\,
	datad => \instruction_register31_26[2]~input_o\,
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X21_Y35_N4
\state_r~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~61_combout\ = (\instruction_register31_26[5]~input_o\ & (!\instruction_register31_26[4]~input_o\ & \state_r~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[5]~input_o\,
	datac => \instruction_register31_26[4]~input_o\,
	datad => \state_r~56_combout\,
	combout => \state_r~61_combout\);

-- Location: FF_X21_Y35_N5
\state_r.load_and_store_word1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r~61_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.load_and_store_word1~q\);

-- Location: LCCOMB_X20_Y35_N22
\state_r.load_and_store_word2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r.load_and_store_word2~feeder_combout\ = \state_r.load_and_store_word1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_r.load_and_store_word1~q\,
	combout => \state_r.load_and_store_word2~feeder_combout\);

-- Location: FF_X20_Y35_N23
\state_r.load_and_store_word2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r.load_and_store_word2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.load_and_store_word2~q\);

-- Location: LCCOMB_X20_Y35_N6
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\instruction_register31_26[5]~input_o\ & (!\Equal15~0_combout\ & (\state_r.load_and_store_word2~q\ & !\instruction_register31_26[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[5]~input_o\,
	datab => \Equal15~0_combout\,
	datac => \state_r.load_and_store_word2~q\,
	datad => \instruction_register31_26[3]~input_o\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X20_Y35_N18
\state_r.load_word3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r.load_word3~feeder_combout\ = \Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector7~0_combout\,
	combout => \state_r.load_word3~feeder_combout\);

-- Location: FF_X20_Y35_N19
\state_r.load_word3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r.load_word3~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.load_word3~q\);

-- Location: LCCOMB_X24_Y35_N14
\state_r.load_word4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r.load_word4~feeder_combout\ = \state_r.load_word3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_r.load_word3~q\,
	combout => \state_r.load_word4~feeder_combout\);

-- Location: FF_X24_Y35_N15
\state_r.load_word4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r.load_word4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.load_word4~q\);

-- Location: LCCOMB_X22_Y35_N30
\state_r~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~59_combout\ = (\instruction_register31_26[1]~input_o\ & (!\instruction_register31_26[0]~input_o\ & \state_r~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[1]~input_o\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \state_r~58_combout\,
	combout => \state_r~59_combout\);

-- Location: FF_X22_Y35_N31
\state_r.jump\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r~59_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.jump~q\);

-- Location: LCCOMB_X24_Y35_N6
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state_r.r_type2~q\) # ((\state_r.i_type2~q\) # ((\state_r.load_word4~q\) # (\state_r.jump~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_r.r_type2~q\,
	datab => \state_r.i_type2~q\,
	datac => \state_r.load_word4~q\,
	datad => \state_r.jump~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X20_Y35_N24
\state_r~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~41_combout\ = (!\instruction_register31_26[3]~input_o\ & ((\instruction_register31_26[2]~input_o\) # ((\instruction_register31_26[0]~input_o\ & !\instruction_register31_26[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[0]~input_o\,
	datab => \instruction_register31_26[2]~input_o\,
	datac => \instruction_register31_26[1]~input_o\,
	datad => \instruction_register31_26[3]~input_o\,
	combout => \state_r~41_combout\);

-- Location: LCCOMB_X20_Y35_N8
\state_r~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~63_combout\ = (!\instruction_register31_26[5]~input_o\ & (!\instruction_register31_26[4]~input_o\ & (\state_r.instruction_decode~q\ & \state_r~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[5]~input_o\,
	datab => \instruction_register31_26[4]~input_o\,
	datac => \state_r.instruction_decode~q\,
	datad => \state_r~41_combout\,
	combout => \state_r~63_combout\);

-- Location: FF_X20_Y35_N9
\state_r.Branch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r~63_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.Branch1~q\);

-- Location: FF_X23_Y35_N5
\state_r.Branch2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_r.Branch1~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.Branch2~q\);

-- Location: LCCOMB_X24_Y35_N4
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\state_r.Branch2~q\) # (\state_r.JumpAndLink2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_r.Branch2~q\,
	datad => \state_r.JumpAndLink2~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X24_Y35_N8
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Equal5~0_combout\ & (!\instruction_register5_0[5]~input_o\ & (!\instruction_register5_0[4]~input_o\ & \state_r.r_type1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \instruction_register5_0[5]~input_o\,
	datac => \instruction_register5_0[4]~input_o\,
	datad => \state_r.r_type1~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X20_Y35_N16
\MemWrite~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemWrite~0_combout\ = (\state_r.load_and_store_word2~q\ & (((\Equal15~0_combout\) # (\instruction_register31_26[3]~input_o\)) # (!\instruction_register31_26[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[5]~input_o\,
	datab => \Equal15~0_combout\,
	datac => \state_r.load_and_store_word2~q\,
	datad => \instruction_register31_26[3]~input_o\,
	combout => \MemWrite~0_combout\);

-- Location: LCCOMB_X24_Y35_N16
\Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\Selector1~0_combout\ & (!\Selector1~1_combout\ & (!\Selector15~0_combout\ & !\MemWrite~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector15~0_combout\,
	datad => \MemWrite~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X24_Y35_N17
\state_r.instruction_fetch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.instruction_fetch1~q\);

-- Location: LCCOMB_X24_Y35_N22
\state_r.instruction_fetch2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r.instruction_fetch2~0_combout\ = !\state_r.instruction_fetch1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_r.instruction_fetch1~q\,
	combout => \state_r.instruction_fetch2~0_combout\);

-- Location: FF_X24_Y35_N23
\state_r.instruction_fetch2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r.instruction_fetch2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.instruction_fetch2~q\);

-- Location: LCCOMB_X21_Y35_N10
\Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\state_r.instruction_fetch2~q\) # ((\Selector3~2_combout\ & \state_r.instruction_decode~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~2_combout\,
	datac => \state_r.instruction_decode~q\,
	datad => \state_r.instruction_fetch2~q\,
	combout => \Selector3~3_combout\);

-- Location: FF_X21_Y35_N11
\state_r.instruction_decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.instruction_decode~q\);

-- Location: LCCOMB_X21_Y35_N28
\state_r~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~56_combout\ = (!\state_r~55_combout\ & (\state_r.instruction_decode~q\ & ((\state_r~53_combout\) # (!\instruction_register31_26[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[5]~input_o\,
	datab => \state_r~53_combout\,
	datac => \state_r~55_combout\,
	datad => \state_r.instruction_decode~q\,
	combout => \state_r~56_combout\);

-- Location: LCCOMB_X22_Y35_N24
\state_r~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~58_combout\ = (!\instruction_register31_26[3]~input_o\ & (\Equal16~1_combout\ & (!\instruction_register31_26[2]~input_o\ & \state_r~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[3]~input_o\,
	datab => \Equal16~1_combout\,
	datac => \instruction_register31_26[2]~input_o\,
	datad => \state_r~56_combout\,
	combout => \state_r~58_combout\);

-- Location: LCCOMB_X22_Y35_N16
\state_r~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r~62_combout\ = (\instruction_register31_26[1]~input_o\ & (\instruction_register31_26[0]~input_o\ & \state_r~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[1]~input_o\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \state_r~58_combout\,
	combout => \state_r~62_combout\);

-- Location: FF_X22_Y35_N17
\state_r.JumpAndLink1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r~62_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.JumpAndLink1~q\);

-- Location: LCCOMB_X24_Y35_N12
\state_r.JumpAndLink2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_r.JumpAndLink2~feeder_combout\ = \state_r.JumpAndLink1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_r.JumpAndLink1~q\,
	combout => \state_r.JumpAndLink2~feeder_combout\);

-- Location: FF_X24_Y35_N13
\state_r.JumpAndLink2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_r.JumpAndLink2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_r.JumpAndLink2~q\);

-- Location: FF_X23_Y35_N19
\JumpAndLink~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_r.JumpAndLink2~q\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JumpAndLink~reg0_q\);

-- Location: LCCOMB_X21_Y35_N8
\Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\state_r.i_type1~q\ & ((\instruction_register31_26[4]~input_o\) # ((\instruction_register31_26[5]~input_o\) # (!\instruction_register31_26[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[4]~input_o\,
	datab => \state_r.i_type1~q\,
	datac => \instruction_register31_26[2]~input_o\,
	datad => \instruction_register31_26[5]~input_o\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X21_Y35_N2
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state_r.i_type1~q\ & (((\instruction_register31_26[1]~input_o\ & \instruction_register31_26[0]~input_o\)) # (!\instruction_register31_26[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[1]~input_o\,
	datab => \instruction_register31_26[3]~input_o\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \state_r.i_type1~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X21_Y35_N16
\Selector17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\state_r.Branch1~q\) # ((\Selector17~1_combout\) # (\Selector17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_r.Branch1~q\,
	datac => \Selector17~1_combout\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X21_Y35_N17
\IsSigned~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IsSigned~reg0_q\);

-- Location: FF_X23_Y35_N29
\PCSource[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_r.Branch2~q\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCSource[0]~reg0_q\);

-- Location: LCCOMB_X23_Y35_N20
\PCSource~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PCSource~0_combout\ = (\state_r.JumpAndLink1~q\) # (\state_r.jump~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_r.JumpAndLink1~q\,
	datad => \state_r.jump~q\,
	combout => \PCSource~0_combout\);

-- Location: FF_X23_Y35_N21
\PCSource[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PCSource~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCSource[1]~reg0_q\);

-- Location: LCCOMB_X23_Y35_N18
\Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (\instruction_register31_26[1]~input_o\ & (!\instruction_register31_26[4]~input_o\ & !\instruction_register31_26[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[1]~input_o\,
	datab => \instruction_register31_26[4]~input_o\,
	datad => \instruction_register31_26[5]~input_o\,
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X22_Y35_N4
\Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (!\instruction_register31_26[2]~input_o\ & (\Equal12~2_combout\ & (\instruction_register31_26[3]~input_o\ & \state_r.i_type1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[2]~input_o\,
	datab => \Equal12~2_combout\,
	datac => \instruction_register31_26[3]~input_o\,
	datad => \state_r.i_type1~q\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X22_Y35_N28
\Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (\instruction_register31_26[2]~input_o\ & \instruction_register31_26[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction_register31_26[2]~input_o\,
	datad => \instruction_register31_26[3]~input_o\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X22_Y35_N8
\Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (\instruction_register31_26[1]~input_o\ & (\Equal12~0_combout\ & (!\instruction_register31_26[0]~input_o\ & \Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[1]~input_o\,
	datab => \Equal12~0_combout\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \Equal16~1_combout\,
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X22_Y35_N14
\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!\instruction_register31_26[1]~input_o\ & (\Equal12~0_combout\ & (!\instruction_register31_26[0]~input_o\ & \Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[1]~input_o\,
	datab => \Equal12~0_combout\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \Equal16~1_combout\,
	combout => \Equal10~0_combout\);

-- Location: IOIBUF_X24_Y39_N8
\instruction_register20_16[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register20_16(4),
	o => \instruction_register20_16[4]~input_o\);

-- Location: IOIBUF_X24_Y39_N1
\instruction_register20_16[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register20_16(1),
	o => \instruction_register20_16[1]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\instruction_register20_16[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register20_16(2),
	o => \instruction_register20_16[2]~input_o\);

-- Location: LCCOMB_X23_Y35_N0
\Equal19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal19~1_combout\ = (!\instruction_register31_26[1]~input_o\ & (!\instruction_register20_16[1]~input_o\ & (\instruction_register31_26[0]~input_o\ & !\instruction_register20_16[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[1]~input_o\,
	datab => \instruction_register20_16[1]~input_o\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \instruction_register20_16[2]~input_o\,
	combout => \Equal19~1_combout\);

-- Location: LCCOMB_X23_Y35_N26
\Equal19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (!\instruction_register31_26[3]~input_o\ & (!\instruction_register31_26[4]~input_o\ & (!\instruction_register31_26[5]~input_o\ & !\instruction_register31_26[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[3]~input_o\,
	datab => \instruction_register31_26[4]~input_o\,
	datac => \instruction_register31_26[5]~input_o\,
	datad => \instruction_register31_26[2]~input_o\,
	combout => \Equal19~0_combout\);

-- Location: IOIBUF_X26_Y39_N1
\instruction_register20_16[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register20_16(3),
	o => \instruction_register20_16[3]~input_o\);

-- Location: LCCOMB_X23_Y35_N22
\Equal19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal19~2_combout\ = (!\instruction_register20_16[4]~input_o\ & (\Equal19~1_combout\ & (\Equal19~0_combout\ & !\instruction_register20_16[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register20_16[4]~input_o\,
	datab => \Equal19~1_combout\,
	datac => \Equal19~0_combout\,
	datad => \instruction_register20_16[3]~input_o\,
	combout => \Equal19~2_combout\);

-- Location: LCCOMB_X23_Y35_N14
\Equal16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (!\instruction_register31_26[3]~input_o\ & (!\instruction_register31_26[4]~input_o\ & (!\instruction_register31_26[5]~input_o\ & \instruction_register31_26[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[3]~input_o\,
	datab => \instruction_register31_26[4]~input_o\,
	datac => \instruction_register31_26[5]~input_o\,
	datad => \instruction_register31_26[2]~input_o\,
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X23_Y35_N4
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\instruction_register31_26[0]~input_o\) # (!\Equal16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register31_26[0]~input_o\,
	datad => \Equal16~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: IOIBUF_X26_Y39_N15
\instruction_register20_16[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_register20_16(0),
	o => \instruction_register20_16[0]~input_o\);

-- Location: LCCOMB_X23_Y35_N28
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state_r.Branch2~q\ & (((\Equal19~2_combout\ & !\instruction_register20_16[0]~input_o\)) # (!\Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~2_combout\,
	datab => \Selector12~0_combout\,
	datac => \state_r.Branch2~q\,
	datad => \instruction_register20_16[0]~input_o\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X22_Y35_N2
\Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Selector14~0_combout\) # ((\state_r.i_type1~q\ & ((\Equal12~1_combout\) # (\Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \state_r.i_type1~q\,
	datac => \Equal10~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X22_Y35_N0
\Selector14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\state_r.r_type1~q\) # ((\Selector14~1_combout\) # ((\instruction_register31_26[0]~input_o\ & \Selector14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_r.r_type1~q\,
	datab => \instruction_register31_26[0]~input_o\,
	datac => \Selector14~2_combout\,
	datad => \Selector14~1_combout\,
	combout => \Selector14~3_combout\);

-- Location: FF_X22_Y35_N1
\ALUOp[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~3_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOp[0]~reg0_q\);

-- Location: LCCOMB_X21_Y35_N26
\Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (!\Equal10~0_combout\ & (((\instruction_register31_26[5]~input_o\) # (!\Equal9~0_combout\)) # (!\instruction_register31_26[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[4]~input_o\,
	datab => \Equal9~0_combout\,
	datac => \Equal10~0_combout\,
	datad => \instruction_register31_26[5]~input_o\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X23_Y35_N6
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Equal16~0_combout\ & (\instruction_register31_26[0]~input_o\ $ (\instruction_register31_26[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register31_26[0]~input_o\,
	datac => \instruction_register31_26[1]~input_o\,
	datad => \Equal16~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X23_Y35_N12
\Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\state_r.Branch2~q\ & ((\Selector13~0_combout\) # ((\instruction_register20_16[0]~input_o\ & \Equal19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \instruction_register20_16[0]~input_o\,
	datac => \Equal19~2_combout\,
	datad => \state_r.Branch2~q\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X22_Y35_N18
\ALUOp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALUOp~0_combout\ = (!\instruction_register31_26[1]~input_o\ & (\instruction_register31_26[3]~input_o\ & (\instruction_register31_26[0]~input_o\ & \Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register31_26[1]~input_o\,
	datab => \instruction_register31_26[3]~input_o\,
	datac => \instruction_register31_26[0]~input_o\,
	datad => \Equal16~1_combout\,
	combout => \ALUOp~0_combout\);

-- Location: LCCOMB_X21_Y35_N14
\Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\state_r.i_type1~q\ & ((\instruction_register31_26[2]~input_o\) # (!\ALUOp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp~0_combout\,
	datac => \instruction_register31_26[2]~input_o\,
	datad => \state_r.i_type1~q\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X22_Y35_N12
\Selector12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\Selector12~1_combout\ & (((\Equal12~1_combout\) # (\ALUOp~0_combout\)) # (!\Selector12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~2_combout\,
	datab => \Equal12~1_combout\,
	datac => \ALUOp~0_combout\,
	datad => \Selector12~1_combout\,
	combout => \Selector12~3_combout\);

-- Location: LCCOMB_X22_Y35_N26
\Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\Selector13~1_combout\) # ((\Selector14~2_combout\) # ((!\Selector12~2_combout\ & \Selector12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~2_combout\,
	datab => \Selector13~1_combout\,
	datac => \Selector14~2_combout\,
	datad => \Selector12~3_combout\,
	combout => \Selector13~2_combout\);

-- Location: FF_X22_Y35_N27
\ALUOp[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOp[1]~reg0_q\);

-- Location: LCCOMB_X22_Y35_N22
\Selector17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\instruction_register31_26[0]~input_o\ & \instruction_register31_26[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction_register31_26[0]~input_o\,
	datad => \instruction_register31_26[1]~input_o\,
	combout => \Selector17~3_combout\);

-- Location: LCCOMB_X23_Y35_N2
\Selector12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (\state_r.Branch2~q\ & ((\Equal19~2_combout\) # ((\Equal16~0_combout\ & \Selector17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~2_combout\,
	datab => \Equal16~0_combout\,
	datac => \state_r.Branch2~q\,
	datad => \Selector17~3_combout\,
	combout => \Selector12~4_combout\);

-- Location: LCCOMB_X23_Y35_N8
\Selector12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~5_combout\ = (\Selector12~4_combout\ & (((\instruction_register31_26[0]~input_o\ & \instruction_register31_26[1]~input_o\)) # (!\Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~0_combout\,
	datab => \instruction_register31_26[0]~input_o\,
	datac => \instruction_register31_26[1]~input_o\,
	datad => \Selector12~4_combout\,
	combout => \Selector12~5_combout\);

-- Location: LCCOMB_X22_Y35_N20
\Selector12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~6_combout\ = (\Selector14~2_combout\) # ((\Selector12~5_combout\) # ((\Selector12~2_combout\ & \Selector12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~2_combout\,
	datab => \Selector14~2_combout\,
	datac => \Selector12~5_combout\,
	datad => \Selector12~3_combout\,
	combout => \Selector12~6_combout\);

-- Location: FF_X22_Y35_N21
\ALUOp[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~6_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOp[2]~reg0_q\);

-- Location: LCCOMB_X23_Y35_N10
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Equal16~0_combout\ & (\state_r.Branch2~q\ & ((!\instruction_register31_26[1]~input_o\) # (!\instruction_register31_26[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~0_combout\,
	datab => \instruction_register31_26[0]~input_o\,
	datac => \instruction_register31_26[1]~input_o\,
	datad => \state_r.Branch2~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X23_Y35_N24
\Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\state_r.JumpAndLink1~q\) # ((\Selector12~4_combout\) # (\Selector11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_r.JumpAndLink1~q\,
	datac => \Selector12~4_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: FF_X23_Y35_N25
\ALUOp[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOp[3]~reg0_q\);

-- Location: LCCOMB_X24_Y35_N20
\WideOr12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (\state_r.instruction_fetch2~q\) # (\state_r.Branch1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_r.instruction_fetch2~q\,
	datac => \state_r.Branch1~q\,
	combout => \WideOr12~0_combout\);

-- Location: FF_X24_Y35_N21
\ALUSrcB[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr12~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUSrcB[0]~reg0_q\);

-- Location: LCCOMB_X21_Y35_N18
\WideOr13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (\state_r.i_type1~q\) # ((\state_r.load_and_store_word1~q\) # (\state_r.Branch1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_r.i_type1~q\,
	datac => \state_r.load_and_store_word1~q\,
	datad => \state_r.Branch1~q\,
	combout => \WideOr13~0_combout\);

-- Location: FF_X21_Y35_N19
\ALUSrcB[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr13~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUSrcB[1]~reg0_q\);

-- Location: LCCOMB_X23_Y35_N30
WideOr12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr12~combout\ = (!\state_r.JumpAndLink1~q\ & (!\state_r.instruction_fetch2~q\ & !\state_r.Branch1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_r.JumpAndLink1~q\,
	datab => \state_r.instruction_fetch2~q\,
	datad => \state_r.Branch1~q\,
	combout => \WideOr12~combout\);

-- Location: FF_X23_Y35_N31
\ALUSrcA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr12~combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUSrcA~reg0_q\);

-- Location: LCCOMB_X24_Y35_N26
\Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\state_r.r_type2~q\ & ((\instruction_register5_0[5]~input_o\) # (!\instruction_register5_0[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register5_0[5]~input_o\,
	datac => \instruction_register5_0[4]~input_o\,
	datad => \state_r.r_type2~q\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X24_Y35_N18
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state_r.r_type2~q\ & (((\instruction_register5_0[2]~input_o\) # (\instruction_register5_0[1]~input_o\)) # (!\instruction_register5_0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register5_0[3]~input_o\,
	datab => \instruction_register5_0[2]~input_o\,
	datac => \state_r.r_type2~q\,
	datad => \instruction_register5_0[1]~input_o\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X24_Y35_N28
\Selector16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\Selector16~1_combout\) # ((\state_r.i_type2~q\) # ((\state_r.load_word4~q\) # (\Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~1_combout\,
	datab => \state_r.i_type2~q\,
	datac => \state_r.load_word4~q\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~2_combout\);

-- Location: FF_X24_Y35_N29
\RegWrite~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegWrite~reg0_q\);

-- Location: FF_X24_Y35_N19
\RegDst~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_r.r_type2~q\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDst~reg0_q\);

-- Location: LCCOMB_X24_Y35_N0
\Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\state_r.instruction_fetch2~q\) # ((\state_r.jump~q\) # ((\Selector15~0_combout\) # (\state_r.JumpAndLink1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_r.instruction_fetch2~q\,
	datab => \state_r.jump~q\,
	datac => \Selector15~0_combout\,
	datad => \state_r.JumpAndLink1~q\,
	combout => \Selector15~1_combout\);

-- Location: FF_X24_Y35_N1
\PCWrite~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PCWrite~reg0_q\);

-- Location: LCCOMB_X24_Y35_N30
\PcWriteCond~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PcWriteCond~reg0feeder_combout\ = \state_r.Branch2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_r.Branch2~q\,
	combout => \PcWriteCond~reg0feeder_combout\);

-- Location: FF_X24_Y35_N31
\PcWriteCond~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PcWriteCond~reg0feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PcWriteCond~reg0_q\);

-- Location: LCCOMB_X20_Y35_N12
\IorD~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IorD~reg0feeder_combout\ = \state_r.load_and_store_word2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_r.load_and_store_word2~q\,
	combout => \IorD~reg0feeder_combout\);

-- Location: FF_X20_Y35_N13
\IorD~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IorD~reg0feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IorD~reg0_q\);

-- Location: LCCOMB_X20_Y35_N30
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Selector7~0_combout\) # (!\state_r.instruction_fetch1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datad => \state_r.instruction_fetch1~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X20_Y35_N31
\MemRead~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemRead~reg0_q\);

-- Location: FF_X20_Y35_N17
\MemWrite~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemWrite~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemWrite~reg0_q\);

-- Location: FF_X24_Y35_N7
\MemToReg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_r.load_word4~q\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemToReg~reg0_q\);

-- Location: LCCOMB_X20_Y35_N10
\IRWrite~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRWrite~reg0feeder_combout\ = \state_r.instruction_fetch2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_r.instruction_fetch2~q\,
	combout => \IRWrite~reg0feeder_combout\);

-- Location: FF_X20_Y35_N11
\IRWrite~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IRWrite~reg0feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IRWrite~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_JumpAndLink <= \JumpAndLink~output_o\;

ww_IsSigned <= \IsSigned~output_o\;

ww_PCSource(0) <= \PCSource[0]~output_o\;

ww_PCSource(1) <= \PCSource[1]~output_o\;

ww_ALUOp(0) <= \ALUOp[0]~output_o\;

ww_ALUOp(1) <= \ALUOp[1]~output_o\;

ww_ALUOp(2) <= \ALUOp[2]~output_o\;

ww_ALUOp(3) <= \ALUOp[3]~output_o\;

ww_ALUSrcB(0) <= \ALUSrcB[0]~output_o\;

ww_ALUSrcB(1) <= \ALUSrcB[1]~output_o\;

ww_ALUSrcA <= \ALUSrcA~output_o\;

ww_RegWrite <= \RegWrite~output_o\;

ww_RegDst <= \RegDst~output_o\;

ww_PCWrite <= \PCWrite~output_o\;

ww_PcWriteCond <= \PcWriteCond~output_o\;

ww_IorD <= \IorD~output_o\;

ww_MemRead <= \MemRead~output_o\;

ww_MemWrite <= \MemWrite~output_o\;

ww_MemToReg <= \MemToReg~output_o\;

ww_IRWrite <= \IRWrite~output_o\;
END structure;


