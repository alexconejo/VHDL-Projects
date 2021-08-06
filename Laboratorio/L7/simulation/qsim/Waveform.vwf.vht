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
-- Generated on "04/26/2021 21:30:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          L7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY L7_vhd_vec_tst IS
END L7_vhd_vec_tst;
ARCHITECTURE L7_arch OF L7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL CoutAsc : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CoutDec : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL E : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
COMPONENT L7
	PORT (
	Clock : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	CoutAsc : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	CoutDec : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	E : IN STD_LOGIC;
	Resetn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : L7
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Cout => Cout,
	CoutAsc => CoutAsc,
	CoutDec => CoutDec,
	E => E,
	Resetn => Resetn
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 320000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
	WAIT FOR 170000 ps;
	E <= '0';
	WAIT FOR 44000 ps;
	E <= '1';
WAIT;
END PROCESS t_prcs_E;

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '0';
	WAIT FOR 24000 ps;
	Resetn <= '1';
	WAIT FOR 216000 ps;
	Resetn <= '0';
	WAIT FOR 24000 ps;
	Resetn <= '1';
WAIT;
END PROCESS t_prcs_Resetn;
END L7_arch;
