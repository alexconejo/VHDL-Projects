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

-- DATE "04/26/2021 21:34:18"

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

ENTITY 	L8 IS
    PORT (
	Clock : IN std_logic;
	resetn : IN std_logic;
	E : IN std_logic;
	z : OUT std_logic_vector(0 TO 3)
	);
END L8;

ARCHITECTURE structure OF L8 IS
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
SIGNAL ww_resetn : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_z : std_logic_vector(0 TO 3);
SIGNAL \z[3]~output_o\ : std_logic;
SIGNAL \z[2]~output_o\ : std_logic;
SIGNAL \z[1]~output_o\ : std_logic;
SIGNAL \z[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \State.st5~q\ : std_logic;
SIGNAL \State.st6~q\ : std_logic;
SIGNAL \State.st7~q\ : std_logic;
SIGNAL \State.st8~q\ : std_logic;
SIGNAL \State.st1~0_combout\ : std_logic;
SIGNAL \State.st1~q\ : std_logic;
SIGNAL \State.st2~0_combout\ : std_logic;
SIGNAL \State.st2~q\ : std_logic;
SIGNAL \State.st3~q\ : std_logic;
SIGNAL \State.st4~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_resetn <= resetn;
ww_E <= E;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr1~combout\ <= NOT \WideOr1~combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;

\z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \z[3]~output_o\);

\z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \z[2]~output_o\);

\z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \z[1]~output_o\);

\z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \z[0]~output_o\);

\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\resetn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

\E~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

\State.st5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \State.st4~q\,
	clrn => \resetn~input_o\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.st5~q\);

\State.st6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \State.st5~q\,
	clrn => \resetn~input_o\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.st6~q\);

\State.st7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \State.st6~q\,
	clrn => \resetn~input_o\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.st7~q\);

\State.st8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \State.st7~q\,
	clrn => \resetn~input_o\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.st8~q\);

\State.st1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.st1~0_combout\ = !\State.st8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.st8~q\,
	combout => \State.st1~0_combout\);

\State.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \State.st1~0_combout\,
	clrn => \resetn~input_o\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.st1~q\);

\State.st2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.st2~0_combout\ = !\State.st1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.st1~q\,
	combout => \State.st2~0_combout\);

\State.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \State.st2~0_combout\,
	clrn => \resetn~input_o\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.st2~q\);

\State.st3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \State.st2~q\,
	clrn => \resetn~input_o\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.st3~q\);

\State.st4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \State.st3~q\,
	clrn => \resetn~input_o\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.st4~q\);

\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\State.st4~q\) # ((\State.st5~q\) # (\State.st6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.st4~q\,
	datab => \State.st5~q\,
	datac => \State.st6~q\,
	combout => \WideOr2~0_combout\);

WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\State.st5~q\) # ((\State.st2~q\) # ((\State.st7~q\) # (!\State.st1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.st5~q\,
	datab => \State.st2~q\,
	datac => \State.st7~q\,
	datad => \State.st1~q\,
	combout => \WideOr1~combout\);

\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\State.st5~q\ & (!\State.st2~q\ & !\State.st7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.st5~q\,
	datac => \State.st2~q\,
	datad => \State.st7~q\,
	combout => \WideOr0~0_combout\);

ww_z(3) <= \z[3]~output_o\;

ww_z(2) <= \z[2]~output_o\;

ww_z(1) <= \z[1]~output_o\;

ww_z(0) <= \z[0]~output_o\;
END structure;


