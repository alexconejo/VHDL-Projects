LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY T6 IS
PORT ( 	I :        IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			E :        IN STD_LOGIC;
			S :        IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Z :        OUT STD_LOGIC) ;
END T6;

ARCHITECTURE Behavior OF T6 IS
BEGIN
	PROCESS (I, S, E)
	BEGIN
		IF E='0' THEN Z<='0';
        ELSIF E='1' THEN 
            CASE S IS 
                WHEN "000" => z <=I(0);
                WHEN "001" => z <=I(1);
                WHEN "010" => z <=I(2);
                WHEN "011" => z <=I(3);
                WHEN "100" => z <=I(4);
                WHEN "101" => z <=I(5);
                WHEN "110" => z <=I(6);
                WHEN "111" => z <=I(7);
                WHEN others => z <='0';
            END CASE;
        END IF;
	  END PROCESS;
		
END Behavior ;