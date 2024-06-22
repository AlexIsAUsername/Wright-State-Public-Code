
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.env.stop;

entity tb_booth is
    generic(tclk:time := 1 ns;  -- clock speed
            WPD: time := 169 ns   -- rate at which the input changes
            );
    
end tb_booth;

architecture Behavioral of tb_booth is

signal clk : std_logic;
signal rst : std_logic;

signal A : std_logic_vector (7 downto 0);
signal B : std_logic_vector (7 downto 0);
signal P : std_logic_vector (14 downto 0);

component booth is
	port (operand_a : in std_logic_vector (7 downto 0);
	      operand_b : in std_logic_vector (7 downto 0);
	      rst       : in std_logic;
	      clk       : in std_logic;
	      z         : out std_logic_vector (14 downto 0));
end component;


begin

clock:process
          begin
            clk <= '1'; wait for tclk / 2;
            clk <= '0'; wait for tclk / 2;
          end process;
  
DUT: booth port map(clk=>clk,rst=>rst,operand_a=>A,operand_b=>B,z=>P);

test_vectors:process
                begin
                    A<="00000111"; --(7)
                    B<="00010101"; --(21)
                    rst<='1';
                    wait for WPD;
                    rst<='0';
                    wait for WPD;
                    
                    A<="00000111"; --(7)
                    B<="11100001"; --(-31)
                    rst<='1';
                    wait for WPD;
                    rst<='0';
                    wait for WPD;
                    
                    A<="11100001"; --(-31)
                    B<="11100001"; --(-31)
                    rst<='1';
                    wait for WPD;
                    rst<='0';
                    wait for WPD;
                    
                    A<="11100001"; --(-31)
                    B<="00010101"; --(21)
                    rst<='1';
                    wait for WPD;
                    rst<='0';
                    wait for WPD;
                    
                    stop;
                end process;
            

end Behavioral;
