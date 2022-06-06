library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder is
    port
    (
        a       :   in  std_logic_vector ( 31 downto 0 );
        b       :   in  std_logic_vector ( 31 downto 0 );
        s       :   out std_logic_vector ( 31 downto 0 )
    );
end adder;

architecture Behavioral of adder is
begin
    s <= a + b;
end Behavioral;
