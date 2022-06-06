library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_m is
    port 
    ( 
        a   :   in  std_logic   ;
        b   :   in  std_logic   ;
        s   :   in  std_logic   ;
        y   :   out std_logic   
    );
end and_m;

architecture Behavioral of and_m is

begin
    y   <=  ( a and ( not b ) ) when ( s = '1' ) else ( a and b );
end Behavioral;
