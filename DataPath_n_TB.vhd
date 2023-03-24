library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;

entity DataPath_n_TB is
  
end DataPath_n_TB;

architecture arch_teste of DataPath_n_TB is
  component DataPath is
	port(
		data_in : in std_logic_vector(7 downto 0);
		clock : in std_logic;
		reset : in std_logic;
		control : in std_logic_vector(28 downto 0);
		data_out : out std_logic_vector(7 downto 0);
		cout,ov,N,Z : out std_logic);
	end component;
	
	function str_to_stdvec(input: string) return std_logic_vector is
	   variable temp: std_logic_vector(input'range);
	begin
	   for i in input'range loop
	     if(input(i) = '1') then
	         temp(i) := '1';
	     elsif(input(i) = '0') then
	         temp(i) := '0'; 
	     
	     end if;
	   end loop;
	   
	   return temp;
	end function str_to_stdvec;
	
	
	function stdvec_to_str(input: std_logic_vector) return string is
	   variable temp: string(input'left + 1 downto 1);
	begin
	   for i in input'reverse_range loop
	     if(input(i) = '1') then
	         temp(i + 1) := '1';
	     elsif(input(i) = '0') then
	         temp(i + 1) := '0'; 
	     
	     end if;
	   end loop;
	   
	   return temp;
	end function stdvec_to_str;
	
	signal data_in : std_logic_vector(7 downto 0);
	signal clock : std_logic;
	signal reset :  std_logic;
	signal control : std_logic_vector(28 downto 0);
	signal data_out :  std_logic_vector(7 downto 0);
	signal cout,ov,N,Z : std_logic;
	signal read_enable : std_logic := '0';

	begin
	  
  	UUT: DataPath port map(data_in, clock, reset, control, data_out, cout, ov, N, Z);
	 reset <= '1', '0' after 100 ps;
	
	clock_process: process
    begin
     clock <= '1', '0' after 5 ns;
     wait for 10 ns;
  end process;
	
	main_process: process
	   file fileType : text;
	   file fileOutType : text;
	   variable inType : std_logic_vector(7 downto 0);
	   variable outType  : std_logic_vector(31 downto 0);
	   variable dataInFile : string(8 downto 1);
	   variable cInFile: string(29 downto 1);
	   variable strOutType : string(32 downto 1);
	   variable inLineType : line;
	   variable outLineType : line;
	begin
	  FILE_OPEN(fileType, "arquivo_entrada.txt", READ_MODE);
	  FILE_OPEN(fileOutType, "arquivo_saida.txt", WRITE_MODE);
	  
	  while not endfile(fileType) loop
	    
	    readline(fileType, inLineType);

	    -- lendo o data in
	    read(inLineType, dataInFile);
	    data_in <= str_to_stdvec(dataInFile);
      
      -- lendo a palavra de controle
	    read(inLinetype, cInFile);
	    control <= str_to_stdvec(cInFile);

	    wait until rising_edge(clock);
		  
		  write(outLineType, stdvec_to_str(data_out));
		  writeline(fileOutType, outLineType);
	  
	  end loop;
	  
	  FILE_CLOSE(fileType);
		FILE_CLOSE(fileOutType);
	 
	  wait;
	 
	end process;	
end arch_teste;