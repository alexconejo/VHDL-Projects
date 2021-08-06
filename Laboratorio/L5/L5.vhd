LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.numeric_std.all ;

ENTITY L5 IS
PORT ( 	Cin :      IN STD_LOGIC ;
			X, Y :     IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			S :        OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			Overflow : OUT STD_LOGIC ) ;
END L5 ;

ARCHITECTURE Behavior OF L5 IS
	SIGNAL Sum : UNSIGNED(4 DOWNTO 0) ;
	SIGNAL Aux : STD_LOGIC_VECTOR(4 DOWNTO 0) ;
	
BEGIN
	Aux <= "0000" & Cin;
	Sum <= UNSIGNED(('0' & X)) + UNSIGNED(('0' & Y)) + UNSIGNED(Aux) ;
	S <= STD_LOGIC_VECTOR (Sum(3 DOWNTO 0));
	Overflow <= Sum(4) XOR X(3) XOR Y(3) XOR Sum(3) ;
END Behavior ;
