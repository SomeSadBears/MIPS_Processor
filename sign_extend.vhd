library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sign_extend is
    port 
    ( 
        din     :   in  std_logic_vector( 15 downto 0 );
        dout    :   out std_logic_vector( 31 downto 0 )
    );
end sign_extend;

architecture Behavioral of sign_extend is

begin
    dout( 15 downto 0 ) <= din;
    dout( 31 downto 16) <= (others => din(15));
end Behavioral;
