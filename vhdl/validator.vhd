library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.all;

entity validator is 
	port (	A:	 in STD_LOGIC_VECTOR (9 downto 0);
		isValid: out STD_LOGIC
	);
end validator;

architecture validator_conc of validator is
begin
	isValid <= '1' when (unsigned(A) mod 3)=0 else '1' when (unsigned(A) mod 5)=0 else '0';
end validator_conc;




