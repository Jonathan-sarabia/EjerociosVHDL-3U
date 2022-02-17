----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:08:09 02/09/2022 
-- Design Name: 
-- Module Name:    nuevoproyecto - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nuevoproyecto is
    Port ( clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           display : out  STD_LOGIC_VECTOR(6 downto 0)
			  );
end entity nuevoproyecto;

architecture Behavioral of nuevoproyecto is

component Contador
	port( clk in std_logic;
				 reset: in std_logic;
				 Q : inout STD_LOGIC_VECTOR(3 downto 0)
	);
end component;

signal salcompo: std_logic_vector(3 downto 0);

begin
-- Etiquetamos y realizamos la asignacion de señales
U0: Contador port map (clk=>clk, reset=>reset, Q => salcompo);

	with salcompo select
		display <= "1000000" when "0000", --0
					  "1111001" when "0001", --1
					  "0100100" when "0010", --2
					  "0110000" when "0011", --3
					  "0011001" when "0100", --4
					  "0010010" when "0101", --5
					  "0000010" when "0110", --6
					  "1111000" when "0111", --7
					  "0000000" when "1000", --8
					  "0010000" when others; --9
end Behavioral;

