----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:13:29 10/07/2016 
-- Design Name: 
-- Module Name:    sumdOr - Behavioral 
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
use IEEE.NUMERIC_STD.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sumdOr is
    Port ( senal : in  STD_LOGIC_VECTOR (31 downto 0);
           variable1 : in  STD_LOGIC_VECTOR (31 downto 0);
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end sumdOr;

architecture Behavioral of sumdOr is


begin
		process (senal)
		begin
			salida<=senal+variable1;
		end process;

end Behavioral;

