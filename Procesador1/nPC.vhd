----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:01 10/07/2016 
-- Design Name: 
-- Module Name:    nPC - Behavioral 
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

entity nPC is
    Port ( senal : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out STD_LOGIC_VECTOR (31 downto 0));
end nPC;

architecture Behavioral of nPC is
signal varia:std_logic_vector(31 downto 0):=(others=>'0');
begin
		process (senal,reset,clk)
		begin
			if reset= '1' then 
				salida<= varia;
				
			else
			
			   if rising_edge(clk)then
							salida<=senal;
				end if;
			end if;
		end process;
			
											

end Behavioral;

