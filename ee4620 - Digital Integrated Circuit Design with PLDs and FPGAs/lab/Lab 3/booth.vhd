-- Booth Multiplier
-- Define libraries


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity booth is
	port (operand_a : in std_logic_vector (7 downto 0);
	      operand_b : in std_logic_vector (7 downto 0);
	      rst       : in std_logic;
	      clk       : in std_logic;
	      z         : out std_logic_vector (14 downto 0));
end booth;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity stage is
	port (y : in std_logic_vector (2 downto 0);
	      xin, pin: in std_logic_vector (14 downto 0);
	      overlap: out std_logic;
	      xout, pout: out std_logic_vector (14 downto 0));
end stage;

architecture name of stage is
	signal op:std_logic_vector(1 downto 0);	
	signal localx,localx1,localx2:std_logic_vector(14 downto 0);
    
    begin
	   -- overlap bit so booth doesn't need to take from the overall instruction
        overlap <= y(2);
    
        -- left shift 2 for next stage
        xout <= xin(12 downto 0) & "00"; 
    
        -- making signal for choosing 0, x, or 2x
        op(0) <= y(0) when (y(2)='0')else not y(0) after 2 ns; --1 inverter
        op(1) <= y(1) when (y(2)='0')else not y(1) after 2 ns; --1 inverter
    
        -- deciding between 0 or x
        localx <= xin when ((op(0) or op(1))='1') else "000000000000000" after 4 ns; --2in or gate
    
        -- multiplying by 2 by bit shifting, only relevant when previous step decided x
        localx1 <= localx when ((op(0) and op(1))='0') else localx(13 downto 0) & '0' after 4 ns; --2in and gate
    
        -- effectively xor localx to make adder into an adder/subtractor
        localx2 <= localx1 when (y(2)='0')else not localx1 after 30 ns; --15 inverters
    
        -- adder
        pout <= pin + localx2 + y(2);
	end;

architecture rtl of booth is

--Declare  Signals
signal x_ext, xout0, xout1, xout2, pout0, pout1, pout2: std_logic_vector (14 downto 0);
signal overlap: std_logic_vector (2 downto 0);


--Declare  Components
component stage is
    port (y : in std_logic_vector (2 downto 0);
	      xin, pin: in std_logic_vector (14 downto 0);
	      overlap: out std_logic;
	      xout, pout: out std_logic_vector (14 downto 0));
end component;

begin
    x_ext <= operand_b(7) & operand_b(7) & operand_b(7) & operand_b(7) & operand_b(7) & operand_b(7) & operand_b(7) & operand_b;
    stg1: stage port map (y(0) => '0', y(1) => operand_a(0), y(2) => operand_a(1), xin => x_ext, pin => "000000000000000", 
                          overlap => overlap(0), xout => xout0, pout => pout0);
                          
    stg2: stage port map (y(0) => overlap(0), y(1) => operand_a(2), y(2) => operand_a(3), xin => xout0, pin => pout0, 
                          overlap => overlap(1), xout => xout1, pout => pout1);
                          
    stg3: stage port map (y(0) => overlap(1), y(1) => operand_a(4), y(2) => operand_a(5), xin => xout1, pin => pout1, 
                          overlap => overlap(2), xout => xout2, pout => pout2);
                          
    stg4: stage port map (y(0) => overlap(2), y(1) => operand_a(5), y(2) => operand_a(7), xin => xout2, pin => pout2, 
                         pout => z);
end;
