----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:52 02/13/2022 
-- Design Name: 
-- Module Name:    sumador1bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity sumador1bit is
	port (
		num1 : in std_logic;
		num2 : in std_logic;
		cin : in std_logic;
		salida: out std_logic;
		cout: out std_logic
	);
end sumador1bit;

architecture Behavioral of sumador1bit is
begin
	salida <= num1 xor num2 xor cin;
	cout <= (num1 or num2) or (num1 or cin) or (num2 and cin);
end Behavioral;

