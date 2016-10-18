----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:16 10/17/2016 
-- Design Name: 
-- Module Name:    procesador_final - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity procesador_final is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           resultado : out  STD_LOGIC_VECTOR (31 downto 0));
end procesador_final;

architecture Behavioral of procesador_final is

COMPONENT sumadOR
	PORT(
		suma1 : IN std_logic_vector(31 downto 0);
		suma2 : IN std_logic_vector(31 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT nPC
	PORT(
		senal : IN std_logic_vector(31 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT iM
	PORT(
		direccion : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		instruccion : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT uC
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		salidaout : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
COMPONENT rF
	PORT(
		registros1 : IN std_logic_vector(4 downto 0);
		registros2 : IN std_logic_vector(4 downto 0);
		reset : IN std_logic;
		dato : IN std_logic_vector(31 downto 0);
		rdestino : IN std_logic_vector(4 downto 0);          
		crs1 : OUT std_logic_vector(31 downto 0);
		crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT aLU
	PORT(
		opA : IN std_logic_vector(31 downto 0);
		opB : IN std_logic_vector(31 downto 0);
		aluOp : IN std_logic_vector(5 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
signal sumadorToNPC,npcToPC,pcToIM,imToUR,aluResult,rfToalup1,rfToalup2 : STD_LOGIC_VECTOR (31 downto 0);--creo senales de 32
signal alup_op1: STD_LOGIC_VECTOR (5 downto 0);--creo senales de 6
	
begin

Inst_sumadOR: sumadOR PORT MAP(
		suma1 => x"00000100",--x"00000001"
		suma2 => npcToPC,
		salida => sumadorToNPC
	);

Inst_nPC: nPC PORT MAP(
		senal => sumadorToNPC ,
		clk => clk  ,
		reset => reset ,
		salida => npcToPC
	);
	
Inst_PC: nPC PORT MAP(
		senal =>npcToPC ,
		clk =>clk ,
		reset =>reset ,
		salida =>pcToIM
	);
	
Inst_iM: iM PORT MAP(
		direccion => pcToIM ,
		instruccion => imToUR ,
		reset => reset
	);
	
Inst_uC: uC PORT MAP(
		op => imToUR(31 downto 30),
		op3 => imToUR(24 downto 19) ,
		salidaout => alup_op1
	);
	
Inst_rF: rF PORT MAP(
		registros1 => imToUR(18 downto 14),
		registros2 => imToUR(4 downto 0),
		reset => reset ,
		crs1 => rfToalup1 ,
		crs2 => rfToalup2 ,
		dato => aluResult,
		rdestino => imToUR(29 downto 25)
	);
	
Inst_aLU: aLU PORT MAP(
		opA => rfToalup1 ,
		opB => rfToalup2 ,
		aluOp => alup_op1 ,
		salida => aluResult 
	);
	
resultado <= aluResult;

end Behavioral;

