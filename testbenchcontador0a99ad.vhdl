
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb099 IS
END tb099;
 
ARCHITECTURE behavior OF tb099 IS 
 
    COMPONENT cascade099
    PORT(
         Clk : IN  std_logic;
         clr1 : IN  std_logic;
         clr2 : IN  std_logic;
         U : IN  std_logic;
         C1 : OUT  std_logic_vector(3 downto 0);
         C2 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
	signal reset: std_logic:= '0';
   signal UD : std_logic ;
	signal rco : std_logic ;
	signal co1, co2: std_logic_vector(3 downto 0);

 	constant clk_period : time := 10 ns;
   
 
begin

 UDown: cascade099 port map(clr1=>reset, clr2=>reset, clk=>clk , u=>UD, C1=>co1, c2=>co2);
 
 clk_process :process
 begin
 clk<='0';
 wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;
	
startup : process
	
begin
	
reset <= '1';
wait for 100 ns;
	
reset <= '0';
wait for 100 ms;
end process;
	
ad: process

begin
	
UD <= '1';
WAIT for 100 ns;
UD <= '0';
wait for 100 ns;
	
end process;
	
end architecture;
 
	

  

  