
-- VHDL Instantiation Created from source file aLU.vhd -- 12:15:43 10/31/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT aLU
	PORT(
		opA : IN std_logic_vector(31 downto 0);
		opB : IN std_logic_vector(31 downto 0);
		Carry : IN std_logic;
		aluOp : IN std_logic_vector(5 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_aLU: aLU PORT MAP(
		opA => ,
		opB => ,
		Carry => ,
		aluOp => ,
		salida => 
	);


