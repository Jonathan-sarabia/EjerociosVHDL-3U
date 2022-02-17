
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_paralelo4bits is
	port(
		reset: in std_logic;
		clk: in std_logic;
		D:  in std_logic_vector(3 downto 0);
		Q: out std_logic_vector(3 downto 0):= (others => '0')
	);
end registro_paralelo4bits;

architecture Behavioral of registro_paralelo4bits is
	
begin
	process (reset, clk) is
	begin
		if (reset = '0')then
			Q <= (others => '0');
		elsif(rising_edge(clk))then
			Q <= D;
		end if;
	end process;
end Behavioral;

