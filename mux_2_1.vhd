library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1 is
	port(
		a, b: in std_logic_vector (7 downto 0);
		sel: in std_logic;
		saida: out std_logic_vector (7 downto 0)
	);
	end mux_2_1;

ARCHITECTURE arq of mux_2_1 is

	begin
	
	 saida <= a when (sel = '0')
				else b;
end arq;