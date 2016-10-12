----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:24 10/11/2016 
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rF is
    Port ( rfuente1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rfuente2 : in  STD_LOGIC_VECTOR (4 downto 0);
           data : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
			  rdestino : in  STD_LOGIC_VECTOR (4 downto 0);
           crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : out  STD_LOGIC_VECTOR (31 downto 0));
end rF;

architecture Behavioral of rF is

type rom_type is array (0 to 39) of std_logic_vector (31 downto 0);
signal miregistro: rom_type :=(others => x"00000000");

begin

process(rfuente1,rfuente2,rdestino, reset,data)

begin

		
		if (reset ='1') then
									crs1 <= (others => '0');
									crs2 <= (others => '0');
									miregistro <= (others => x"00000000");
							else
									crs1 <= miregistro(conv_integer(rfuente1)); --asigna al registro fuente 1 a la alu
									crs2 <= miregistro(conv_integer(rfuente2)); --debe ir al multiplexor para compararse con el inmediato
		
		
							if (reset ='1' and rdestino /= "00000")then
							miregistro(conv_integer(rdestino)) <= data;
							miregistro(0) <= x"00000000";

		
							
							
							end if;
		end if;
				
			
end process;
					


end Behavioral;

