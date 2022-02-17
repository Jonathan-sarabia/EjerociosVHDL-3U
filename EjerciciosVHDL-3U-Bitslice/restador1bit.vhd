----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity restador1bit is
	port (
		num1 : in std_logic;
		num2 : in std_logic;
		cin : in std_logic;
		salida: out std_logic;
		cout: out std_logic
	);
end restador1bit;

architecture Behavioral of restador1bit is
begin
	salida <=((num1 xor num2) or cin);
	cout <= (not(num1) and cin) or (num2 and cin) or (not(num1) and num2);
end Behavioral;

