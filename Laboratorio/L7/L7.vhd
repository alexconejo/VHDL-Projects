LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY L7 IS
    PORT (Clock, Resetn, E :IN STD_LOGIC;
          CoutAsc:          OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
          CoutDec:          OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			 Cout:             OUT STD_LOGIC);
END L7;

ARCHITECTURE Behavior OF L7 IS 
    SIGNAL CountAsc:  UNSIGNED (3 DOWNTO 0);
     SIGNAL selector: INTEGER RANGE 0 TO 7;
	  sIGNAL Max:      INTEGER RANGE 0 TO 6;
BEGIN 
    PROCESS (Clock)
    BEGIN
		IF (Clock'EVENT AND Clock = '1') THEN --Se producen los cambios cuando la señal de reloj esta activa
		
        IF Resetn ='0' THEN --Reset síncrono activo a nivel bajo
            CountAsc <= "0000";
				CoutDec <= "00000001";
				Cout <= '0';
				Max <= 0;
				selector <= 0;
				
        ELSE 
				
            IF E = '1' THEN  --Enable activo a nivel alto
					
					case selector is 
					 when 0 => CoutDec <= "00000001"; --Estado 1
					 when 1 => CoutDec <= "00000010"; --Estado 2
					 when 2 => CoutDec <= "00000100"; --Estado 3
					 when 3 => CoutDec <= "00001000"; --Estado 4
					 when 4 => CoutDec <= "00010000"; --Estado 5
					 when 5 => CoutDec <= "00100000"; --Estado 6
					 when 6 => CoutDec <= "01000000"; --Estado 7
					 when others => CoutDec <="01000000";
					end case ;
					selector <= selector+1; --Aumentamos el selector

					
					IF NOT (MAX = 7) THEN --Comprobamos que no ha llegado al maximo
						IF NOT (MAX = 0) THEN --Comprobamos que en la primera iteración empieza en el estado inicial: 0
							CountAsc <= CountAsc + 1;
						END IF;
						Max <= Max + 1;
					END IF;
					
					IF CountAsc = 6 AND selector=6 THEN --Cuando terminan ambos contadores se pone a 1 la salida Cout
						Cout <= '1';
						selector <= 0; --Reseteamos el selector
					END IF;
				
            ELSE 
					CountAsc <= CountAsc;
            END IF;
				
        END IF;
		END IF;
    END PROCESS;
	 
    CoutAsc <= STD_LOGIC_VECTOR(CountAsc(3 DOWNTO 0)); -- Convertimos a std_logic_vector la salida del contador ascendente
	 

END Behavior;