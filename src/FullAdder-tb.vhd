entity workbench is
end workbench;

architecture Stimulate of workbench is
    signal X    : bit;
    signal Y    : bit;
    signal cIn  : bit;
    signal cOut : bit;
    signal sum  : bit;
begin
    uut: entity work.FullAdder( Struct )
    port map (
        iX      => X,
        iY      => Y,
        iCarry  => cIn,
        oCarry  => cOut,
        oSum    => sum
    );
    
    Stimul: process
    begin
        X <=    '0',
                '1' after 400 ns;
        Y <=    '0',
                '1' after 200 ns,
                '0' after 400 ns,
                '1' after 600 ns;
        cIn <=  '0',
                '1' after 100 ns,
                '0' after 200 ns,
                '1' after 300 ns,
                '0' after 400 ns,
                '1' after 500 ns,
                '0' after 600 ns,
                '1' after 700 ns;
        wait;
    end process;
end architecture Stimulate;