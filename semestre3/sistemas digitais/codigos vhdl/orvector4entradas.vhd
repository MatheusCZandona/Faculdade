LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY vector_or IS
    port (
        a : IN STD_LOGIC_VECTOR(3 downto 0);
        s : OUT STD_LOGIC
    );
END ENTITY vector_or;

ARCHITECTURE comp_primeira OF vector_or IS
BEGIN
    s <= a(3) OR a(2) OR a(1) OR a(0);
END comp_primeira;