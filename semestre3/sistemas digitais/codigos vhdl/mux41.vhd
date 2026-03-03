LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

entity mux is
    port (
        I : in STD_LOGIC_VECTOR (3 downto 0); -- Input
        SEL : in STD_LOGIC_VECTOR (1 downto 0); -- Select
        Y : OUT STD_LOGIC -- Output
    );
end entity mux;

ARCHITECTURE comp_primeira OF mux IS
BEGIN 
    PROCESS(I, SEL)
    BEGIN
        CASE SEL IS
            WHEN "00" => Y <= I(0);
            WHEN "01" => Y <= I(1);
            WHEN "10" => Y <= I(2);
            WHEN OTHERS => Y <= I(3);
        END CASE;
    END PROCESS;
END comp_primeira;