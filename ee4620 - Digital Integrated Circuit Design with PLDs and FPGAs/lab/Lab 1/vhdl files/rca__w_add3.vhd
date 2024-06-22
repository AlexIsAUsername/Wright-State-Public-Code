-- rca__w_add3.vhd
-- ripple carry adder with 2-bit adder (ADD2) subcomponent
-- case3

--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
library IEEE,WORK;
        use IEEE.STD_LOGIC_1164.ALL;
        use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- ADD2 is a two-level logic (ignoring inverters) circuit that adds two, 2-bit numbers
-- you must design this block
entity ADD2 is
        generic(N:integer:=2);
        port(   A,B: in std_logic_vector(N-1 downto 0);
                Ci: in std_logic;
                Co: out std_logic;
                S: out std_logic_vector(N-1 downto 0));
end;

architecture ADD2_BEHAV of ADD2 is
begin
Co <= (A(0) and B(1) and B(0)) or (A(1) and B(1)) or (A(1) and A(0) and B(0)) or (Ci and B(1) and B(0)) or (Ci and A(0) and B(1)) or (Ci and A(1) and B(0)) or (Ci and A(1) and A(0))
     -- pragma synthesis_off
     after 15 ns
     -- pragma synthesis_on
  ;
S(0) <= (not Ci and not A(0) and B(0)) or (not Ci and A(0) and not B(0)) or (Ci and not A(0) and not B(0)) or (Ci and A(0) and B(0))
     -- pragma synthesis_off
     after 13 ns
     -- pragma synthesis_on
  ;
S(1) <= ((not Ci and not A(1) and not A(0) and B(1)) or (not Ci and not A(1) and B(1) and not B(0)) or (not A(1) and not A(0) and B(1) and not B(0)) or (not A(1) and A(0) and not B(1) and B(0))) or ((not Ci and A(1) and not A(0) and not B(1)) or (not Ci and A(1) and not B(1) and not B(0)) or (A(1) and not A(0) and not B(1) and not B(0)) or (A(1) and A(0) and B(1) and B(0))) or ((Ci and not A(1) and not B(1) and B(0)) or (Ci and not A(1) and A(0) and not B(1)) or (Ci and A(1) and B(1) and B(0)) or (Ci and A(1) and A(0) and B(1)))
     -- pragma synthesis_off
     after 19 ns
     -- pragma synthesis_on
  ;
end;

--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
library IEEE,WORK;
        use IEEE.STD_LOGIC_1164.ALL;
        use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity RCA is
        generic(N:integer:=16);
        port(   A,B: in std_logic_vector(N-1 downto 0);
		Ci: in std_logic;
		Co: out std_logic;
                S: out std_logic_vector(N-1 downto 0));
end;

architecture RCA_STRUCT of RCA is

  -- declarative area

  component ADD2
    generic(N:integer:=2);
    port(A,B:in std_logic_vector(N-1 downto 0);Ci:in std_logic;Co:out std_logic;S:out std_logic_vector(N-1 downto 0));
  end component;

  signal C:std_logic_vector(N/2 downto 0);

begin

  -- it helps to draw this out and label the signal lines
  -- instantiation area

  C(0) <= Ci;

  GI: for I in 0 to N/2-1 generate
    GI:ADD2
      generic map(N=>2)
      port map(A(1)=>A(I*2+1)  
      ,A(0)=>A(I*2)   
      ,B(1)=>B(I*2+1)    
      ,B(0)=>B(I*2)    
      ,Ci=>C(I)   
      ,Co=>C(I+1)   
      ,S(1)=>S(I*2+1),   
      S(0)=>S(I*2));
  end generate;

  Co <= C(N/2);

end;
