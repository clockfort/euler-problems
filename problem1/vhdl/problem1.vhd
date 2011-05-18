library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.all;

entity problem1 is 
	port (	RST,CLK: in STD_LOGIC;
		sum:	 out STD_LOGIC_VECTOR(17 downto 0)
	);
end problem1;

architecture prob1_struct of problem1 is

component counter is
  port(CLK, CLR : in  STD_LOGIC;
        Q : out STD_LOGIC_VECTOR(9 downto 0)); 
end component;

component validator is 
	port (	A:	 in STD_LOGIC_VECTOR (9 downto 0);
		isValid: out STD_LOGIC
	);
end component;

component summer is
  port( CLK, EN : in  STD_LOGIC;
  	A :  in STD_LOGIC_VECTOR(9 downto 0);
        Q : out STD_LOGIC_VECTOR(17 downto 0));
end component;

signal n: STD_LOGIC_VECTOR(9 downto 0);
signal valid_sig: STD_LOGIC;
begin
	C1: counter port map (CLK, RST, n); --rising edge
	C2: validator port map (n, valid_sig);
	C3: summer port map (CLK, valid_sig, n, sum); --falling edge 
end prob1_struct;




