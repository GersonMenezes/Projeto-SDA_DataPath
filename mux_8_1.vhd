library ieee;
use ieee.std_logic_1164.all;

entity mux_8_1 is
	port(
		a, b, c, d, e, f, g, h: in std_logic_vector (7 downto 0);
		sel: in std_logic_vector (2 downto 0);
		s: out std_logic_vector (7 downto 0)
	);
	end mux_8_1;

architecture arq of mux_8_1 is

	begin
	 with sel select
	 s <= a when "000",
	  b when "001",
	  c when "010",
	  d when "011",
	  e when "100",
	  f when "101",
	  g when "111",
	  h when others;
		
end arq;