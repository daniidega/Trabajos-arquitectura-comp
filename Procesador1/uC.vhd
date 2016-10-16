----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:33 10/16/2016 
-- Design Name: 
-- Module Name:    uC - Behavioral 
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

entity uC is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           salidaout : out  STD_LOGIC_VECTOR (5 downto 0));--la salidauto el tipo de operador que llevara a la alu
end uC;

architecture Behavioral of uC is

begin
process(op,op3)
begin
if (op="10")then 


						case op3 is 
										when "000000"=>--suma
												salidaout <= "000001";
												
										when "000100"=>--resta
												salidaout <= "000010";
												
										when "000010" =>--or
												salidaout <= "000011";
												
										when "000110"=>--orN
												salidaout <= "000100";
												
										when "000001"=>--and
												salidaout <= "000101";
												
										when "000101"=>--andN
												salidaout <= "000110";
												
										when "000011" =>--xor
												salidaout <= "000111";
												
										when "000111"=>--xNor
												salidaout <= "001000";
												
										when others => --implementar demas instrcciones
												salidaout<= "111111";
												
						end case;
				 end if;
end process;
												
										

end Behavioral;

