
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory_M is
    Port ( address : in  STD_LOGIC_VECTOR(15 downto 0);
           write_data : in  STD_LOGIC_VECTOR(15 downto 0);
           MemWrite : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;
           read_data : out  STD_LOGIC_VECTOR(15 downto 0));
end memory_M;

architecture Behavioral of memory_M is

type mem_array is array(0 to 7) of std_logic_vector(15 downto 0);
-- define type, for memory arrays
begin mem_process: process (address, write_data)
-- initialize data memory, X denotes hexadecimal number
variable data_mem : mem_array := (
	X"0000", X"0000", X"0000",X"0000",
	X"0000", X"0000", X"0000",X"0000");
variable addr : integer;
-- the following type conversion function is in std_logic_arith
begin addr := conv_integer(address(2 downto 0));
	if MemWrite ='1' then
		data_mem(addr):= write_data;
	elsif MemRead='1' then
		read_data <= data_mem(addr) after 10 ns;
	end if;
end process;
end Behavioral;
