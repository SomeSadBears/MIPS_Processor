library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_left_2 is
    port 
    (
        din     :   in  std_logic_vector( 31 downto 0 );
        dout    :   out std_logic_vector( 31 downto 0 ) 
    );
end shift_left_2;

architecture Behavioral of shift_left_2 is
    signal temp :       std_logic_vector( 31 downto 0 ) := (others => '0');
begin
    dout( 31 downto 2 ) <= din( 29 downto 0 );
    --dout( 1  downto 0 ) <= din( 31 downto 30); 
    dout( 1 downto 0 ) <= (others => '0' );
end Behavioral;