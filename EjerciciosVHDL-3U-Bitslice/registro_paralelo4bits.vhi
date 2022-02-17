
-- VHDL Instantiation Created from source file registro_paralelo4bits.vhd -- 09:27:20 02/15/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT registro_paralelo4bits
	PORT(
		reset : IN std_logic;
		clk : IN std_logic;
		D : IN std_logic_vector(3 downto 0);          
		Q : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_registro_paralelo4bits: registro_paralelo4bits PORT MAP(
		reset => ,
		clk => ,
		D => ,
		Q => 
	);


