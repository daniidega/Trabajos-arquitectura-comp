
-- VHDL Instantiation Created from source file sEU.vhd -- 15:37:35 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT sEU
	PORT(
		i13bits : IN std_logic_vector(12 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_sEU: sEU PORT MAP(
		i13bits => ,
		salida => 
	);


