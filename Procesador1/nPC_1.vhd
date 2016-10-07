--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:51:32 10/07/2016
-- Design Name:   
-- Module Name:   C:/Users/Juli/Desktop/Daniela/trabajoxilinx/Procesador1/nPC_1.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nPC
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
 
ENTITY nPC_1 IS
END nPC_1;
 
ARCHITECTURE behavior OF nPC_1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nPC
    PORT(
         senal : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal senal : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal salida : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nPC PORT MAP (
          senal => senal,
          reset => reset,
          clk => clk,
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
      -- hold reset state for 100 ns.
      wait for 100 ns;
      reset<='1';
      senal<="00010101000000010001000010110001";	

      wait for 20 ns;
		
		reset <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
