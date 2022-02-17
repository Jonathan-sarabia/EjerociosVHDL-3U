
-- VHDL Instantiation Created from source file xor4bits.vhd -- 23:56:07 02/14/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT xor4bits
	PORT(
		num1 : IN std_logic_vector(3 downto 0);
		num2 : IN std_logic_vector(3 downto 0);          
		sal : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_xor4bits: xor4bits PORT MAP(
		num1 => ,
		num2 => ,
		sal => 
	);


