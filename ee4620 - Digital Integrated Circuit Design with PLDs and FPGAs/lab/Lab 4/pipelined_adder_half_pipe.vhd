----------------------------------------------------------------------------------
---REGISTER
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY REG IS
    PORT (
        D, CLK, RSTn : IN STD_LOGIC;
        Q : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE behaviour OF REG IS

BEGIN

    PROCESS (CLK)
    BEGIN
        IF (rising_edge(CLK)) THEN
            IF (RSTn = '1') THEN
                Q <= '0'
                    --pragma_sythesis_off
                    AFTER 10ns
                    --pragma_sythesis_on
                    ;
            ELSE
                Q <= D
                    --pragma_sythesis_off
                    AFTER 10ns
                    --pragma_sythesis_on
                    ;
            END IF;
        END IF;
    END PROCESS;

END ARCHITECTURE;

----------------------------------------------------------------------------------
---FULL ADDER
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FA IS
    PORT (
        A, B, Ci : IN STD_LOGIC;
        S, Co : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE behaviour OF FA IS
BEGIN
    S <= A XOR B XOR Ci
        --pragma_sythesis_off
        AFTER 20ns
        --pragma_sythesis_on
        ;
    Co <= (A AND B) OR (Ci AND A) OR (Ci AND B)
        --pragma_sythesis_off
        AFTER 25ns
        --pragma_sythesis_on
        ;
END ARCHITECTURE;

----------------------------------------------------------------------------------
---PIPELINED ADDER
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY pipelined_adder IS
    GENERIC (N : INTEGER := 4); --4 bit pipelined adder is given here (change accordingly for 8 bit)
    PORT (
        A : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        Ci : IN STD_LOGIC;
        S : OUT STD_LOGIC_VECTOR (N DOWNTO 0);
        CLK, RSTn : IN STD_LOGIC);
END pipelined_adder;

ARCHITECTURE Behavioral OF pipelined_adder IS

    --- component declaration

    COMPONENT FA
        PORT (
            A, B, Ci : IN STD_LOGIC;
            S, Co : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT REG
        PORT (
            D, CLK, RSTn : IN STD_LOGIC;
            Q : OUT STD_LOGIC);
    END COMPONENT;

    --- signal declaration
    SIGNAL Co : STD_LOGIC; --use this signal as your last carry out signal
    SIGNAL tmp_cout : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL tmp_cin : STD_LOGIC_VECTOR(7 DOWNTO 1);

    SIGNAL tmp_S0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL tmp_S1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL tmp_S2 : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL tmp_S3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL tmp_S4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL tmp_S5 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL tmp_S6 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL tmp_S7 : STD_LOGIC;

    SIGNAL tmp_A1 : STD_LOGIC;
    SIGNAL tmp_B1 : STD_LOGIC;
    SIGNAL tmp_A2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL tmp_B2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL tmp_A3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL tmp_B3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL tmp_A4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL tmp_B4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL tmp_A5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL tmp_B5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL tmp_A6 : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL tmp_B6 : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL tmp_A7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL tmp_B7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    --- add necessary signals here

BEGIN

    --- 1st Full Adder

    FA_0 : FA PORT MAP(A(0), B(0), Ci, tmp_S0(0), tmp_cout(0));

    reg_s0_0 : REG PORT MAP(tmp_S0(0), CLK, RSTn, tmp_S0(1));
    reg_s0_1 : REG PORT MAP(tmp_S0(1), CLK, RSTn, tmp_S0(2));
    reg_s0_2 : REG PORT MAP(tmp_S0(2), CLK, RSTn, tmp_S0(3));
    reg_s0_3 : REG PORT MAP(tmp_S0(3), CLK, RSTn, S(0));

    tmp_cin(1) <= tmp_cout(0);

    --- 2nd Full Adder

    FA_1 : FA PORT MAP(A(1), B(1), tmp_cin(1), tmp_S1(0), tmp_cout(1));

    reg_s1_0 : REG PORT MAP(tmp_S1(0), CLK, RSTn, tmp_S1(1));
    reg_s1_1 : REG PORT MAP(tmp_S1(1), CLK, RSTn, tmp_S1(2));
    reg_s1_2 : REG PORT MAP(tmp_S1(2), CLK, RSTn, tmp_S1(3));
    reg_s1_3 : REG PORT MAP(tmp_S1(3), CLK, RSTn, S(1));

    reg_cou1 : REG PORT MAP(tmp_cout(1), CLK, RSTn, tmp_cin(2));

    ---3rd Full Adder

    reg_A2_0 : REG PORT MAP(A(2), CLK, RSTn, tmp_A2(0));
    reg_B2_0 : REG PORT MAP(B(2), CLK, RSTn, tmp_B2(0));

    FA_2 : FA PORT MAP(tmp_A2(0), tmp_B2(0), tmp_cin(2), tmp_S2(0), tmp_cout(2));

    reg_s2_0 : REG PORT MAP(tmp_S2(0), CLK, RSTn, tmp_S2(1));
    reg_s2_1 : REG PORT MAP(tmp_S2(1), CLK, RSTn, tmp_S2(2));
    reg_s2_2 : REG PORT MAP(tmp_S2(2), CLK, RSTn, S(2));

    tmp_cin(3) <= tmp_cout(2);

    --- 4th Full Adder

    reg_A3_0 : REG PORT MAP(A(3), CLK, RSTn, tmp_A3(0));
    reg_B3_0 : REG PORT MAP(B(3), CLK, RSTn, tmp_B3(0));

    FA_3 : FA PORT MAP(tmp_A3(0), tmp_B3(0), tmp_cin(3), tmp_S3(0), tmp_cout(3));

    reg_s3_0 : REG PORT MAP(tmp_S3(0), CLK, RSTn, tmp_S3(1));
    reg_s3_1 : REG PORT MAP(tmp_S3(1), CLK, RSTn, tmp_S3(2));
    reg_s3_2 : REG PORT MAP(tmp_S3(2), CLK, RSTn, S(3));

    reg_cou3 : REG PORT MAP(tmp_cout(3), CLK, RSTn, tmp_cin(4));

    --- 5th Full Adder

    reg_A4_0 : REG PORT MAP(A(4), CLK, RSTn, tmp_A4(0));
    reg_B4_0 : REG PORT MAP(B(4), CLK, RSTn, tmp_B4(0));
    reg_A4_1 : REG PORT MAP(tmp_A4(0), CLK, RSTn, tmp_A4(1));
    reg_B4_1 : REG PORT MAP(tmp_B4(0), CLK, RSTn, tmp_B4(1));

    FA_4 : FA PORT MAP(tmp_A4(1), tmp_B4(1), tmp_cin(4), tmp_S4(0), tmp_cout(4));

    reg_s4_0 : REG PORT MAP(tmp_S4(0), CLK, RSTn, tmp_S4(1));
    reg_s4_1 : REG PORT MAP(tmp_S4(1), CLK, RSTn, S(4));

    tmp_cin(5) <= tmp_cout(4);

    --- 6th Full Adder

    reg_A5_0 : REG PORT MAP(A(5), CLK, RSTn, tmp_A5(0));
    reg_B5_0 : REG PORT MAP(B(5), CLK, RSTn, tmp_B5(0));
    reg_A5_1 : REG PORT MAP(tmp_A5(0), CLK, RSTn, tmp_A5(1));
    reg_B5_1 : REG PORT MAP(tmp_B5(0), CLK, RSTn, tmp_B5(1));

    FA_5 : FA PORT MAP(tmp_A5(1), tmp_B5(1), tmp_cin(5), tmp_S5(0), tmp_cout(5));

    reg_s5_0 : REG PORT MAP(tmp_S5(0), CLK, RSTn, tmp_S5(1));
    reg_s5_1 : REG PORT MAP(tmp_S5(1), CLK, RSTn, S(5));

    reg_cou5 : REG PORT MAP(tmp_cout(5), CLK, RSTn, tmp_cin(6));

    --- 7th Full Adder

    reg_A6_0 : REG PORT MAP(A(6), CLK, RSTn, tmp_A6(0));
    reg_B6_0 : REG PORT MAP(B(6), CLK, RSTn, tmp_B6(0));
    reg_A6_1 : REG PORT MAP(tmp_A6(0), CLK, RSTn, tmp_A6(1));
    reg_B6_1 : REG PORT MAP(tmp_B6(0), CLK, RSTn, tmp_B6(1));
    reg_A6_2 : REG PORT MAP(tmp_A6(1), CLK, RSTn, tmp_A6(2));
    reg_B6_2 : REG PORT MAP(tmp_B6(1), CLK, RSTn, tmp_B6(2));

    FA_6 : FA PORT MAP(tmp_A6(2), tmp_B6(2), tmp_cin(6), tmp_S6(0), tmp_cout(6));

    reg_s6_0 : REG PORT MAP(tmp_S6(0), CLK, RSTn, S(6));

    tmp_cin(7) <= tmp_cout(6);

    --- 8th Full Adder

    reg_A7_0 : REG PORT MAP(A(7), CLK, RSTn, tmp_A7(0));
    reg_B7_0 : REG PORT MAP(B(7), CLK, RSTn, tmp_B7(0));
    reg_A7_1 : REG PORT MAP(tmp_A7(0), CLK, RSTn, tmp_A7(1));
    reg_B7_1 : REG PORT MAP(tmp_B7(0), CLK, RSTn, tmp_B7(1));
    reg_A7_2 : REG PORT MAP(tmp_A7(1), CLK, RSTn, tmp_A7(2));
    reg_B7_2 : REG PORT MAP(tmp_B7(1), CLK, RSTn, tmp_B7(2));

    FA_7 : FA PORT MAP(tmp_A7(2), tmp_B7(2), tmp_cin(7), tmp_S7, tmp_cout(7));

    reg_s7_0 : REG PORT MAP(tmp_S7, CLK, RSTn, S(7));

    reg_cou7 : REG PORT MAP(tmp_cout(7), CLK, RSTn, Co);
    S(N) <= Co;

END Behavioral;