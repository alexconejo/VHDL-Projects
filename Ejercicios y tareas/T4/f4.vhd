LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

--Define Entity	
ENTITY f4 IS
	PORT(
	A, B, C, D: IN STD_LOGIC;
	f: OUT STD_LOGIC);
END f4;

--Define model behaviour
ARCHITECTURE Behavioral OF f4 IS
		--MINITERMINOS
		SIGNAL m1, m3, m6, m9, m11, m13, m15: STD_LOGIC;
		--MAXITERMINOS
		SIGNAL M0, M2, M4, M5, M7, M8, M10, M12, M14: STD_LOGIC;
	BEGIN
	
		m1 <= (NOT A) AND (NOT B) AND (NOT C) AND D;
		m3 <= (NOT A) AND (NOT B) AND C AND D;
		m6 <= (NOT A) AND B AND C AND (NOT D);
		m9 <= A AND (NOT B) AND (NOT C) AND D;
		m11 <= A AND (NOT B) AND C AND D;
		m13 <= A AND B AND (NOT C) AND D;
		m15 <= A AND B AND C AND D;
		
		f <= m1 OR m3 OR m6 OR m9 OR m11 OR m13 OR m15;
		
		M0 <= (NOT A) OR (NOT B) OR (NOT C) OR (NOT D);
		M2 <= (NOT A) OR (NOT B) OR C OR (NOT D);
		M4 <= (NOT A) OR B OR (NOT C) OR (NOT D);
		M5 <= (NOT A) OR B OR (NOT C) OR D;
		M7 <= (NOT A) OR B OR C OR D;
		M8 <= A OR (NOT B) OR (NOT C) OR (NOT D);
		M10 <= A OR (NOT B) OR C OR (NOT D);
		M12 <= A OR B OR (NOT C) OR (NOT D);
		M14 <= A OR B OR C OR (NOT D);
		
		--f <= M0 AND M2 AND M4 AND M5 AND M7 AND M8 AND M10 AND M12 AND M14;
		
	END Behavioral;

