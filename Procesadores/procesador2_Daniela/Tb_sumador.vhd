--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:26:26 10/17/2016
-- Design Name:   
-- Module Name:   H:/procesadores/procesador1_Daniela/Tb_sumador.vhd
-- Project Name:  procesador1_Daniela
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sumadOR
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
 
ENTITY Tb_sumador IS
END Tb_sumador;
 
ARCHITECTURE behavior OF Tb_sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumadOR
    PORT(
         suma1 : IN  std_logic_vector(31 downto 0);
         suma2 : IN  std_logic_vector(31 downto 0);
         salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal suma1 : std_logic_vector(31 downto 0) := (others => '0');
   signal suma2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sumadOR PORT MAP (
          suma1 => suma1,
          suma2 => suma2,
          salida => salida
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
             suma1 <= x"00000002";
		       suma2 <= x"00000001";
		
      -- hold reset state for 100 ns.
      wait for 30 ns;
		suma1 <= x"00000004";
		suma2 <= x"00000001";
		wait for 30 ns;
		suma1 <= x"00000008";
		suma2 <= x"00000001";
		wait for 30 ns;
		suma1 <= x"00000010";
		suma2 <= x"00000001";
      wait;
   end process;

END;
