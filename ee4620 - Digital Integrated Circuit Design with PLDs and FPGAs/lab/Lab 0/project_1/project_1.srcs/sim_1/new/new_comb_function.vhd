-- new_comb_function.vhd

--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
library IEEE,WORK;
        use IEEE.STD_LOGIC_1164.ALL;
entity NEW_COMB_FUNC is
        port(   A,B,C: in std_logic;
                F,G: out std_logic);
end; 

architecture DATAFLOW_ARCH of NEW_COMB_FUNC is
begin
  --  example implementation of a truth-table
  --
  --   A  B  C  |  F  G
  ----------------------
  --   0  0  0  |  1  0 
  --   0  0  1  |  1  1
  --   0  1  0  |  0  0
  --   0  1  1  |  0  1
  --   1  0  0  |  1  1
  --   1  0  1  |  0  1
  --   1  1  0  |  0  0
  --   1  1  1  |  1  0
  --
  --
  --    \BC 00    01    11    10
  --   A \-----------------------
  --   0 |  1  |  1  |  0  |  0  | 
  --      -----------------------
  --   1 |  1  |  0  |  1  |  0  | 
  --      -----------------------
  --             F =  B'C'+A'B'+ABC
  --
  --    \BC 00    01    11    10
  --   A \-----------------------
  --   0 |  0  |  1  |  1  |  0  | 
  --      -----------------------
  --   1 |  1  |  1  |  0  |  0  | 
  --      -----------------------
  --             G =  AB'+A'C
  --
  --
  F <= (not(B) and not(C)) or(not(A) and not(B)) or (A and B and C) 
       -- pragma synthesis_off
       after 3 ns 
       -- pragma synthesis_on
       ;
  G <= (A and not(B)) or (not(A) and not(C)) 
       -- pragma synthesis_off
           after 3 ns 
       -- pragma synthesis_on
       ;
end;


