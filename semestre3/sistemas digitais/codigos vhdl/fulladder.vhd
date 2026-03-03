LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY somador4bits IS
    PORT (
        A, B : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        Cin  : IN  STD_LOGIC;
        S    : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
END ENTITY somador4bits;

ARCHITECTURE estrutural OF somador4bits IS
    COMPONENT fullAdder IS
        PORT (
            f_a, f_b, f_ci : IN STD_LOGIC;
            f_sum          : OUT STD_LOGIC;
            f_carry        : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL C : STD_LOGIC_VECTOR(4 DOWNTO 0);

BEGIN
    C(0) <= Cin;

    FA0 : fullAdder PORT MAP(f_a => A(0), f_b => B(0), f_ci => C(0), f_sum => S(0), f_carry => C(1));
    FA1 : fullAdder PORT MAP(f_a => A(1), f_b => B(1), f_ci => C(1), f_sum => S(1), f_carry => C(2));
    FA2 : fullAdder PORT MAP(f_a => A(2), f_b => B(2), f_ci => C(2), f_sum => S(2), f_carry => C(3));
    FA3 : fullAdder PORT MAP(f_a => A(3), f_b => B(3), f_ci => C(3), f_sum => S(3), f_carry => C(4));

    S(4) <= C(4);

END ARCHITECTURE estrutural;

--========================================
-- HALF ADDER
--========================================

LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY halfAdder IS
    PORT (
        a, b : IN STD_LOGIC;
        sum  : OUT STD_LOGIC;
        carry: OUT STD_LOGIC
    );
END ENTITY halfAdder;

ARCHITECTURE comp_primeira OF halfAdder IS
BEGIN
    PROCESS(a, b)
    BEGIN
        IF (a = '1' AND b = '1') THEN
            sum <= '0';
            carry <= '1';
        ELSIF (a /= b) THEN
            sum <= '1';
            carry <= '0';
        ELSE
            sum <= '0';
            carry <= '0';
        END IF;
    END PROCESS;
END ARCHITECTURE comp_primeira;

--========================================
-- FULL ADDER
--========================================

LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY fullAdder IS
    PORT (
        f_a, f_b, f_ci : IN STD_LOGIC;
        f_sum          : OUT STD_LOGIC;
        f_carry        : OUT STD_LOGIC
    );
END ENTITY fullAdder;

ARCHITECTURE compFullAdd OF fullAdder IS
    COMPONENT halfAdder IS
        PORT(
            a, b   : IN STD_LOGIC;
            sum    : OUT STD_LOGIC;
            carry  : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL s1, c1, c2 : STD_LOGIC;

BEGIN
    ha1 : halfAdder
        PORT MAP(
            a => f_a,
            b => f_b,
            sum => s1,
            carry => c1
        );

    ha2 : halfAdder
        PORT MAP(
            a => s1,
            b => f_ci,
            sum => f_sum,
            carry => c2
        );

    f_carry <= c1 OR c2;

END ARCHITECTURE compFullAdd;