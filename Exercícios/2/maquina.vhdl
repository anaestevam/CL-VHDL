library IEEE;
use IEEE.std_logic_1164.all;

entity maquina is
port (
		s: IN std_logic_vector(2 downto 0);
		o: OUT character);
end;

architecture arq of maquina is
	begin
		process(s) is
			begin
				case (s) is
					when "001" =>
						o <= 'A';
					when "010" =>
						o <= 'B';
					when "011" =>
						o <= 'C';
					when "100" =>
						o <= 'D';
					when "101" =>
						o <= 'E';
					when "110" =>
						o <= 'F';
					when "111" =>
						o <= 'G';
					when "000" =>
						o <= 'H';
                        others;
				end case;
		end process;
end arq;
