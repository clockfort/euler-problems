library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity summer is
  port( CLK, EN : in  STD_LOGIC;
  	A :  in STD_LOGIC_VECTOR(9 downto 0);
        Q : out STD_LOGIC_VECTOR(17 downto 0));
end summer;

architecture archi of summer is
  signal tmp: std_logic_vector(17 downto 0);
   begin
    process (CLK)
      begin
        if (CLK'event and CLK='0') then
          if (EN='1') then
            tmp <= tmp + A;
          else
            tmp <= tmp;
          end if;
        end if;
    end process;
    Q <= tmp;
end archi;

