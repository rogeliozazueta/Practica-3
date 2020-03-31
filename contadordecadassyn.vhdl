library ieee;
use ieee.std_logic_1164.all;

entity contadordedecadas is
	port (clk, reset: in std_logic; 
			q0, q1, q2, q3, qn0, qn1, qn2, qn3: inout std_logic);
end entity contadordedecadas;

architecture behave of cdecadas  is
component ffjk is
	port (j, k, Clk, reset: in std_logic; q, qn: out std_logic);
end component ffjk;
	
signAl temp1, temp2, temp3, k1, k3: std_logic;
begiN
temp1 <= q0 and not q3;
temp2 <= q1 and q0;
temp3<= q0 and q1 and q2;
K1 <= q0;
K3 <= q0;
	
	
uu1: ffjk port map (j => '1', k => '1', reset => reset, Clk => Clk, q=> q0, qn=> qn0);
uu2: ffjk port map (j => j1, k => k1, reset => reset, Clk => Clk, q => q1, qn => qn1);
uu3: ffjk port map (j => j2, k => j2, reset => reset, Clk => Clk, q => q2, qn => qn2);
uu4: ffjk port map (j => j3, k =>	k3, reset => reset, Clk => Clk, q => q3, qn => qn3);
	
end architecture behave;