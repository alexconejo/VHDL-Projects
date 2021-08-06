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

-- DATE "04/26/2021 21:30:05"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	L7 IS
    PORT (
	Clock : IN std_logic;
	Resetn : IN std_logic;
	E : IN std_logic;
	CoutAsc : OUT std_logic_vector(3 DOWNTO 0);
	CoutDec : OUT std_logic_vector(7 DOWNTO 0);
	Cout : OUT std_logic
	);
END L7;

ARCHITECTURE structure OF L7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Resetn : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_CoutAsc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CoutDec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \CoutAsc[0]~output_o\ : std_logic;
SIGNAL \CoutAsc[1]~output_o\ : std_logic;
SIGNAL \CoutAsc[2]~output_o\ : std_logic;
SIGNAL \CoutAsc[3]~output_o\ : std_logic;
SIGNAL \CoutDec[0]~output_o\ : std_logic;
SIGNAL \CoutDec[1]~output_o\ : std_logic;
SIGNAL \CoutDec[2]~output_o\ : std_logic;
SIGNAL \CoutDec[3]~output_o\ : std_logic;
SIGNAL \CoutDec[4]~output_o\ : std_logic;
SIGNAL \CoutDec[5]~output_o\ : std_logic;
SIGNAL \CoutDec[6]~output_o\ : std_logic;
SIGNAL \CoutDec[7]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Resetn~input_o\ : std_logic;
SIGNAL \CountAsc~0_combout\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \CoutDec[0]~0_combout\ : std_logic;
SIGNAL \Max[0]~2_combout\ : std_logic;
SIGNAL \CountAsc[0]~3_combout\ : std_logic;
SIGNAL \Max[0]~3_combout\ : std_logic;
SIGNAL \Max[1]~4_combout\ : std_logic;
SIGNAL \Max[1]~5_combout\ : std_logic;
SIGNAL \Max[2]~0_combout\ : std_logic;
SIGNAL \Max[2]~1_combout\ : std_logic;
SIGNAL \CountAsc[0]~1_combout\ : std_logic;
SIGNAL \CountAsc[0]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \selector~1_combout\ : std_logic;
SIGNAL \selector~2_combout\ : std_logic;
SIGNAL \selector~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \CoutDec[0]~reg0_q\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \CoutDec[1]~reg0_q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \CoutDec[2]~reg0_q\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \CoutDec[3]~reg0_q\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \CoutDec[4]~reg0_q\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \CoutDec[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \CoutDec[6]~reg0_q\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \Cout~1_combout\ : std_logic;
SIGNAL \Cout~reg0_q\ : std_logic;
SIGNAL CountAsc : std_logic_vector(3 DOWNTO 0);
SIGNAL Max : std_logic_vector(2 DOWNTO 0);
SIGNAL selector : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Resetn~input_o\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Resetn <= Resetn;
ww_E <= E;
CoutAsc <= ww_CoutAsc;
CoutDec <= ww_CoutDec;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Resetn~input_o\ <= NOT \Resetn~input_o\;

\CoutAsc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CountAsc(0),
	devoe => ww_devoe,
	o => \CoutAsc[0]~output_o\);

\CoutAsc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CountAsc(1),
	devoe => ww_devoe,
	o => \CoutAsc[1]~output_o\);

\CoutAsc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CountAsc(2),
	devoe => ww_devoe,
	o => \CoutAsc[2]~output_o\);

\CoutAsc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CountAsc(3),
	devoe => ww_devoe,
	o => \CoutAsc[3]~output_o\);

\CoutDec[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CoutDec[0]~reg0_q\,
	devoe => ww_devoe,
	o => \CoutDec[0]~output_o\);

\CoutDec[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CoutDec[1]~reg0_q\,
	devoe => ww_devoe,
	o => \CoutDec[1]~output_o\);

\CoutDec[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CoutDec[2]~reg0_q\,
	devoe => ww_devoe,
	o => \CoutDec[2]~output_o\);

\CoutDec[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CoutDec[3]~reg0_q\,
	devoe => ww_devoe,
	o => \CoutDec[3]~output_o\);

\CoutDec[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CoutDec[4]~reg0_q\,
	devoe => ww_devoe,
	o => \CoutDec[4]~output_o\);

\CoutDec[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CoutDec[5]~reg0_q\,
	devoe => ww_devoe,
	o => \CoutDec[5]~output_o\);

