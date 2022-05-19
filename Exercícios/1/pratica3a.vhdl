-- code to roll no edaplayground
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
Entity testbench is
--
end testbench;

architecture arq of testbench is

component Compuerta is
port (
		a: in std_logic;
                          b: in std_logic;
		s: out std_logic);
end component;

signal a_s, b_s: std_logic := '0';

signal s_s: std_logic;

begin

UO: Compuerta Port map(

    a => a_s,
    b => b_s,
    s => s_s);
    
process begin 

    a_s <= '0';
    b_s <= '0';
    wait for 100 ns;
    
    a_s <= '1';
    b_s <= '0';
    wait for 100 ns;
    
    a_s <= '0';
    b_s <= '1';
    wait for 100 ns;
    
    a_s <= '1';
    b_s <= '1';
    wait for 100 ns;
wait;
end process;
end arq;
