----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:52 10/11/2016 
-- Design Name: 
-- Module Name:    iM - Behavioral 
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

entity iM is
    Port ( direccion  : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           instruccion : out  STD_LOGIC_VECTOR (31 downto 0));
end iM;

architecture Behavioral of iM is

type rom_type is array (0 to 31) of std_logic_vector (31 downto 0);--se crea una varieble tipo rom que permite solo la  lectura de la direccion. 

impure function fill_rom (rom_file_name: in string) return rom_type is --se crea una funcion que lea cada linea y retorne su lectura                                                 
		 FILE fila : text is in rom_file_name;--en esta linea especifica el archivo donde abre en modo lectura                       
		 variable linea : line;--se declara la variable romfileline que trata de la lectura de la linea                                
		 variable rom  : rom_type;--se declara la variable rom que va ser tipo lectura
		 variable temp : bit_vector(31 downto 0);--se declara la variable temp que va ser un vector de 32
begin
	for I in rom_type'range loop                                  
		 readline (fila, linea);                             
		 read (linea, temp);
		 rom(I) := to_stdlogicvector(temp); 
   end loop;
   return rom;
end function;


signal variable1: rom_type := fill_rom("daniela.txt");	

begin

process(direccion,reset)
begin

			if (reset ='1') then
						instruccion <= (others => '0');
			else
						instruccion <= variable1(conv_integer(direccion(4 downto 0)));
			end if;
			
end process;
end Behavioral;

