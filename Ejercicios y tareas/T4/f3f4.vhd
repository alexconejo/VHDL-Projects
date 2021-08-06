LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

--Define Entity
ENTITY f3f4 IS 
	PORT(
	A, B, C, D: IN STD_LOGIC;
	f3,f4: OUT STD_LOGIC);
END f3f4; 

--Define model behaviour
ARCHITECTURE Behavioral OF f3f4 IS 
	--MINITERMINOS
	SIGNAL m1_f3, m3_f3 , m5_f3, m6_f3 ,m7_f3 ,m13_f3, m15_f3: STD_LOGIC; 
	--MAXITERMINOS
	SIGNAL M0_f3, M2_f3, M4_f3, M8_f3, M9_f3, M10_f3, M11_f3, M12_f3, M14_f3: STD_LOGIC; 
	--MINITERMINOS
	SIGNAL m1_f4, m3_f4, m6_f4, m9_f4, m11_f4, m13_f4, m15_f4: STD_LOGIC;
	--MAXITERMINOS
	SIGNAL M0_f4, M2_f4, M4_f4, M5_f4, M7_f4, M8_f4, M10_f4, M12_f4, M14_f4: STD_LOGIC;
	BEGIN 

		m1_f3 <= (NOT A) AND (NOT B) AND (NOT C) AND D;
		m3_f3 <= (NOT A) AND (NOT B) AND C AND D;
		m5_f3 <= (NOT A) AND B AND (NOT C) AND D;
		m6_f3 <= (NOT A) AND B AND C AND (NOT D);
		m7_f3 <= (NOT A) AND B AND C AND  D;
		m13_f3 <= A AND B AND (NOT C) AND D;
		m15_f3 <= A AND B AND C AND D;
		
		f3 <= m1_f3 OR m3_f3 OR m5_f3 OR m6_f3 OR m13_f3 OR m15_f3 ;
		
		--M0 <= (NOT A) OR (NOT B) OR (NOT C) OR (NOT D);
		--M2 <= (NOT A) OR (NOT B) OR  C OR (NOT D);
		--M4 <= (NOT A) OR  B OR (NOT C) OR (NOT D);
		--M8 <=  A OR (NOT B) OR (NOT C) OR (NOT D);
		--M9 <=  A OR (NOT B) OR C OR (NOT D);
		--M10 <=  A OR (NOT B) OR  C OR D;
		--M11 <= (NOT A) OR (NOT B) OR (NOT C) OR (NOT D);
		--M12 <= A OR  B OR (NOT C) OR (NOT D);
		--M14 <= A OR B OR C OR (NOT D);
		
		--f <= M0 AND M2 AND M4 AND M8 AND M9 AND M10 AND M11 AND M12 AND M14;
		
		
	
		m1_f4 <= (NOT A) AND (NOT B) AND (NOT C) AND D;
		m3_f4 <= (NOT A) AND (NOT B) AND C AND D;
		m6_f4 <= (NOT A) AND B AND C AND (NOT D);
		m9_f4 <= A AND (NOT B) AND (NOT C) AND D;
		m11_f4 <= A AND (NOT B) AND C AND D;
		m13_f4 <= A AND B AND (NOT C) AND D;
		m15_f4 <= A AND B AND C AND D;
		
		f4 <= m1_f4 OR m3_f4 OR m6_f4 OR m9_f4 OR m11_f4 OR m13_f4 OR m15_f4;
		
		--M0 <= (NOT A) OR (NOT B) OR (NOT C) OR (NOT D);
		--M2 <= (NOT A) OR (NOT B) OR C OR (NOT D);
		--M4 <= (NOT A) OR B OR (NOT C) OR (NOT D);
		--M5 <= (NOT A) OR B OR (NOT C) OR D;
		--M7 <= (NOT A) OR B OR C OR D;
		--M8 <= A OR (NOT B) OR (NOT C) OR (NOT D);
		--M10 <= A OR (NOT B) OR C OR (NOT D);
		--M12 <= A OR B OR (NOT C) OR (NOT D);
		--M14 <= A OR B OR C OR (NOT D);
		
		--f <= M0 AND M2 AND M4 AND M5 AND M7 AND M8 AND M10 AND M12 AND M14;
		
	END Behavioral;