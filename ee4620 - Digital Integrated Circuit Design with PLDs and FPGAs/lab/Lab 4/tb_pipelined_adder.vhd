----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 
-- Design Name:
-- Module Name: tb_pipelined_adder - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_pipelined_adder is
    generic(N :integer := 8); --4 bit pipelined adder (change accordingly)
--  Port ( );
end tb_pipelined_adder;

architecture Behavioral of tb_pipelined_adder is
component pipelined_adder is
    generic(N :integer := 8); --4 bit pipelined adder (change accordingly)
    Port ( A  : in STD_LOGIC_VECTOR (N-1 downto 0);
           B  : in STD_LOGIC_VECTOR (N-1 downto 0);
           Ci : in STD_LOGIC;
           S  : out STD_LOGIC_VECTOR (N downto 0);
--           Co : out STD_LOGIC;
           CLK, RSTn : in STD_LOGIC );
end component;

   signal A,B : std_logic_vector (N-1 downto 0);
   signal Ci  : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '1';
   signal Sum : std_logic_vector (N downto 0);
--   signal Co  : std_logic;

constant clk_period : time := 61 ns;    -- Clock Frequency

constant  P: integer:= 8;                -- number of pipeline stages

begin

UTT: pipelined_adder generic map(N=>8) port map(A,B,Ci,Sum,clk,rst); --4 bit pipelined adder (change accordingly)

clk_process :process
                  begin
                      clk <= '0';
                      wait for clk_period/2;
                      clk <= '1';
                  wait for clk_period/2;
              end process;

stim_proc: process
              begin

---------------------------4-bit ADDER INPUT Example-------------------------------
--                 rst <= '1';
--                 A <= "0000";
--                 B <= "0000";
--                 Ci<= '0';
--                 wait for clk_period;

--                 rst <= '0';
--                 A <= "1111";
--                 B <= "1101";
--                 Ci<= '0';
--                 wait for (P)*clk_period;

--                 A <= "1011";
--                 B <= "1111";
--                 Ci<= '1';
--                 wait for (P)*clk_period;

--                 A <= "1001";
--                 B <= "1000";
--                 Ci<= '0';
--                 wait for (P)*clk_period;

--                 A <= "0000";
--                 B <= "1111";
--                 Ci<= '1';
--                 wait for (P)*2*clk_period;
--                 std.env.finish;

---------------------------4-bit ADDER INPUT Example-------------------------------

---------------------------8-bit ADDER INPUT Example-------------------------------
                   rst <= '1';
                   A <= "00000000"; --00
                   B <= "00000000"; --00
                   Ci<= '0';
                   wait for 1.5*clk_period;
                   rst <= '0';
                   A <= "00101001"; --41
                   B <= "01111111"; --127
                   Ci<= '0';
                   wait for (P)*clk_period;
                  
                   rst <= '0';
                   A <= "00101001"; --41
                   B <= "01111111"; --127
                   Ci<= '1';
                   wait for (P)*clk_period;
                  
                   rst <= '0';
                   A <= "00101001"; --41
                   B <= "11111101"; --253
                   Ci<= '0';
                   wait for (P)*clk_period;
                  
                   rst <= '0';
                   A <= "00101001"; --41
                   B <= "11111101"; --253
                   Ci<= '1';
                   wait for (P)*clk_period;
                  
				           rst <= '0';
                   A <= "11010101"; --213
                   B <= "11111101"; --253
                   Ci<= '0';
                   wait for (P)*clk_period;
                  
                   rst <= '0';
                   A <= "11010101"; --213
                   B <= "11111101"; --253
                   Ci<= '1';
                   wait for (P)*clk_period;
                  
                   rst <= '0';
                   A <= "11010101"; --213
                   B <= "01111111"; --127
                   Ci<= '0';
                   wait for (P)*clk_period;
                  
                   rst <= '0';
                   A <= "11010101"; --213
                   B <= "01111111"; --127
                   Ci<= '1';
                   wait for (P)*2*clk_period;
                   std.env.finish;
---------------------------8-bit ADDER INPUT Example-------------------------------
              end process;



end Behavioral;
