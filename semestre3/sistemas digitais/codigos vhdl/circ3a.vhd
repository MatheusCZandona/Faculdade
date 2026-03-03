LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY primeira IS
    port (
        a,b,c : IN STD_LOGIC;
        
        d, e, f : OUT STD_LOGIC
    );
END ENTITY primeira;

ARCHITECTURE comp_primeira OF primeira IS
SIGNAL nor1, nand1, and2 : STD_LOGIC;
BEGIN 
    nor1 <= a NOR NOT(b);
    nand1 <= NOT(b) NAND NOT(c);
    and2 <= NOT(b) AND NOT(c);
    d <= nor1 XOR NOT(nand1);
    e <= nand1 OR NOT(b);
    f <= and2 XOR nand1;

END comp_primeira;