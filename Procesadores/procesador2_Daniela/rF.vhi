
-- VHDL Instantiation Created from source file rF.vhd -- 15:36:34 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT rF
	PORT(
		registros1 : IN std_logic_vector(4 downto 0);
		registros2 : IN std_logic_vector(4 downto 0);
		reset : IN std_logic;
		crd : IN std_logic_vector(31 downto 0);
		rdestino : IN std_logic_vector(4 downto 0);          
		crs1 : OUT std_logic_vector(31 downto 0);
		crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_rF: rF PORT MAP(
		registros1 => ,
		registros2 => ,
		reset => ,
		crs1 => ,
		crs2 => ,
		crd => ,
		rdestino => 
	);


