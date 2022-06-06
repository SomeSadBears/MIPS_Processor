library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux6 is
    port 
    (
        s0      :   in  std_logic_vector( 5 downto 0 )  ;
        s1      :   in  std_logic_vector( 5 downto 0 )  ;
        sel     :   in  std_logic                       ;
        y       :   out std_logic_vector( 5 downto 0 ) 
    );
end mux6;

architecture Behavioral of mux6 is

begin
    y <= s1 when (sel = '1') else s0;
end Behavioral;
