library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pc_add is
    port
    (
        din     :   in  std_logic_vector ( 31 downto 0 );
        dout    :   out std_logic_vector ( 31 downto 0 )
    );
end pc_add;

architecture Behavioral of pc_add is
begin
    dout <= din + x"0000_0004";
end Behavioral;
