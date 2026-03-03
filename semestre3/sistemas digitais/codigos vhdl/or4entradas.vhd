LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY halfAdder IS
    port (
        a,b, c, d : IN STD_LOGIC;
        s : OUT STD_LOGIC
    );
END ENTITY halfAdder;

ARCHITECTURE comp_primeira OF halfAdder IS
BEGIN
    PROCESS(a,b, c, d) BEGIN
    IF (a = '1' OR b = '1' OR c = '1' OR d = '1') THEN
        s  <= '1';
    ELSE
        s <= '0';
    END IF;
    END PROCESS;
END comp_primeira;