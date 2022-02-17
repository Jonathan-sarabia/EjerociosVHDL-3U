----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:58 02/13/2022 
-- Design Name: 
-- Module Name:    sumador4bits - Behavioral 
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

--declaracion de la entidad global
entity sumador4bits is
	port (ain: in std_logic_vector (3 downto 0);
			bin: in std_logic_vector (3 downto 0); 
			sum: out std_logic_vector (3 downto 0);
			cin: in std_logic;
			cout: out std_logic
	);
end sumador4bits;
	
--coomportamiento entidad global	
architecture Behavioral of sumador4bits is

--Declaración del componente
	component sumador1bit 
				 port (num1,num2,cin: in std_logic;
						 salida, cout: out std_logic );
	end component; 
	--declaracion de señales a utilizar
	signal c1,c2,c3 :std_logic;
begin

-- Conexión de señales 
   s0: sumador1bit  port map (ain(0), bin(0), cin, sum(0), c1);
   sl: sumador1bit  port map (ain(1), bin(1), c1, sum(1), c2);
   s2: sumador1bit  port map (ain(2), bin(2), c2, sum(2), c3);
   s3: sumador1bit  port map (ain(3), bin(3), c3, sum(3), cout);
end Behavioral;

