--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:38:35 10/11/2016
-- Design Name:   
-- Module Name:   C:/Users/Juli/Desktop/Daniela/trabajoxilinx/Procesador1/Tb_iM.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: iM
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
 
ENTITY Tb_iM IS
END Tb_iM;
 
ARCHITECTURE behavior OF Tb_iM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT iM
    PORT(
         direccion : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         instruccion : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal direccion : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal instruccion : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: iM PORT MAP (
          direccion => direccion,
          reset => reset,
          instruccion => instruccion
        );

   -- Clock process definitions
  -- <clock>_process :process
 --  begin
--		<clock> <= '0';
	--	wait for <clock>_period/2;
		--<clock> <= '1';
	--	wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
					reset<='1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
					reset <='0';
					direccion <= x"00000001";

     -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
