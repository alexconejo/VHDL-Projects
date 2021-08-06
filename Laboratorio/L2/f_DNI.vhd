LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY f_DNI IS
	PORT(
	A,B,C: IN STD_LOGIC;
	f: OUT STD_LOGIC);
END f_DNI;

ARCHITECTURE Behavioral OF f_DNI IS
	BEGIN
		f <=  ((A OR NOT B) AND (NOT A OR B OR C));
	END Behavioral;
