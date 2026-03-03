LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY primeira IS
    port (
        a,b,c : IN STD_LOGIC;
        
        d, e : OUT STD_LOGIC
    );
END ENTITY primeira;

ARCHITECTURE comp_primeira OF primeira IS
SIGNAL and1, and2, and3, xor1 : STD_LOGIC;
BEGIN 
    and1 <= NOT(a) AND b;
    and2 <= NOT(a) AND c;
    and3 <= c AND b;
    xor1 <= a XOR b;
    d <= and1 OR and2 OR and3;
    e <= xor1 XOR c;

END comp_primeira;