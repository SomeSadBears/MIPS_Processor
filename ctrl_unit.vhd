library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ctrl_unit is
    port
    (
        opcode  :   in  std_logic_vector ( 5 downto 0 ) ;
        ALUOp   :   out std_logic_vector ( 5 downto 0 ) ;
        brnchsel:   out std_logic                       ;
        ALUctrls:   out std_logic                       ;
        regDst  :   out std_logic                       ;
        branch  :   out std_logic                       ;
        memRead :   out std_logic                       ;
        memtoReg:   out std_logic                       ;
        memWrite:   out std_logic                       ;
        ALUSrc  :   out std_logic                       ;
        regWrite:   out std_logic                       
    );
end ctrl_unit;

architecture Behavioral of ctrl_unit is
    signal temp :       std_logic_vector ( 14 downto 0 ) ;
begin
    with opcode select
        temp <= "000000001000001" when "000000" ,   -- opcode = 0
                "100000010000011" when "001000" ,   -- addi
                "100000010000011" when "001001" ,   -- addiu
                "100100010000011" when "001100" ,   -- andi
                "100101010000011" when "001101" ,   -- ori
                "100000010011011" when "100011" ,   -- lw
                "100000010000110" when "101011" ,   -- sw
                "100010000100000" when "000100" ,   -- beq
                "100010100100000" when "000101" ,   -- bne
                "101010010000011" when "001010" ,   -- slti
                "101010010000011" when "001011" ,   -- sltiu
                "000000001000001" when others   ; 
    
    ALUOp   <= temp( 14 downto 9 );
    
    brnchsel<= temp(8);
    ALUctrls<= temp(7);
    regDst  <= temp(6);
    branch  <= temp(5);
    memRead <= temp(4);
    memtoReg<= temp(3);
    memWrite<= temp(2);
    ALUSrc  <= temp(1);
    regWrite<= temp(0);
                        
end Behavioral;
