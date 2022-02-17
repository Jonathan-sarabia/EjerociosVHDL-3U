----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity restador4bits is
	port (ain: in std_logic_vector (3 downto 0);
			bin: in std_logic_vector (3 downto 0); 
			sum: out std_logic_vector (3 downto 0);
			cin: in std_logic;
			cout: out std_logic
	);
end restador4bits;
------------------------------------------------------------------------------------
architecture Behavioral of restador4bits is
	component restador1bit is
		port (
			num1 : in std_logic;
			num2 : in std_logic;
			cin : in std_logic;
			salida: out std_logic;
			cout: out std_logic
		);
	end component;

	signal c: std_logic_vector (2 downto 0);
begin
	R0: restador1bit port map(ain(0),bin(0),cin,sum(0), c(0));
	R1: restador1bit port map(ain(1),bin(1),c(0),sum(1), c(1));
	R2: restador1bit port map(ain(2),bin(2),c(1),sum(2), c(2));
	R3: restador1bit port map(ain(3),bin(3),c(2),sum(3), cout);
end Behavioral;