\CoutDec[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CoutDec[6]~reg0_q\,
	devoe => ww_devoe,
	o => \CoutDec[6]~output_o\);

\CoutDec[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CoutDec[7]~output_o\);

\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~reg0_q\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\Resetn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Resetn,
	o => \Resetn~input_o\);

\CountAsc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CountAsc~0_combout\ = (!CountAsc(0) & \Resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CountAsc(0),
	datad => \Resetn~input_o\,
	combout => \CountAsc~0_combout\);

\E~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

\CoutDec[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CoutDec[0]~0_combout\ = (\E~input_o\) # (!\Resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datad => \Resetn~input_o\,
	combout => \CoutDec[0]~0_combout\);

\Max[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Max[0]~2_combout\ = (Max(0) & (((Max(1) & Max(2))) # (!\E~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Max(0),
	datab => Max(1),
	datac => Max(2),
	datad => \E~input_o\,
	combout => \Max[0]~2_combout\);

\CountAsc[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CountAsc[0]~3_combout\ = (\Resetn~input_o\ & (Max(1) & (Max(2) & Max(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Resetn~input_o\,
	datab => Max(1),
	datac => Max(2),
	datad => Max(0),
	combout => \CountAsc[0]~3_combout\);

\Max[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Max[0]~3_combout\ = (\Max[0]~2_combout\) # ((\CoutDec[0]~0_combout\ & (!Max(0) & !\CountAsc[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Max[0]~2_combout\,
	datab => \CoutDec[0]~0_combout\,
	datac => Max(0),
	datad => \CountAsc[0]~3_combout\,
	combout => \Max[0]~3_combout\);

\Max[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Max[0]~3_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Max(0));

\Max[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Max[1]~4_combout\ = (\Resetn~input_o\ & (Max(1) $ (Max(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Resetn~input_o\,
	datac => Max(1),
	datad => Max(0),
	combout => \Max[1]~4_combout\);

\Max[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Max[1]~5_combout\ = (\CoutDec[0]~0_combout\ & ((\CountAsc[0]~3_combout\ & (Max(1))) # (!\CountAsc[0]~3_combout\ & ((\Max[1]~4_combout\))))) # (!\CoutDec[0]~0_combout\ & (Max(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Max(1),
	datab => \Max[1]~4_combout\,
	datac => \CoutDec[0]~0_combout\,
	datad => \CountAsc[0]~3_combout\,
	combout => \Max[1]~5_combout\);

\Max[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Max[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Max(1));

\Max[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Max[2]~0_combout\ = (Max(2)) # ((\E~input_o\ & (Max(1) & Max(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Max(2),
	datab => \E~input_o\,
	datac => Max(1),
	datad => Max(0),
	combout => \Max[2]~0_combout\);

\Max[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Max[2]~1_combout\ = (\Resetn~input_o\ & \Max[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Resetn~input_o\,
	datab => \Max[2]~0_combout\,
	combout => \Max[2]~1_combout\);

\Max[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Max[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Max(2));

\CountAsc[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CountAsc[0]~1_combout\ = (\Resetn~input_o\ & (Max(1) $ (!Max(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Resetn~input_o\,
	datab => Max(1),
	datac => Max(2),
	combout => \CountAsc[0]~1_combout\);

\CountAsc[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CountAsc[0]~2_combout\ = (\CoutDec[0]~0_combout\ & ((Max(2) $ (Max(0))) # (!\CountAsc[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CoutDec[0]~0_combout\,
	datab => Max(2),
	datac => Max(0),
	datad => \CountAsc[0]~1_combout\,
	combout => \CountAsc[0]~2_combout\);

\CountAsc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \CountAsc~0_combout\,
	ena => \CountAsc[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CountAsc(0));

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = CountAsc(0) $ (CountAsc(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CountAsc(0),
	datad => CountAsc(1),
	combout => \Add1~0_combout\);

\CountAsc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Add1~0_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	ena => \CountAsc[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CountAsc(1));

\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = CountAsc(2) $ (((CountAsc(0) & CountAsc(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CountAsc(2),
	datac => CountAsc(0),
	datad => CountAsc(1),
	combout => \Add1~1_combout\);

\CountAsc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Add1~1_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	ena => \CountAsc[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CountAsc(2));

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = CountAsc(3) $ (((CountAsc(0) & (CountAsc(1) & CountAsc(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CountAsc(3),
	datab => CountAsc(0),
	datac => CountAsc(1),
	datad => CountAsc(2),
	combout => \Add1~2_combout\);

\CountAsc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Add1~2_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	ena => \CountAsc[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CountAsc(3));

\selector~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \selector~1_combout\ = (\Resetn~input_o\ & ((selector(0) & ((!selector(1)))) # (!selector(0) & (!selector(2) & selector(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Resetn~input_o\,
	datab => selector(0),
	datac => selector(2),
	datad => selector(1),
	combout => \selector~1_combout\);

\selector[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \selector~1_combout\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selector(1));

\selector~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \selector~2_combout\ = (!selector(0) & (\Resetn~input_o\ & ((!selector(1)) # (!selector(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selector(0),
	datab => selector(2),
	datac => selector(1),
	datad => \Resetn~input_o\,
	combout => \selector~2_combout\);

\selector[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \selector~2_combout\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selector(0));

\selector~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \selector~0_combout\ = (\Resetn~input_o\ & ((selector(2) & ((!selector(1)))) # (!selector(2) & (selector(0) & selector(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Resetn~input_o\,
	datab => selector(0),
	datac => selector(2),
	datad => selector(1),
	combout => \selector~0_combout\);

\selector[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \selector~0_combout\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selector(2));

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!selector(2) & (!selector(1) & !selector(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selector(2),
	datac => selector(1),
	datad => selector(0),
	combout => \Mux6~0_combout\);

\CoutDec[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Mux6~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_Resetn~input_o\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CoutDec[0]~reg0_q\);

\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (selector(0) & (!selector(2) & !selector(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selector(0),
	datac => selector(2),
	datad => selector(1),
	combout => \Mux6~1_combout\);

\CoutDec[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Mux6~1_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CoutDec[1]~reg0_q\);

\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (selector(1) & (!selector(2) & !selector(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selector(1),
	datac => selector(2),
	datad => selector(0),
	combout => \Mux6~2_combout\);

\CoutDec[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Mux6~2_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CoutDec[2]~reg0_q\);

\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (selector(1) & (selector(0) & !selector(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selector(1),
	datab => selector(0),
	datad => selector(2),
	combout => \Mux6~3_combout\);

\CoutDec[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Mux6~3_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CoutDec[3]~reg0_q\);

\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (selector(2) & (!selector(1) & !selector(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selector(2),
	datac => selector(1),
	datad => selector(0),
	combout => \Mux6~4_combout\);

\CoutDec[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Mux6~4_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CoutDec[4]~reg0_q\);

\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (selector(2) & (selector(0) & !selector(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selector(2),
	datab => selector(0),
	datad => selector(1),
	combout => \Mux6~5_combout\);

\CoutDec[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Mux6~5_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CoutDec[5]~reg0_q\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (selector(2) & selector(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selector(2),
	datab => selector(1),
	combout => \Mux0~0_combout\);

\CoutDec[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Mux0~0_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	ena => \CoutDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CoutDec[6]~reg0_q\);

\Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (CountAsc(1) & (CountAsc(2) & (\E~input_o\ & !CountAsc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CountAsc(1),
	datab => CountAsc(2),
	datac => \E~input_o\,
	datad => CountAsc(0),
	combout => \Cout~0_combout\);

\Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~1_combout\ = (\Cout~reg0_q\) # ((\Cout~0_combout\ & !CountAsc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout~reg0_q\,
	datab => \Cout~0_combout\,
	datad => CountAsc(3),
	combout => \Cout~1_combout\);

\Cout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Cout~1_combout\,
	sclr => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cout~reg0_q\);

ww_CoutAsc(0) <= \CoutAsc[0]~output_o\;

ww_CoutAsc(1) <= \CoutAsc[1]~output_o\;

ww_CoutAsc(2) <= \CoutAsc[2]~output_o\;

ww_CoutAsc(3) <= \CoutAsc[3]~output_o\;

ww_CoutDec(0) <= \CoutDec[0]~output_o\;

ww_CoutDec(1) <= \CoutDec[1]~output_o\;

ww_CoutDec(2) <= \CoutDec[2]~output_o\;

ww_CoutDec(3) <= \CoutDec[3]~output_o\;

ww_CoutDec(4) <= \CoutDec[4]~output_o\;

ww_CoutDec(5) <= \CoutDec[5]~output_o\;

ww_CoutDec(6) <= \CoutDec[6]~output_o\;

ww_CoutDec(7) <= \CoutDec[7]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


