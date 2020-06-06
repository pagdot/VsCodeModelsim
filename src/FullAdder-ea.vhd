entity FullAdder is
    port (
        iX      : in    bit;
        iY      : in    bit;
        iCarry  : in    bit;
        oCarry  : out   bit;
        oSum    : out   bit
    );
end FullAdder;

architecture Struct of FullAdder is
    
begin
    
    carry : process
    begin
        oCarry <= (iX and iY) or (iX and iCarry) or (iY and iCarry) after 10 ns;
        wait on iX, iY, iCarry;
    end process;
    
    sum : process
    begin
        oSum <= iX xor iY xor iCarry after 15 ns;
        wait on iX, iY, iCarry;
    end process;    
    
end architecture Struct;