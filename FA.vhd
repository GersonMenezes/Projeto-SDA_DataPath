library ieee;
use ieee.std_logic_1164.all;

entity FA is
port(
	cin, a, b: in std_logic;
	s, cout: OUT STD_logic);
end FA;

architecture arq of FA is

	begin
		 cout <= (a and b) OR (cin and a) OR (cin and b);
		 s <= (a xor b) xor cin;
end arq;