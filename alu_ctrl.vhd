library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_ctrl is
    port
    (
        din     :   in  std_logic_vector ( 5 downto 0 );
        dout    :   out std_logic_vector ( 3 downto 0 )
    );
end alu_ctrl;

architecture Behavioral of alu_ctrl is

begin
    with din select
        dout <= "0010" when "100000",   -- add
                "0010" when "100001",   -- addu
                "0110" when "100010",   -- sub
                "0110" when "100011",   -- subu
                "0000" when "100100",   -- and
                "0001" when "100101",   -- or
                "0011" when "100110",   -- xor
                "1100" when "100111",   -- nor
                "0100" when "101010",   -- slt
                "0100" when "101011",   -- sltu
                "1111" when others  ;   -- default
end Behavioral;
