----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:58:14 09/05/2016 
-- Design Name: 
-- Module Name:    Arquitectura - Behavioral 
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

entity Arquitectura is
    Port ( rst : in  STD_LOGIC;
           senal : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end Arquitectura;

architecture Behavioral of Arquitectura is

begin
   process(clk,rst,senal)
	begin
   if(rst='1') then 
	    salida <= '0';
	
	else 
	   if(rising_edge(clk)) then
		 
	     salida<=senal;
	   end if;
	end if;
	end process;
	


end Behavioral;

