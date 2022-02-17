----------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;	
-- opcode     operación
--  000        Transferencia de A
--  001        Transferencia de B
--  010        A and B
--  011        A or B
--  100        A + B
--  101        A + 1
--  110        A - 1
--  111        A - B
-------------------------------------------------------------------------------
entity alu4bits is
	port
	(
		-- Pines de Entrada
		A_alu      : in  std_logic_vector(3 downto 0);
		B_alu      : in  std_logic_vector(3 downto 0);
		opcode_alu   : in  std_logic_vector(3 downto 0);
		
		-- Pines de Salida
		Cout_alu     : out std_logic;
		Yout_alu	   : out std_logic_vector(3 downto 0)
	);
end alu4bits;

architecture Behavioral of alu4bits is
---------------------------------------------------------------------------------
--componentes
	--sumador
	component sumador4bits
		port (ain: in std_logic_vector (3 downto 0);
				bin: in std_logic_vector (3 downto 0); 
				sum: out std_logic_vector (3 downto 0);
				cin: in std_logic;
				cout: out std_logic
		);
	end component;
	
	--restador
	component restador4bits is
		port (ain: in std_logic_vector (3 downto 0);
				bin: in std_logic_vector (3 downto 0); 
				sum: out std_logic_vector (3 downto 0);
				cin: in std_logic;
				cout: out std_logic
		);
	end component;
	
	--mux
	component multiplexor4bits is
		port(
			ent0: in std_logic_vector (3 downto 0);
			ent1: in std_logic_vector (3 downto 0);
			ent2: in std_logic_vector (3 downto 0);
			ent3: in std_logic_vector (3 downto 0);
			ent4: in std_logic_vector (3 downto 0);
			ent5: in std_logic_vector (3 downto 0);
			ent6: in std_logic_vector (3 downto 0);
			SelMux: in std_logic_vector (3 downto 0);
			salida: out std_logic_vector (3 downto 0)
		);
	end component;

	--complemento
	component complemento4bits is
	port(
		num: in std_logic_vector(3 downto 0);
		sal: out std_logic_vector(3 downto 0)
	);
	end component;
	
	--xor
	component xor4bits is
		port(
			num1: in std_logic_vector(3 downto 0);
			num2: in std_logic_vector(3 downto 0);
			sal: out std_logic_vector(3 downto 0)
		);
	end component;
	
	--or
	component or4bits is
		port(
			num1: in std_logic_vector(3 downto 0);
			num2: in std_logic_vector(3 downto 0);
			sal: out std_logic_vector(3 downto 0)
		);
	end component;

-----------------------------------------------------------------------------------------
--Señales
	--para el carry 
	signal s_c0, s_c1, s_c2, s_c3: std_logic;
	--para resultado  --para seleccion enn el mux
	signal e0,e1,e2,e3,e4,e5,e6: std_logic_vector (3 downto 0);
------------------------------------------------------------------------------------------
begin

	resta: restador4bits port map(A_alu, B_alu , e0,'0', s_c0);
	xor1: xor4bits port map(A_alu, B_alu, e1);
	incremento1 : sumador4bits port map (A_alu, "0001", e2,  s_c1 );
	complemento1 : complemento4bits port map(A_alu, e3);
	decremento1 : restador4bits port map (A_ALU, "0001", e4,s_c2);
	or1: or4bits port map(A_alu, B_alu , e5);
	sumx4: sumador4bits port map(A_alu, B_alu , e6 , '0', s_c3);
	mux11: multiplexor4bits port map(e0,e1,e2,e3,e4,e5,e6,opcode_alu, Yout_alu);
	
									-- opcode     operación
	with opcode_alu select 						      
			Cout_alu <= s_c0 when "0000",--  0000        A + B
							s_c1 when "0010",--  0010        A + 1
							s_c2 when "0100",--  0100        A - 1
							s_c3 when "0110",--  0110        A - B
							'0' when others;	--  0 Transferencia de A, Transferencia de B, A and B, A or B, las que quedan
	 
end Behavioral;
