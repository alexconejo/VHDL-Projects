LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY pr3 IS 
	PORT (
		A,B,C: IN STD_LOGIC;
		f: OUT STD_LOGIC );
END pr3;
ARCHITECTURE Behavioral OF pr3 IS
	BEGIN
		f<=((A OR NOT B) AND (NOT A OR B OR C));
END Behavioral;