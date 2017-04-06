
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux2_8bit is
    Port ( S : in  STD_LOGIC;
           in0 : in  STD_LOGIC_VECTOR(7 downto 0);
           in1 : in  STD_LOGIC_VECTOR(7 downto 0);
           Z : out  STD_LOGIC_VECTOR(7 downto 0));
end mux2_8bit;

architecture Behavioral of mux2_8bit is

begin
	process (S, In0, In1)
		begin case S is
			when '0' => Z <= In0;
			when others => Z <= In1;
		end case;
	end process;
end Behavioral;

