LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY halfAdder IS
    port (
        a,b : IN STD_LOGIC;
        sum : OUT STD_LOGIC;
        carry: OUT STD_LOGIC
    );
END ENTITY halfAdder;

ARCHITECTURE comp_primeira OF halfAdder IS
BEGIN
    PROCESS(a,b) BEGIN
    IF (a = '1' AND b = '1') THEN
        sum <= '0';
        carry <= '1';
    ELSIF(a < b OR b < a) THEN
        sum <= '1';
        carry <= '0';
    ELSE
        sum <= '0';
        carry <= '0';
    END IF;
    END PROCESS;
END comp_primeira;