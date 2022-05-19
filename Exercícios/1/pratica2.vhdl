library ieee;
use ieee.std_logic_1164.all;

entity pratica2 is 
	port(a: in bit_vector(0 to 3);
	     b: in bit_vector(3 downto 0);
       c: out bit_vector(7 downto 0));
end;

architecture arq of pratica2 is
	begin
		c(0) <= b(0);
		c(1) <= b(1);
		c(2) <= b(2);
		c(3) <= b(3);
		c(4) <= a(0);
		c(5) <= a(1);
		c(6) <= a(2);
		c(7) <= a(3);
end arq;
