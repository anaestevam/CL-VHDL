library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somador_8bits is 
	port(a,b: in std_logic_vector(7 downto 0);
		  cout: out std_logic;
		  s: out std_logic_vector(7 downto 0));
end;

architecture arq of somador_8bits is
	component meio_somador is
		port(a,b: in std_logic;
		  s, cout: out std_logic);
	end component;
	
	component somador is
		port(a,b,cin: in std_logic;
		  s, cout: out std_logic);
	end component;
	signal c1,c2,c3,c4,c5,c6,c7: std_logic;
	
	begin
		i0: meio_somador port map (a(0), b(0), s(0), c1);
		i1: somador port map (a(1),b(1),c1,s(1),c2);
		i2: somador port map (a(2),b(2),c2,s(2),c3);
		i3: somador port map (a(3),b(3),c3,s(3),c4);
    		i4: somador port map (a(4),b(4),c4,s(4),c5);
    		i5: somador port map (a(5),b(5),c5,s(5),c6);
    		i6: somador port map (a(6),b(6),c6,s(6),c7);
   		i7: somador port map (a(7),b(7),c7,s(7),cout);
end arq;
