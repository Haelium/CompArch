
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruction_decoder is
    Port ( instruction : in  STD_LOGIC_VECTOR(15 downto 0);
           control_word : out  STD_LOGIC_VECTOR(22 downto 0));
end instruction_decoder;

architecture Behavioral of instruction_decoder is

signal DA : STD_LOGIC_VECTOR(2 downto 0);	-- 22-20
signal AA : STD_LOGIC_VECTOR(2 downto 0);	-- 19-17
signal BA : STD_LOGIC_VECTOR(2 downto 0);	-- 16-14
signal MB : STD_LOGIC;							-- 13
signal FS : STD_LOGIC_VECTOR(4 downto 0);	-- 12-8
signal MD : STD_LOGIC;							-- 7
signal RW : STD_LOGIC;							-- 6
signal MW : STD_LOGIC;							-- 5
signal PL : STD_LOGIC;							-- 4
signal JB : STD_LOGIC;							-- 3
signal BC : STD_LOGIC_VECTOR(2 downto 0);	-- 2-0

begin
	process(instruction) begin
		DA <= instruction(8 downto 6);	-- DA <= DR
		AA <= instruction(5 downto 3);	-- AA <= SA
		BA <= instruction(2 downto 0);	-- BA <= SB
		MB <= instruction(15);				-- MB <= Opcode MSB
		PL <= instruction(14) and instruction(15);
		FS(4) <= instruction(13) and (not PL);
		FS(3) <= instruction(12) and (not PL);
		FS(2) <= instruction(11) and (not PL);
		FS(1) <= instruction(10) and (not PL);
		FS(0) <= instruction(9)  and (not PL);
		MD <= instruction(14);
		RW <= ( (not instruction(14)) or ( (not instruction(15)) and instruction(13) ) );
		MW <= (not instruction(14)) and instruction(14) and (not instruction(13));
		PL <= instruction(14) and instruction(13);
		JB <= instruction(13);
		BC(2) <= instruction(11);
		BC(1) <= instruction(10);
		BC(0) <= instruction(9);
	end process;
	
	process(DA) begin
		control_word(22 downto 20) <= DA;
	end process;
	process(AA) begin
		control_word(19 downto 17) <= AA;
	end process;
	process(BA) begin
		control_word(16 downto 14) <= BA;
	end process;
	process(MB) begin
		control_word(13) <= MB;
	end process;
	process(FS) begin
		control_word(12 downto 8) <= FS;
	end process;
	process(MD) begin
		control_word(7) <= MD;
	end process;
	process(RW) begin
		control_word(6) <= RW;
	end process;
	process(MW) begin
		control_word(5) <= MW;
	end process;
	process(PL) begin
		control_word(4) <= PL;
	end process;
	process(JB) begin
		control_word(3) <= JB;
	end process;
	process(BC) begin
		control_word(2 downto 0) <= BC;
	end process;
	
end Behavioral;

