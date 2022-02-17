
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complemento4bits is
	port(
		num: in std_logic_vector(3 downto 0);
		sal: out std_logic_vector(3 downto 0)
	);
end complemento4bits;

architecture Behavioral of complemento4bits is

begin
	sal <= not num;
end Behavioral;

