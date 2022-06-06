library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux32not is
    port 
    (
        s0      :   in  std_logic                       ;
        sel     :   in  std_logic                       ;
        y       :   out std_logic
    );
end mux32not;

architecture Behavioral of mux32not is

begin
    y <= (not s0) when (sel = '1') else s0;
end Behavioral;
