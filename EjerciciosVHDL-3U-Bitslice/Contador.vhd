----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.all;
use ieee.std_logic_unsigned.all;

entity contador is
	 --GENERIC (tamano:POSITIVE := 4);
    Port ( clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           count : inout  STD_LOGIC_VECTOR (3 downto 0));
end contador;

architecture Behavioral of contador is
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

