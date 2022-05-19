-- Parte do design no edaplayground
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

Entity Compuerta is
port (
		a: in std_logic;
                        b: in std_logic;
		s: out std_logic);
end Compuerta;

architecture arq of Compuerta is

begin
	
 s <= a NAND b;

end arq;
