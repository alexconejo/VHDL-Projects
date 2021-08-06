LIBRARY ieee;
	USE ieee.std_logic_1164.all;
	
	ENTITY L8 IS
	    PORT (Clock, resetn : IN STD_LOGIC;               
	        E: IN STD_LOGIC;                           
	        z : OUT STD_LOGIC_VECTOR(0 TO 3));          
	END L8;
	
	ARCHITECTURE Behavior OF L8 IS
	    TYPE State_Type IS (st1, st2, st3, st4, st5, st6, st7, st8); --Definimos los 8 estados
	    SIGNAL State : State_Type; 
	
	BEGIN
	    PROCESS (Clock, resetn) --Reset asíncrono
	    BEGIN
	        IF resetn = '0' THEN --Reset activo a nivel bajo
	            State <= st1; --Volvemos al estado inicial 
					
	        ELSIF (Clock'EVENT AND Clock = '1') THEN
					IF E = '1' THEN --Señal de habilitación activa a nivel alto
						CASE State IS
							WHEN st1=> State <= st2; --Cambiamos al siguiente estado si la señal está a nivel acto
							WHEN st2=> State <= st3;
							WHEN st3=> State <= st4;
							WHEN st4=> State <= st5;
							WHEN st5=> State <= st6;
							WHEN st6=> State <= st7;
							WHEN st7=> State <= st8;
							WHEN st8=> State <= st1;
						END CASE;
					END IF;
	        END IF;
	    END PROCESS;
		
	    PROCESS (State)
	    BEGIN
	        CASE State IS --La secuencia será [0 4 2 3 5 3 4 2] 
	            WHEN st1 => z <= "0000"; --Estado para el 0
               WHEN st2 => z <= "0100"; --Estado para el 4
               WHEN st3 => z <= "0010"; --Estado para el 2
               WHEN st4 => z <= "0011"; --Estado para el 3
               WHEN st5 => z <= "0101"; --Estado para el 5
               WHEN st6 => z <= "0011"; --Estado para el 3
               WHEN st7 => z <= "0100"; --Estado para el 4
               WHEN st8 => z <= "0010"; --Estado para el 2
	        END CASE;
	    END PROCESS;
END Behavior;