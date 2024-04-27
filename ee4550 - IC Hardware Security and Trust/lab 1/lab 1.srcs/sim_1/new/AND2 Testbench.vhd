----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/18/2024 06:49:32 PM
-- Design Name: 
-- Module Name: AND2 Testbench - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AND2Testbench is
    --  Port ( );
end AND2Testbench;

architecture Behavioral of AND2Testbench is

    Component AND2 is
        Port (A,B:in std_logic;
             C: out std_logic);
    End component;
    --inputs
    Signal a: std_logic:= '0';
    Signal b: std_logic:= '0';
    --outputs
    Signal c: std_logic;
    Constant period: time := 1ns;

begin

    Uut: AND2 PORT MAP (a =>A, b => B, c => C);
    a<= not a after period;
    b<= not b after period*2;

end Behavioral;
