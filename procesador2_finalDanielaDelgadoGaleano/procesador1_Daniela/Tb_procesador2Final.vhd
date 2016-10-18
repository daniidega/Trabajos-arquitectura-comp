--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:53:47 10/18/2016
-- Design Name:   
-- Module Name:   E:/d/procesador1_Daniela/Tb_procesador2Final.vhd
-- Project Name:  procesador1_Daniela
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: procesador2_final
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
 
ENTITY Tb_procesador2Final IS
END Tb_procesador2Final;
 
ARCHITECTURE behavior OF Tb_procesador2Final IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesador2_final
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal salida : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesador2_final PORT MAP (
          clk => clk,
          reset => reset,
          salida => salida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
				 reset<='1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
				reset<='0';

     

      wait;
   end process;

END;
