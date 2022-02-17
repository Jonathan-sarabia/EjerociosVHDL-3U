----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:39:00 02/13/2022 
-- Design Name: 
-- Module Name:    Displaydec7s_con_Contador - Behavioral 
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

entity displaydec7s_con_contador is
port( clk in std_logic;
		rst: in std_logic;
		display: out std_logic_vector (6 downto 0)
		);
end displaydec7s_con_contador;

architecture Behavioral of displaydec7s_con_contador is
component Contador
	port(
		clk: in std_logic;
		rst: in std_logic;
		q: inout  std_logic_vector (3 downto 0)
	);
end component;



begin


end Behavioral;

