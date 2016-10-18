----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:12:48 10/17/2016 
-- Design Name: 
-- Module Name:    rF - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rF is
Port (     registros1 : in  STD_LOGIC_VECTOR (4 downto 0);
           registros2 : in  STD_LOGIC_VECTOR (4 downto 0);
           reset : in  STD_LOGIC;
           crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  dato : in  STD_LOGIC_VECTOR (31 downto 0);
           rdestino : in  STD_LOGIC_VECTOR (4 downto 0));
end rF;

architecture Behavioral of rF is

type ram_type is array (0 to 39) of std_logic_vector (31 downto 0);
	signal reg : ram_type :=(others => x"00000000");

begin
process(registros1,registros2,reset, rdestino,dato)
begin
	if(reset = '1')then
				crs1 <= (others=>'0');
				crs2 <= (others=>'0');
			
				reg <= (others => x"00000000");
			else
				crs1 <= reg(conv_integer(registros1));--asigna al registro fuente 1 a la alu
				crs2 <= reg(conv_integer(registros2));--debe ir al multiplexor para compararse con el inmediato
				
				
			if(rdestino  /= "000000")then
					reg(conv_integer(rdestino)) <= dato;
				end if;
			end if;
	
end process; 


end Behavioral;

