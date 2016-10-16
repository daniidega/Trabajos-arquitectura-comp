--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:42:46 10/12/2016
-- Design Name:   
-- Module Name:   C:/Users/Juli/Desktop/Procesador1/Tb_rF.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rF
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
 
ENTITY Tb_rF IS
END Tb_rF;
 
ARCHITECTURE behavior OF Tb_rF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rF
    PORT(
         rfuente1 : IN  std_logic_vector(4 downto 0);
         rfuente2 : IN  std_logic_vector(4 downto 0);
         data : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         rdestino : IN  std_logic_vector(4 downto 0);
         crs1 : OUT  std_logic_vector(31 downto 0);
         crs2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rfuente1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rfuente2 : std_logic_vector(4 downto 0) := (others => '0');
   signal data : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal rdestino : std_logic_vector(4 downto 0) := (others => '0');
   signal crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal crs2 : std_logic_vector(31 downto 0) := (others => '0');
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rF PORT MAP (
          rfuente1 => rfuente1,
          rfuente2 => rfuente2,
          data => data,
          reset => reset,
          rdestino => rdestino,
          crs1 => crs1,
          crs2 => crs2
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
				 reset<='1';
					
      -- hold reset state for 100 ns.
      wait for 100 ns;
		reset <='0';
		rfuente1<="10001";
		rfuente2<="10010";
		rdestino<="00000";
		data    <="10011000000000000000000000000000";		

      -- insert stimulus here 

      wait;
      wait;
   end process;

END;
