LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity testbench is
port (
		s: in std_logic_vector(1 downto 0);
		i: in std_logic_vector(1 downto 0);
		s1,s2,s3,s4: out std_logic_vector(1 downto 0));
end;

architecture arq of testbench is 
begin 
	process begin
        with s select
			 s1 <= i when "00", "00" when others;
        wait for 100 ns;
		with s select
			 s2 <= i when "01", "00" when others;
		wait for 100 ns;
        with s select
			 s3 <= i when "10", "00" when others;
		wait for 100 ns;
        with s select
			 s4 <= i when "11", "00" when others;
wait;
end process;
end arq;
