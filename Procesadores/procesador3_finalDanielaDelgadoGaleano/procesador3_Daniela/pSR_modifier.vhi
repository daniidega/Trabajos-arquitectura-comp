
-- VHDL Instantiation Created from source file pSR_modifier.vhd -- 11:38:01 10/31/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT pSR_modifier
	PORT(
		alu_op : IN std_logic_vector(5 downto 0);
		alu_resultado : IN std_logic_vector(31 downto 0);
		Crs1 : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		nzvc : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_pSR_modifier: pSR_modifier PORT MAP(
		alu_op => ,
		alu_resultado => ,
		Crs1 => ,
		Crs2 => ,
		reset => ,
		nzvc => 
	);


