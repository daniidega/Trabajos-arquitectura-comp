----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:23 10/17/2016 
-- Design Name: 
-- Module Name:    procesador2_final - Behavioral 
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

entity procesador2_final is
Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end procesador2_final;

architecture Behavioral of procesador2_final is

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
		datow: IN std_logic_vector(31 downto 0);
		rdestino : IN std_logic_vector(4 downto 0);          
		crs1 : OUT std_logic_vector(31 downto 0);
		crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT mUX
	PORT(
		inmediato : IN std_logic;
		datoSeu : IN std_logic_vector(31 downto 0);
		rfuente2 : IN std_logic_vector(31 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT sEU
	PORT(
		i13bits : IN std_logic_vector(12 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
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

signal sumadorToNPC,npcToPC,pcToIM,imToURS,aluResult,rfToalup1,rfToalup2, seuToMux, crsToMux, muxToAlu: STD_LOGIC_VECTOR (31 downto 0);--creo senales de 32
signal alup_op1: STD_LOGIC_VECTOR (5 downto 0);--creo senales de 6	
	
begin

Inst_sumadOR: sumadOR PORT MAP(
		suma1 => x"00000001",
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
		direccion => pcToIM,
		instruccion => imToURS ,
		reset => reset
	);
	
Inst_uC: uC PORT MAP(
		op => imToURS(31 downto 30),
		op3 => imToURS(24 downto 19) ,
		salidaout => alup_op1
	);
	
Inst_rF: rF PORT MAP(
		registros1 => imToURS(18 downto 14),
		registros2 => imToURS(4 downto 0),
		reset => reset ,
		crs1 => rfToalup1 ,
		crs2 => rfToalup2 ,
		datow=> aluResult,
		rdestino => imToURS(29 downto 25)
	);
	
Inst_mUX: mUX PORT MAP(
		inmediato => imToURS(13) ,
		datoSeu => seuToMux ,
		rfuente2 => rfToalup2,
		salida => muxToAlu
	);

Inst_sEU: sEU PORT MAP(
		i13bits => imToURS(12 downto 0),  
		salida => seuToMux
	);

Inst_aLU: aLU PORT MAP(
		opA => rfToalup1 ,
		opB => muxToAlu ,
		aluOp => alup_op1 ,
		salida => aluResult 
	);
	
salida <= aluResult;

end Behavioral;



