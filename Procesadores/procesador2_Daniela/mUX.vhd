----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:23:13 10/17/2016 
-- Design Name: 
-- Module Name:    mUX - Behavioral 
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

entity mUX is
    Port ( inmediato : in  STD_LOGIC;
           datoSeu : in  STD_LOGIC_VECTOR (31 downto 0);
           rfuente2 : in  STD_LOGIC_VECTOR (31 downto 0);
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end mUX;

architecture Behavioral of mUX is

begin
process(inmediato,datoSeu,rfuente2)
begin
			if(inmediato='1')then
					salida<= datoSeu;
			else 
			if(inmediato='0')then
					salida<= rfuente2;
			end if ; 

	end if; 	

end process; 

end Behavioral;

