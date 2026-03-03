LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

entity bcd7seg is
    port (
    EN : in std_logic; -- Enable
    D : in std_logic_vector (3 downto 0); -- Encoder Input
    S : out std_logic_vector (6 downto 0) -- Encoder Output
    );
    end entity bcd7seg;

ARCHITECTURE comp_primeira OF bcd7seg IS
BEGIN 
    PROCESS(D, EN)
    BEGIN
        if(EN = '1') THEN
            CASE D is
                WHEN "0000" => S <= "0111111";
                WHEN "0001" => S <= "0000110";
                WHEN "0010" => S <= "1011011";
                WHEN "0011" => S <= "1001111";
                WHEN "0100" => S <= "1100110";
                WHEN "0101" => S <= "1101101";
                WHEN "0110" => S <= "1111101";
                WHEN "0111" => S <= "0000111";
                WHEN "1000" => S <= "1111111";
                WHEN "1001" => S <= "1101111";
                WHEN OTHERS => S <= "0111111";
            END CASE;
        else
            S <= "0000000";
        END IF;
    END PROCESS;
END comp_primeira;