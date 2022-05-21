library ieee;
use ieee.std_logic_1164.all;

entity testbench is
port (
		s: in std_logic_vector(1 downto 0);
		i: in std_logic_vector(1 downto 0);
		s1,s2,s3,s4: out std_logic_vector(1 downto 0));
end;

architecture arq of testbench is
begin
process	begin 
		s1 <= i when s="00" else "00";
        wait for 100 ns;
		s2 <= i when s="01" else "00";
        wait for 100 ns;
		s3 <= i when s="10" else "00";
        wait for 100 ns;
		s4 <= i when s="11" else "00";
        wait for 100 ns;
        
wait;
end process;
end arq;
