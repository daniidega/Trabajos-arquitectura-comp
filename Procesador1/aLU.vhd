----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:12:45 10/16/2016 
-- Design Name: 
-- Module Name:    aLU - Behavioral 
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

entity aLU is
    Port ( opA : in  STD_LOGIC_VECTOR (31 downto 0);
           opB : in  STD_LOGIC_VECTOR (31 downto 0);
           aluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end aLU;

architecture Behavioral of aLU is

begin

process(aluOp,opA,opB)
	
			begin
						case aluOp is
						
								when "000001"=>--suma
										salida <= opA + opB;
										
								when "000010"=>--resta
										salida <= opA - opB;
										
								when "000011"=>--or
										salida <= opA or opB;
										
								when "000100"=>--orN
										salida <= opA or not opB;
										
								when "000101"=>--and
										salida <= opA and opB;
										
								when "000110"=>--andN
										salida <= opA and not opB;
								
								when "000111"=>--xor
										salida <= opA xor opB;
										
								when "001000"=>--xNor
										salida <= opA xnor opB;
										
								when others =>--not
										salida <=(others =>'0');
										
						end case;
end process;
								


end Behavioral;

