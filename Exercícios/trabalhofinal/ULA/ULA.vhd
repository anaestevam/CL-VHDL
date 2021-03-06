library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ULA is 
	port(a,b: inout std_logic_vector(15 downto 0);
		  -- 000 A+B
		  -- 001 A-B
		  -- 010 A << 1
		  -- 011 A >> 1
		  -- 100 A and B
		  -- 101 A or B
		  -- 110 A xor B
		  -- 111 not B
		  op: in std_logic_vector(2 downto 0);
		  s: inout std_logic_vector(15 downto 0);
		  sd1, sd2, sd3, sd4 : out std_logic_vector(6 downto 0)
   );
end;

architecture arq of ULA is
	component somador_8bits is
		port(a,b: in std_logic_vector(15 downto 0);
			  cout: out std_logic;
			  s: out std_logic_vector(15 downto 0));
	end component;
	
	component inversor is
		Port (a: in  STD_LOGIC_VECTOR(15 downto 0);
            s: out  STD_LOGIC_VECTOR(15 downto 0));
	end component;
	
	component display7segmentos is
		port(data: in std_logic_vector(3 downto 0); 
		  saida: out std_logic_vector(6 downto 0)
		);
	end component;
	
	signal invertido1, invertido2, result, complemento1, complemento2: std_logic_vector(15 downto 0);
	signal aux_cout: std_logic_vector(4 downto 0);
	signal dis1, dis2, dis3, dis4 : std_logic_vector(6 downto 0);
	signal a_mais_b, a_menos_b, a_mais_1, a_menos_1: std_logic_vector(15 downto 0);

	begin
		a <= "0100001100100001";
		b <= "0000000000000001";
		
		a0: inversor port map(b, invertido1);
		a1: somador_8bits port map(invertido1, "0000000000000001", aux_cout(0), complemento1); -- complemento de 2 de b
		a2: somador_8bits port map(a, complemento1, aux_cout(1), a_menos_b); -- a - b
		a3: somador_8bits port map(a,b,aux_cout(2),a_mais_b); -- a + b
		a4: somador_8bits port map(a,"0000000000000001",aux_cout(3),a_mais_1); -- a + 1
		process(a,b,op) is
			begin
				case(op) is
					when "000" =>
						s <= a_mais_b;
					when "001" =>
						s <= a_menos_b;
					when "010" => -- desloca esquerda
						s <= a(14 downto 0) & '0'; 
					when "011" => -- desloca direita
						s <= '0' & a(15 downto 1);
					when "100" =>
						s <= a and b;
					when "101" =>
						s <= a or b;
					when "110" =>
						s <= a xor b;
					when "111" =>
						s <= not a;
				end case;
		end process;
		
		a5: display7segmentos port map(s(3 downto 0), dis1);
		a6: display7segmentos port map(s(7 downto 4), dis2);
		a7: display7segmentos port map(s(11 downto 8), dis3);
		a8: display7segmentos port map(s(15 downto 12), dis4);
		
		sd1 <= dis1;
		sd2 <= dis2;
		sd3 <= dis3;
		sd4 <= dis4;
		
end arq;
