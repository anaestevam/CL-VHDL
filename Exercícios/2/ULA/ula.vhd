library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ula is 
     port(a,b: in std_logic_vector(7 downto 0);
          -- 000 A+B
          -- 001 A-B
          -- 010 A + 1
          -- 011 A
          -- 100 A and B
          -- 101 A or B
          -- 110 A xor B
          -- 111 not B
          op: in std_logic_vector(2 downto 0);
          s: out std_logic_vector(7 downto 0));
end;
architecture arq of ula is
    component somador_8bits is
    port(a,b: in std_logic_vector(7 downto 0);
            cout: out std_logic;
            s: out std_logic_vector(7 downto 0));
    end component;
	 --para o complemento
    component inversor is
    port (a: in  STD_LOGIC_VECTOR(7 downto 0);
                       s: out  STD_LOGIC_VECTOR(7 downto 0));
    end component;
signal invertido1,complemento1: std_logic_vector(7 downto 0);
signal aux_cout: std_logic_vector(4 downto 0);
signal a_mais_b, a_menos_b, a_mais_1, a_menos_1: std_logic_vector(7 downto 0);

begin
     a0: inversor port map(b, invertido1);
     -- complemento de 2 de b
     a1: somador_8bits port map(invertido1, "00000001", aux_cout(0), complemento1); 
     a2: somador_8bits port map(a, complemento1, aux_cout(1), a_menos_b); -- a - b
     a3: somador_8bits port map(a,b,aux_cout(2),a_mais_b); -- a + b
     a4: somador_8bits port map(a,"00000001",aux_cout(3),a_mais_1); -- a + 1
     process(a,b,op) is
    begin
        case(op) is
            when "000" =>
                s <= a_mais_b;
            when "001" =>
                s <= a_menos_b;
            when "010" =>
                s <= a_mais_1;
            when "011" =>
                s <= a;
            when "100" =>
                s <= a and b;
            when "101" =>
                s <= a or b;
            when "110" =>
                s <= a xor b;
            when "111" =>
                s <= not b;
        end case;
     end process;
end arq;
