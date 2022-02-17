
-- VHDL Instantiation Created from source file ram16x4bits.vhd -- 00:41:20 02/15/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ram16x4bits
	PORT(
		clock : IN std_logic;
		we : IN std_logic;
		address : IN std_logic_vector(3 downto 0);
		datain : IN std_logic_vector(3 downto 0);          
		dataout : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_ram16x4bits: ram16x4bits PORT MAP(
		clock => ,
		we => ,
		address => ,
		datain => ,
		dataout => 
	);


