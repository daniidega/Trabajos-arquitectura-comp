----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:49 10/17/2016 
-- Design Name: 
-- Module Name:    sEU - Behavioral 
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

entity sEU is
    Port ( i13bits : in  STD_LOGIC_VECTOR (12 downto 0);
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end sEU;

architecture Behavioral of sEU is

begin
process(i13bits)
begin

if(i13bits(12) = '1')then
	salida(12 downto 0) <= i13bits;
	salida(31 downto 13) <= (others=>'1');

else
	salida(12 downto 0) <= i13bits;
	salida(31 downto 13) <= (others=>'0');

end if;

end process; 

end Behavioral;

