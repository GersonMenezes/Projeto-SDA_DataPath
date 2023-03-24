library IEEE;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

entity ula1 is
	generic(n: integer := 7);
	port(
		a, b: in std_logic_vector(7 downto 0);
		control: in std_logic_vector (1 DOWNTO 0);
		ov, cout: out std_logic;
		saida: out std_logic_vector(7 downto 0)
		);
	end ula1;

ARCHITECTURE arq of ula1 is
	
	signal c: STD_logic_vector (n+1 downto 0);
	signal saida2: std_logic_vector(7 downto 0);
	COMPONENT FA
		PORT(cin, a, b: IN STD_logic;
			  s, cout: OUT STD_logic);
		END COMPONENT;
	
	begin
		
		G1: for i in 0 to n generate
						 soma: FA port map(c(i), a(i), b(i), saida2(i), c(i+1));
						end generate;
					c(0) <= '0';
					cout <= c(n+1);
					ov <= c(n+1) NOR c(n);
					
		with control SELECT
		saida <= a WHEN "00",
					a OR b WHEN "01",
					saida2 WHEN "10",
					a XOR (NOT b) WHEN others;
END arq;
			