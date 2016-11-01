
-- VHDL Instantiation Created from source file uC.vhd -- 15:36:04 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT uC
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		salidaout : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_uC: uC PORT MAP(
		op => ,
		op3 => ,
		salidaout => 
	);


