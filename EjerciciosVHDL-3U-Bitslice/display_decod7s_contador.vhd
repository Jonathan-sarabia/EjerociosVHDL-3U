----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_decod7s_contador is
	port( clk: in std_logic;
			reset: in std_logic;
			display: out std_logic_vector (6 downto 0)
			);
end display_decod7s_contador;

architecture Behavioral of display_decod7s_contador is
signal salcompo: std_logic_vector (3 downto 0);
	component contador
		port(
			clk: in std_logic;
			reset: in std_logic;
			count: inout  std_logic_vector (3 downto 0)
		);
	end component;
begin
C1: contador port map (clk => clk, reset => reset, count => salcompo);

with salcompo select

	display <=  "1000000" when "0000", --0
					"1111001" when "0001", --1
					"0100100" when "0010", --2
					"0110000" when "0011", --3
					"0011001" when "0100", --4
					"0010010" when "0101", --5
					"0000010" when "0110", --6
					"1111000" when "0111", --7
					"0000000" when "1000", --8
					"0010000" when others; --9
end Behavioral;