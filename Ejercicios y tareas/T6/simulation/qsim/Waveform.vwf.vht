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
-- Generated on "04/01/2021 00:49:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          L6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY L6_vhd_vec_tst IS
END L6_vhd_vec_tst;
ARCHITECTURE L6_arch OF L6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT L6
	PORT (
	E : IN STD_LOGIC;
	F : OUT STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : L6
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	F => F,
	S => S
	);

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
	WAIT FOR 10000 ps;
	E <= '1';
	WAIT FOR 10000 ps;
	E <= '0';
WAIT;
END PROCESS t_prcs_E;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	S(2) <= '0';
	WAIT FOR 10000 ps;
	S(2) <= '1';
	WAIT FOR 10000 ps;
	S(2) <= '0';
	WAIT FOR 15000 ps;
	S(2) <= '1';
	WAIT FOR 5000 ps;
	S(2) <= '0';
	WAIT FOR 5000 ps;
	S(2) <= '1';
	WAIT FOR 5000 ps;
	S(2) <= '0';
	WAIT FOR 5000 ps;
	S(2) <= '1';
	WAIT FOR 5000 ps;
	S(2) <= '0';
	WAIT FOR 5000 ps;
	S(2) <= '1';
	WAIT FOR 5000 ps;
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	S(1) <= '1';
	WAIT FOR 5000 ps;
	S(1) <= '0';
	WAIT FOR 15000 ps;
	S(1) <= '1';
	WAIT FOR 10000 ps;
	S(1) <= '0';
	WAIT FOR 10000 ps;
	S(1) <= '1';
	WAIT FOR 15000 ps;
	S(1) <= '0';
	WAIT FOR 5000 ps;
	S(1) <= '1';
	WAIT FOR 5000 ps;
	S(1) <= '0';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	S(0) <= '1';
	WAIT FOR 5000 ps;
	S(0) <= '0';
	WAIT FOR 5000 ps;
	S(0) <= '1';
	WAIT FOR 25000 ps;
	S(0) <= '0';
	WAIT FOR 15000 ps;
	S(0) <= '1';
	WAIT FOR 5000 ps;
	S(0) <= '0';
	WAIT FOR 15000 ps;
	S(0) <= '1';
WAIT;
END PROCESS t_prcs_S_0;
END L6_arch;
