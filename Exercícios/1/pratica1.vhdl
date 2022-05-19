library ieee;
use ieee.std_logic_1164.all;

entity pratica1 is 
 port(
        a, b: in std_logic_vector (0 to 3);
        s, s1 :out std_logic);
end;

architecture e1 of pratica1 is    
    signal s1 : bit_vector(3 downto 00);
begin
  s <= s1;
end e1;
