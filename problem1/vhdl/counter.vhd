library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity counter is
  port(CLK, CLR : in  STD_LOGIC;
        Q : out STD_LOGIC_VECTOR(9 downto 0));

end counter;

architecture archi of counter is
  signal tmp: std_logic_vector(9 downto 0);
   begin
    process (CLK)
      begin
        if (CLK'event and CLK='1') then
          if (CLR='1') then
            tmp <= "0000000000";
          end if;
          if (CLR='0' and tmp="1111101001") then
            tmp <= "1111101001"; --arbitrary constant over 1000 that will lock the state, as its not valid
          end if;
          if (CLR='0' and tmp /="1111101001") then
            tmp <= tmp + 1;
          end if;
        end if;
    end process;
    Q <= tmp;
end archi;

