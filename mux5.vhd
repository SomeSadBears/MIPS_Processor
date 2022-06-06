library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux5 is
    port 
    (
        s0      :   in  std_logic_vector( 4 downto 0 )  ;
        s1      :   in  std_logic_vector( 4 downto 0 )  ;
        sel     :   in  std_logic                       ;
        y       :   out std_logic_vector( 4 downto 0 ) 
    );
end mux5;

architecture Behavioral of mux5 is

begin
    y <= s1 when (sel = '1') else s0;
end Behavioral;
