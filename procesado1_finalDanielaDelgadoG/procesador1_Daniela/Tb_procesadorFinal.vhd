--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:30:25 10/18/2016
-- Design Name:   
-- Module Name:   C:/Users/Juli/Desktop/Daniela/trabajoxilinx/procesador1_Daniela/Tb_procesadorFinal.vhd
-- Project Name:  procesador1_Daniela
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: procesador_final
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
 
ENTITY Tb_procesadorFinal IS
END Tb_procesadorFinal;
 
ARCHITECTURE behavior OF Tb_procesadorFinal IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesador_final
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         resultado : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal resultado : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesador_final PORT MAP (
          clk => clk,
          reset => reset,
          resultado => resultado
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

      

      -- insert stimulus here 

      wait;
   end process;

END;
