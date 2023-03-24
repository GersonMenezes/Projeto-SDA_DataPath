library IEEE;
use ieee.std_logic_1164.all;

entity registrador is
	port(
		a: in std_logic_vector(7 downto 0);
		control: in std_logic;
		reset, clock: in std_logic;
		saida: out std_logic_vector(7 downto 0)
		);
	end registrador;
	
ARCHITECTURE arq of registrador is
	
	begin
	
		process(reset, clock)
		
		begin
			if reset = '1' THEN 
					saida <= "00000000";
			elsif clock'event and clock = '1' then
				if control = '1' then
					saida <= a;
				end if;
			end if;
		end process;
	
END arq;