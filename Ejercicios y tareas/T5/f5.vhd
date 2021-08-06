LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY f5 IS
	PORT ( 
			 X: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 S: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END f5;

ARCHITECTURE Behavior OF f5 IS
	SIGNAL Sum: unsigned(3 DOWNTO 0);
	BEGIN
	  Sum <= unsigned(NOT(X)) + "0001";
	  S <= std_logic_vector(Sum(3 DOWNTO 0));
	  
END Behavior;
		