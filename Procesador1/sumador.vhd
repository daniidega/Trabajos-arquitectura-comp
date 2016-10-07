--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:26:00 10/07/2016
-- Design Name:   
-- Module Name:   C:/Users/Juli/Desktop/Daniela/trabajoxilinx/Procesador1/sumador.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sumdOr
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
 
ENTITY sumador IS
END sumador;
 
ARCHITECTURE behavior OF sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumdOr
    PORT(
         senal : IN  std_logic_vector(31 downto 0);
         variable1 : IN  std_logic_vector(31 downto 0);
         salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal senal : std_logic_vector(31 downto 0) := (others => '0');
   signal variable1 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sumdOr PORT MAP (
          senal => senal,
          variable1 => variable1,
          salida => salida
        );

   

   -- Stimulus process
   stim_proc: process
   begin	
		variable1<="00000000000000000000000000000100";
					senal<="00000000000000000000000000000100";
      -- hold reset state for 100 ns.
      wait for 20 ns;	
					senal<="00000000000000000000000000000010";

      wait for 20 ns;
					senal<="00000000000000000000000000000110";

      -- insert stimulus here 

      wait;
   end process;

END;
