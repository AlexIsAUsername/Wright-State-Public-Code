------------------------------------------------------------------
-- Name		   : lfsr1.vhd
-- Description : Part of the LFSR tutorial
-- Designed by : Claudio Avi Chami - FPGA Site
--               https://fpgasite.wordpress.com
-- Date        : 09/Aug/2016
-- Version     : 01
------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;

entity lfsr is
  port (
    reset  : in  std_logic;
    clk    : in  std_logic; 
    count  : out std_logic_vector (20 downto 0) -- lfsr output
  );
end entity;

architecture rtl of lfsr is
    signal count_i    	: std_logic_vector (20 downto 0):="011111010011111101010";
    signal feedback 	: std_logic;

begin
    feedback <= not(count_i(20) xor count_i(19) xor count_i(16) xor count_i(15));		-- LFSR size 4

    process (reset, clk) 
	begin
        if (reset = '1') then
            count_i <= "011111010011111101010";
        elsif (rising_edge(clk)) then
			count_i <= count_i(19 downto 0) & feedback;
        end if;
    end process;
    count <= count_i;
end architecture;
