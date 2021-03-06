--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:28:21 11/01/2016
-- Design Name:   
-- Module Name:   C:/Users/Juli/Desktop/Daniela/trabajoxilinx/procesador3_finalDanielaDelgadoGaleano/procesador3_Daniela/Tb_ProcesadorFinal3.vhd
-- Project Name:  procesador3_DanielaDelgado
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Procesador3_finalDanielaDelgado
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Tb_ProcesadorFinal3 IS
END Tb_ProcesadorFinal3;
 
ARCHITECTURE behavior OF Tb_ProcesadorFinal3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Procesador3_finalDanielaDelgado
    PORT(clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
        );
    END COMPONENT;
    
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Procesador3_finalDanielaDelgado PORT MAP (
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
