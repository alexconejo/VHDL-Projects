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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/26/2021 21:34:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          L8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY L8_vhd_vec_tst IS
END L8_vhd_vec_tst;
ARCHITECTURE L8_arch OF L8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL z : STD_LOGIC_VECTOR(0 TO 3);
COMPONENT L8
	PORT (
	Clock : IN STD_LOGIC;
	E : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	z : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;
BEGIN
	i1 : L8
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	E => E,
	resetn => resetn,
	z => z
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
	WAIT FOR 190000 ps;
	E <= '0';
	WAIT FOR 22000 ps;
	E <= '1';
WAIT;
END PROCESS t_prcs_E;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 9000 ps;
	resetn <= '1';
	WAIT FOR 171000 ps;
	resetn <= '0';
	WAIT FOR 9000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;
END L8_arch;
