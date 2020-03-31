library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity cascade099 is
port (Clk, clr1,clr2  ,U: in std_logic; C1, C2: out std_logic_vector (3 downto 0));
end cascade099;

architecture behave of cascade099 is
component contadordecadas is
port (Clr          : in std_logic;
		clk          : in std_logic;
		load           : in std_logic;
		e         : in std_logic;
		u             : std_logic; 
		ci  : in std_logic_vector (3 downto 0);
		rco            : out std_logic;
		co : out std_logic_vector (3 downto 0));

	end component contadordecadas;
signal tempe, temprco1, temprco2:std_logic;
begin
uu0: contadordecadas port map (Clr => clr1, clk => clk, load => '0', e => '1', u => u, rco => temprco1, ci => "0000", co => c1);
uu1: contadordecadas port map (Clr => clr2, clk => clk, load => '0', e => temprco1, u => u, rco => temprco2, ci => "0000", Co => C2);

end behave;
