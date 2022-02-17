
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity procesador4bits is
	port(
		clk: in std_logic;
		reset: in  STD_LOGIC;
		we: in  std_logic;
		datain  : in  std_logic_vector (3 downto 0);
		salCPU: out std_logic_vector(3 downto 0)
	);
end procesador4bits;
	
architecture Behavioral of procesador4bits is
	signal xa, xb, xc, xd, xe, Scout_alu: std_logic;
	signal Qcp, Smp, Sopcode_alu, Srd, Sap, Falu, Sat: std_logic_vector (3 downto 0);
------------------------------------------------------------------------------------------------------	
	--componentes
	--generador de ciclos de reloj
	component gen_ciclos_clk is
		port(
			clk: in std_logic;
			a: out std_logic;
			b: out std_logic;
			c: out std_logic;
			d: out std_logic;
			e: out std_logic
		);
	end component;
	
	--contador del programa
	component contador is
    Port ( clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           count : inout  STD_LOGIC_VECTOR (3 downto 0)
			  );
	end component;


	--memoria del programa
	component ram16x4bits is
		port (
			 clock   : in  std_logic;
			 we      : in  std_logic;
			 address : in  std_logic_vector (3 downto 0);
			 datain  : in  std_logic_vector (3 downto 0);
			 dataout : out std_logic_vector (3 downto 0)
		);
	end component;
	
	--registro
	component registro4bits is
		Port(
			clk: in std_logic;
			entradas: in std_logic_vector (3 downto 0);
			salidas: out std_logic_vector (3 downto 0)
		);
	end component;
	
	--componente alu
	component alu4bits is
		port
		(
			A_alu      : in  std_logic_vector(3 downto 0);
			B_alu      : in  std_logic_vector(3 downto 0);
			opcode_alu : in  std_logic_vector(3 downto 0);
			Cout_alu   : out std_logic;
			Yout_alu	  : out std_logic_vector(3 downto 0)
		);
	end component;
	
------------------------------------------------------------------------------------------------------	
	
begin
	paso1_gen: gen_ciclos_clk port map (clk, xa, xb, xc, xd, xe);
	paso2_cont: contador port map (xe ,reset, Qcp);
	paso3_mem: ram16x4bits port map (clk, we ,Qcp ,datain , Smp);
	paso4_reg_instruc: registro4bits port map (xa, Smp, Sopcode_alu);
	paso5_reg_datos: registro4bits port map (xb, Smp, Srd);
	paso6_alu: alu4bits port map (Sap,Srd, Sopcode_alu, Scout_alu,  Falu);
	paso7_acum_temp: registro4bits port map (xc, Falu, Sat); --- acumulador, contador, hacen 
	paso8_acum: registro4bits port map (xd, Sat, Sap);
	
	salCPU <= Sap;

end Behavioral;

