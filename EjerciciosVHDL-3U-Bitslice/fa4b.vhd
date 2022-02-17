library ieee;
use IEEE.STD_LOGIC_1164.ALL;
--use work.std arith.all;
entity fa4b is 
      port (ain: in bit_vector (3 downto 0);
            bin: in bit_vector (3 downto 0); 
				sum: out bit_vector (3 downto 0);
     			cin: in bit;
            cout: out bit);
end fa4b;
architecture esa of fa4b is
--Declaración del componente
component fa4b 
          port (x, y, ci: in bit;
         		 s, co: out bit );
end component; 

signal cl,c2,c3 :bit;
begin

-- Conexión de señales 
   u0:fa4b port map (ain(0), bin(0), cin, sum(0), cl);
   ul:fa4b port map (ain(1), bin(1), ci, sum(1), c2);
   u2:fa4b port map (ain(2), bin(2), c2, sum(2), c3);
   u3:fa4b port map (ain(3), bin(3), c3, sum(3), cout);
end esa;
             
