LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY primeira IS
    port (
        a,b : IN STD_LOGIC;
        s : OUT STD_LOGIC --nao vai ; no ultimo componente
    );
END ENTITY primeira;

ARCHITECTURE comp_primeira OF primeira IS
BEGIN 
    s <= a AND b;
END comp_primeira;

