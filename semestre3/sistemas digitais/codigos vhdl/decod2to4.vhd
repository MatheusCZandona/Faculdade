LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

entity decoder_2to4en is
    port (
        EN : in std_logic; -- Enable
        A : in std_logic_vector (1 downto 0); -- Decoder Input
        Y_L : out std_logic_vector (3 downto 0) -- Decoder Output (active low)
    );
end entity decoder_2to4en;

ARCHITECTURE comp_primeira OF decoder_2to4en IS
BEGIN 
    PROCESS(A, EN)
    BEGIN
        IF(EN = '1') THEN
            CASE A IS
                WHEN "00" => Y_L <= "0001";
                WHEN "01" => Y_L <= "0010";
                WHEN "10" => Y_L <= "0100";
                WHEN "11" => Y_L <= "1000";
                WHEN OTHERS => Y_L <= "0000";
            END CASE;
        ELSE 
            Y_L <= "0000";
        END IF;
    END PROCESS;
END comp_primeira;