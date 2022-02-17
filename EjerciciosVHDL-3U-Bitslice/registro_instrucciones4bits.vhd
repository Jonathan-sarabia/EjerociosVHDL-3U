----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro4bits is
	Port(
		clk: in std_logic;
		entradas: in std_logic_vector (3 downto 0);
		salidas: out std_logic_vector (3 downto 0)
	);
	
end registro4bits;

architecture Behavioral of registro4bits is

begin
	process(clk, entradas)
	begin
		if clk = '0' and clk'event then
			salidas <= entradas;
		end if;
	end process;
end Behavioral;

