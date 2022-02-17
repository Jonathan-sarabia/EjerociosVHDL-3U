----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or4bits is
	port(
		num1: in std_logic_vector(3 downto 0);
		num2: in std_logic_vector(3 downto 0);
		sal: out std_logic_vector(3 downto 0)
	);

end or4bits;

architecture Behavioral of or4bits is
begin
	sal <= num1 or num2;

end Behavioral;

