LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY full_adder IS
    port (
        a,b, carry_in : IN STD_LOGIC;
        sum : OUT STD_LOGIC;
        carry_out: OUT STD_LOGIC
    );
END ENTITY full_adder;

ARCHITECTURE comp_primeira OF full_adder IS
BEGIN
    PROCESS(a,b, carry_in) BEGIN
        IF(a = '0' AND b = '0' AND carry_in = '0')THEN
            sum <= '0';
            carry_out <= '0';
        elsif (a = '0' and b = '0' and carry_in = '1')then
            sum <= '1';
            carry_out <= '0';
        elsif (a /= b and carry_in = '0') then
            sum <= '1';
            carry_out <= '0';
        elsif (a /= b and carry_in = '1') then
            sum <= '0';
            carry_out <= '1';
        elsif(a = '1' and b = '1' and carry_in = '0')then
            sum <= '0';
            carry_out <= '1';
        elsif(a and b and carry_in) then
            sum <= '1';
            carry_out <= '1';
        end if;
    END PROCESS;
END comp_primeira;