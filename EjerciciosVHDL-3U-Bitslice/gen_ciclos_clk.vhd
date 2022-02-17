----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity gen_ciclos_clk is
	port(
		clk: in std_logic;
		a: out std_logic;
		b: out std_logic;
		c: out std_logic;
		d: out std_logic;
		e: out std_logic
	);
end gen_ciclos_clk;

architecture Behavioral of gen_ciclos_clk is
	signal y:std_logic_vector (7 downto 0);
begin
process(clk)
	variable cnt: integer range 0 to 20000000;
	variable selector: integer range 0 to 7;
begin
		if(clk'event and clk= '0')then --falling_edge(clk) para flanco de bajada
			if(cnt = 20000000) then 
				cnt := 0;
				case selector is
						when 0 => y <= "00000001";
						when 1 => y <= "00000010";
						when 2 => y <= "00000100";
						when 3 => y <= "00001000";
						when 4 => y <= "00010000";
						when 5 => y <= "00100000";
						when 6 => y <= "01000000";
						when others => y <= "10000000";
				end case;
			selector := selector + 1;
			else 
				cnt := cnt + 1;
			end if;
		end if;
end process;		
		a <= y(0);
		b <= y(2);
		c <= y(4);
		d <= y(6);
		e <= y(1) or y(3);
end Behavioral;

