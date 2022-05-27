library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtrador is 
	port(a,b: in std_logic_vector(7 downto 0);
		  cout: out std_logic;
		  s: out std_logic_vector(7 downto 0));
end entity;

architecture arq of subtrador is
	component somador_8bits is
		port(a,b: in std_logic_vector(7 downto 0);
		  cout: out std_logic;
		  s: out std_logic_vector(7 downto 0));
	end component;
	
	component inversor is
		Port (a: in  std_logic_vector(7 downto 0);
          s: out  std_logic_vector(7 downto 0));
	end component;
	
	signal invertido, result, complemento: std_logic_vector(7 downto 0);
	signal aux_cout: std_logic;
	
	begin
		a0: inversor port map(b, invertido);
		a1: somador_8bits port map(invertido, "00000001", aux_cout, complemento);
		a5: somador_8bits port map(a,complemento, cout, s);
end arq;
