
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity xor4bits is
	port(
		num1: in std_logic_vector(3 downto 0);
		num2: in std_logic_vector(3 downto 0);
		sal: out std_logic_vector(3 downto 0)
	);
end xor4bits;

architecture Behavioral of xor4bits is

begin
	sal <= num1 xor num2;
end Behavioral;

