----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dos_display7s_juntos is
	port(
		a: in std_logic_vector (3 downto 0);
		clk: in std_logic;
		reset: in std_logic
		display1: out std_logic_vector(6 downto 0);
		display2: out std_logic_vector(6 downto 0);
	);
	
end dos_display7s_juntos;

architecture Behavioral of dos_display7s_juntos is
	component display_decod7s_contador is
		port( 
				clk: in std_logic;
				reset: in std_logic;
				display: out std_logic_vector (6 downto 0)
		);
	end component;
begin
	d1: display_decod7s_contador port map ();
		
	
end Behavioral;

