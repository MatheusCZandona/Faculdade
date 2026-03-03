LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY blackJack IS
    PORT (
       
        SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
        HEX3: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX1: OUT STD_LOGIC_VECTOR(6 DOWNTO 0); 
        HEX0: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        LEDG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE BlackJack OF blackJack IS

    COMPONENT cards IS
        PORT (
            clk : IN STD_LOGIC;
            start : IN STD_LOGIC;
            card_rec : IN STD_LOGIC;
            random_number : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;

    TYPE Tipo_estado IS (
        I, SP_rec, SP_wait, SP_recieve, SP_rec1, SP_wait1, SP_recieve1, S_decision,
        SD_rec, SD_wait, SD_recieve, SD_rec1, SD_wait1, SD_recieve1, SD_result, 
        S_win, S_lose, S_draw
    );

    SIGNAL state : Tipo_estado := I;
    SIGNAL P_sum, D_sum : INTEGER RANGE 0 TO 31 := 0;
    SIGNAL P_cont, D_cont : INTEGER RANGE 0 TO 10 := 0;
    SIGNAL card_val : INTEGER RANGE 0 TO 15 := 0;
    SIGNAL card_from_lfsr : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL chosen_card : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL rec_card : STD_LOGIC := '0';
    SIGNAL card_val_display : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111111";
    SIGNAL P_ace, D_ace : BOOLEAN := FALSE;

    -- Função para converter número para display de 7 segmentos (ativo baixo)
    FUNCTION to_7seg(num: INTEGER) RETURN STD_LOGIC_VECTOR IS
    BEGIN
        CASE num IS
            WHEN 0 => RETURN "1000000";  -- 0
            WHEN 1 => RETURN "1111001";  -- 1
            WHEN 2 => RETURN "0100100";  -- 2
            WHEN 3 => RETURN "0110000";  -- 3
            WHEN 4 => RETURN "0011001";  -- 4
            WHEN 5 => RETURN "0010010";  -- 5
            WHEN 6 => RETURN "0000010";  -- 6
            WHEN 7 => RETURN "1111000";  -- 7
            WHEN 8 => RETURN "0000000";  -- 8
            WHEN 9 => RETURN "0011000";  -- 9
            WHEN 10 => RETURN "0001000"; -- A (10)
            WHEN 11 => RETURN "0000011"; -- b (11)
            WHEN 12 => RETURN "1000110"; -- C (12)
            WHEN 13 => RETURN "0100001"; -- d (13)
            WHEN 14 => RETURN "0000110"; -- E (14)
            WHEN 15 => RETURN "0001110"; -- F (15)
            WHEN 16 => RETURN "0001100"; -- P (Player)
            WHEN 17 => RETURN "0100001"; -- d (Dealer)
            WHEN 18 => RETURN "0010101"; -- W (Win)
            WHEN 19 => RETURN "1000111"; -- L (Lose)
            WHEN 20 => RETURN "0100011"; -- = (Tie)
            WHEN OTHERS => RETURN "1111111";
        END CASE;
    END FUNCTION;

    -- Funções para obter dígitos
    FUNCTION get_first_digit(num: INTEGER) RETURN INTEGER IS
    BEGIN
        IF num < 10 THEN
            RETURN 0;
        ELSE
            RETURN num / 10;
        END IF;
    END FUNCTION;

    FUNCTION get_second_digit(num: INTEGER) RETURN INTEGER IS
    BEGIN
        RETURN num MOD 10;
    END FUNCTION;

BEGIN

    card_gen: cards
    PORT MAP (
        clk => KEY(1),
        start => KEY(0),
        card_rec => rec_card,
        random_number => card_from_lfsr
    );
     
    chosen_card <= card_from_lfsr WHEN SW(5) = '1' ELSE SW(3 DOWNTO 0);
    
    HEX3 <= card_val_display;
    
    -- Máquina de estados principal
    PROCESS(KEY(0), KEY(1))
        VARIABLE temp_card_val : INTEGER RANGE 0 TO 15;
    BEGIN
        temp_card_val := to_integer(unsigned(chosen_card));
        
        -- Ajuste do valor da carta para o jogo
        IF temp_card_val >= 10 AND SW(5) = '1' THEN
            temp_card_val := 10;
        END IF;

        IF KEY(0) = '0' THEN
            state <= I;
            P_sum <= 0;
            D_sum <= 0;
            P_cont <= 0;
            D_cont <= 0;
            P_ace <= FALSE;
            D_ace <= FALSE;
        ELSIF (KEY(1)'EVENT AND KEY(1) = '0') THEN
            CASE state IS
                WHEN I => 
                    IF KEY(0) = '1' THEN
                        card_val_display <= "1111111";
                        state <= SP_rec; 
                    END IF;
                    
                WHEN SP_rec => 
                    rec_card <= '1';
                    state <= SP_wait;

                WHEN SP_wait => 
                    rec_card <= '0';
                    P_cont <= P_cont + 1;
                    state <= SP_recieve;

                WHEN SP_recieve => 
                    card_val_display <= to_7seg(temp_card_val);
                    IF temp_card_val = 1 THEN
                        P_ace <= TRUE;
                        temp_card_val := 11;
                    END IF;
                    P_sum <= P_sum + temp_card_val;
                    state <= SP_rec1;

                WHEN SP_rec1 =>
                    rec_card <= '1';
                    state <= SP_wait1;

                WHEN SP_wait1 => 
                    rec_card <= '0';
                    P_cont <= P_cont + 1;
                    state <= SP_recieve1;

                WHEN SP_recieve1 => 
                    card_val_display <= to_7seg(temp_card_val);
                    IF temp_card_val = 1 AND P_sum + 11 <= 21 THEN
                        temp_card_val := 11;
                        P_ace <= TRUE;
                    END IF;

                    P_sum <= P_sum + temp_card_val;

                    IF (P_sum + temp_card_val) > 21 AND P_ace THEN
                        P_sum <= (P_sum + temp_card_val) - 10;
                        P_ace <= FALSE;
                    END IF;
                    state <= S_decision;

                WHEN S_decision =>
                    IF P_sum = 21 AND P_cont = 2 THEN
                        state <= S_win;
                    ELSIF P_sum > 21 THEN
                        state <= S_lose;
                    ELSIF SW(9) = '1' THEN
                        state <= SP_rec1;
                    ELSIF SW(8) = '1' THEN
                        state <= SD_rec;
                    ELSE
                        state <= S_decision;
                    END IF;

                WHEN SD_rec => 
                    card_val_display <= "1111111";
                    rec_card <= '1';
                    state <= SD_wait;

                WHEN SD_wait => 
                    rec_card <= '0';
                    D_cont <= D_cont + 1;
                    state <= SD_recieve;

                WHEN SD_recieve => 
                    card_val_display <= to_7seg(temp_card_val);
                    IF temp_card_val = 1 THEN
                        D_ace <= TRUE;
                        temp_card_val := 11;
                    END IF;
                    D_sum <= D_sum + temp_card_val;
                    D_cont <= D_cont + 1;
                    state <= SD_rec1;

                WHEN SD_rec1 => 
                    rec_card <= '1';
                    
                    state <= SD_wait1;

                WHEN SD_wait1 => 
                    rec_card <= '0';
                    D_cont <= D_cont + 1;
                    state <= SD_recieve1;

                WHEN SD_recieve1 => 
                    card_val_display <= to_7seg(temp_card_val);
                    IF temp_card_val = 1  AND D_sum + 11 <= 21 THEN
                        temp_card_val := 11;
                        D_ace <= TRUE;
                    END IF;

                    D_sum <= D_sum + temp_card_val;

                    IF (D_sum + temp_card_val) > 21 AND D_ace THEN
                        D_sum <= (D_sum + temp_card_val) - 10;
                        D_ace <= FALSE;
                    END IF;
                    state <= SD_result;

                WHEN SD_result =>
                    IF D_sum = 21 AND D_cont = 2 THEN
                        state <= S_lose;
                    ELSIF D_sum > 21 THEN
                        state <= S_win;
                    ELSIF D_sum <= 17 THEN
                        state <= SD_rec1;
                    ELSIF P_sum > D_sum THEN
                        state <= S_win;
                    ELSIF P_sum < D_sum THEN
                        state <= S_lose;
                    ELSE
                        state <= S_draw;
                    END IF;

                WHEN S_win | S_lose | S_draw => 
                    card_val_display <= "1111111";
                    IF KEY(0) = '0' THEN 
                        state <= I; 
                    END IF;
                    
                WHEN OTHERS => state <= I;
            END CASE;
        END IF;
    END PROCESS;

    PROCESS(state, P_sum, D_sum)
        VARIABLE P_sum_digit1, P_sum_digit2 : INTEGER;
        VARIABLE D_sum_digit1, D_sum_digit2 : INTEGER;
    BEGIN
        LEDR <= (OTHERS => '0');
        LEDG <= (OTHERS => '0');
        P_sum_digit1 := get_first_digit(P_sum);
        P_sum_digit2 := get_second_digit(P_sum);
        D_sum_digit1 := get_first_digit(D_sum);
        D_sum_digit2 := get_second_digit(D_sum);

        CASE state IS
            WHEN I =>
                HEX2 <= "1111111";
                HEX1 <= "1111111";
                HEX0 <= "1111111";

            -- Estados do jogador
            WHEN SP_rec | SP_wait | SP_rec1 | SP_wait1 =>
                HEX2 <= to_7seg(16);  -- 'P' (Player)
                HEX1 <= to_7seg(P_sum_digit1);
                HEX0 <= to_7seg(P_sum_digit2);
                
            WHEN SP_recieve | SP_recieve1 =>
                HEX2 <= to_7seg(16);
                HEX1 <= to_7seg(P_sum_digit1);
                HEX0 <= to_7seg(P_sum_digit2);
                
            WHEN S_decision =>
                HEX2 <= to_7seg(16);
                HEX1 <= to_7seg(P_sum_digit1);
                HEX0 <= to_7seg(P_sum_digit2);

            -- Estados do dealer
            WHEN SD_rec | SD_wait | SD_rec1 | SD_wait1 =>
                HEX2 <= to_7seg(17); 
                HEX1 <= to_7seg(D_sum_digit1);
                HEX0 <= to_7seg(D_sum_digit2);
                
            WHEN SD_recieve | SD_recieve1 =>
                HEX2 <= to_7seg(17);
                HEX1 <= to_7seg(D_sum_digit1);
                HEX0 <= to_7seg(D_sum_digit2);
                
            WHEN SD_result =>
                HEX2 <= to_7seg(17);
                HEX1 <= to_7seg(D_sum_digit1);
                HEX0 <= to_7seg(D_sum_digit2);

            -- Estados de resultado
            WHEN S_win =>
                HEX2 <= to_7seg(16);  -- 'W'
                HEX1 <= to_7seg(P_sum_digit1);
                HEX0 <= to_7seg(P_sum_digit2);
                LEDG <= "11111111";

            WHEN S_lose =>
                HEX2 <= to_7seg(19);  -- 'L'
                HEX1 <= to_7seg(D_sum_digit1);
                HEX0 <= to_7seg(D_sum_digit2);
                LEDR <= "1111111111";

            WHEN S_draw =>
                HEX2 <= to_7seg(0);
                HEX1 <= to_7seg(P_sum_digit1);
                HEX0 <= to_7seg(P_sum_digit2);
                LEDG <= "11111111";
                LEDR <= "1111111111";
                
            WHEN OTHERS =>
                NULL;
        END CASE;
    END PROCESS;

END ARCHITECTURE;