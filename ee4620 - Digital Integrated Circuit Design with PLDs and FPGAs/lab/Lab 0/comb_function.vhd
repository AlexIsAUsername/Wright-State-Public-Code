-- comb_function.vhd

--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
library IEEE,WORK;
        use IEEE.STD_LOGIC_1164.ALL;
entity COMB_FUNC is
        port(   A,B,C: in std_logic;
                F,G: out std_logic);
end; 

architecture DATAFLOW_ARCH of COMB_FUNC is
begin
  --  example implementation of a truth-table
  --
  --   A  B  C  |  F  G
  ----------------------
  --   0  0  0  |  1  0 
  --   0  0  1  |  1  0
  --   0  1  0  |  0  0
  --   0  1  1  |  0  1
  --   1  0  0  |  0  1
  --   1  0  1  |  0  0
  --   1  1  0  |  1  0
  --   1  1  1  |  1  0
  --
  --
  --    \BC 00    01    11    10
  --   A \-----------------------
  --   0 |  1  |  1  |  0  |  0  | 
  --      -----------------------
  --   1 |  0  |  0  |  1  |  1  | 
  --      -----------------------
  --             F =  A'B' + AB
  --
  --    \BC 00    01    11    10
  --   A \-----------------------
  --   0 |  0  |  0  |  1  |  0  | 
  --      -----------------------
  --   1 |  1  |  0  |  0  |  0  | 
  --      -----------------------
  --             G =  A'BC + AB'C'
  --
  --
  F <= (not(A) and not(B)) or (A and B) 
       -- pragma synthesis_off
       after 3 ns 
       -- pragma synthesis_on
       ;
  G <= (not(A) and B and C) or (A and not(B) and not(C)) 
       -- pragma synthesis_off
           after 3 ns 
       -- pragma synthesis_on
       ;
end;


