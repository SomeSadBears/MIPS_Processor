library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pc is
    port
    (
        clk     :   in  std_logic                       ;
        rst     :   in  std_logic                       ;
        din     :   in  std_logic_vector ( 31 downto 0 );
        dout    :   out std_logic_vector ( 31 downto 0 )
    );
end pc;

architecture Behavioral of pc is

begin
    
    process ( clk )
    begin
        if(  clk'event and clk = '1' ) then
            if( rst = '1' ) then
                dout <= ( others => '0' );
            else
                dout <= din;
            end if;
        end if;
    end process;
end Behavioral;
