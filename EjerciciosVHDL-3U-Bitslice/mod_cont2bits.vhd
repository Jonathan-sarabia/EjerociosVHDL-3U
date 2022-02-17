----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:01:38 02/13/2022 
-- Design Name: 
-- Module Name:    mod_cont2bits - Behavioral 
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

entity mod_cont2bits is
	port(
		clk: in std_logic;
		reset: in std_logic_vector(1 downto 0);
		q: inout std_logic_vector (1 downto 0);
	);
end mod_cont2bits;

architecture Behavioral of mod_cont2bits is
begin
	process(clk,reset)
	 begin
	  if(clk'event and clk='1')then --aunque también podemos usar rising_edge(clk), los dos detectan flanco de subida
		  if(reset= '1' or count = "1101")then
			  count <= "0000";
		  else
			  count <= count+1;
		  end if; 
	  end if;
	end process;	
end Behavioral;

