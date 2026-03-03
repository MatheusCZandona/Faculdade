LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

entity decoder_3to8 is
    port (
        A : in STD_LOGIC_VECTOR (2 downto 0); -- Decoder Input
        Y : out STD_LOGIC_VECTOR (7 downto 0) -- Decoder Output
    );
end entity decoder_3to8;

ARCHITECTURE comp_primeira OF decoder_3to8 IS
BEGIN 
    PROCESS(A)
    BEGIN
        if(A = "000") THEN
            Y <= "00000001";
        elsif(A = "001") THEN
            Y <= "00000010";
        elsif(A = "010") THEN
            Y <= "00000100";
        elsif(A = "011") THEN
            Y <= "00001000";
        elsif(A = "100") THEN
            Y <= "00010000";
        elsif(A = "101") THEN
            Y <= "00100000";
        elsif(A = "110") THEN
            Y <= "01000000";
        elsif(A = "111") THEN
            Y <= "10000000";
        END IF;
    END PROCESS;
END comp_primeira;