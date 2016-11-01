
-- VHDL Instantiation Created from source file mUX.vhd -- 15:37:05 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mUX
	PORT(
		inmediato : IN std_logic;
		datoSeu : IN std_logic_vector(31 downto 0);
		rfuente2 : IN std_logic_vector(31 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_mUX: mUX PORT MAP(
		inmediato => ,
		datoSeu => ,
		rfuente2 => ,
		salida => 
	);


