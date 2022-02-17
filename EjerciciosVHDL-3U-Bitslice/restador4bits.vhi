
-- VHDL Instantiation Created from source file restador4bits.vhd -- 23:54:31 02/14/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT restador4bits
	PORT(
		ain : IN std_logic_vector(3 downto 0);
		bin : IN std_logic_vector(3 downto 0);
		cin : IN std_logic;          
		sum : OUT std_logic_vector(3 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;

	Inst_restador4bits: restador4bits PORT MAP(
		ain => ,
		bin => ,
		sum => ,
		cin => ,
		cout => 
	);


