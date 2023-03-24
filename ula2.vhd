library IEEE;
use ieee.std_logic_1164.all;

entity ula2 is
	port(
		c, d: in std_logic_vector(7 downto 0);
		control: in std_logic_vector (1 DOWNTO 0);
		N, Z: out std_logic;
		saida: out std_logic_vector(7 downto 0)
		);
	end ula2;

ARCHITECTURE arq of ula2 is

	SIGNAL saida_signal: std_logic_vector (7 downto 0);
	
	begin
		with control SELECT
		saida_signal <= d WHEN "00",
					NOT c WHEN "01",
					(d(6 DOWNTO 0) & '0') WHEN "10",
					c AND (NOT d) WHEN others;
		
		Z <= NOT (saida_signal(7) OR saida_signal(6) OR saida_signal(5) OR saida_signal(4) OR saida_signal(3) OR saida_signal(2) OR saida_signal(1) OR saida_signal(0));
		N <= saida_signal(7);
		saida <= saida_signal;
END arq;