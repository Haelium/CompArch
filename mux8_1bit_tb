
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux8_1bit_tb IS
END mux8_1bit_tb;
 
ARCHITECTURE behavior OF mux8_1bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux8_1bit
    PORT(
         MS : IN  std_logic_vector(2 downto 0);
         in0 : IN  std_logic;
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         in3 : IN  std_logic;
         in4 : IN  std_logic;
         in5 : IN  std_logic;
         in6 : IN  std_logic;
         in7 : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal MS : std_logic_vector(2 downto 0) := (others => '0');
   signal in0 : std_logic := '0';
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal in3 : std_logic := '0';
   signal in4 : std_logic := '0';
   signal in5 : std_logic := '0';
   signal in6 : std_logic := '0';
   signal in7 : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux8_1bit PORT MAP (
          MS => MS,
          in0 => in0,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          in5 => in5,
          in6 => in6,
          in7 => in7,
          Z => Z
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
		in0 <= '1';
		in1 <= '0';
		in2 <= '0';
		in3 <= '0';
		in4 <= '0';
		in5 <= '0';
		in6 <= '0';
		in7 <= '0';
		MS <= "000";
      wait for 10 ns;
		in0 <= '0';
		in1 <= '1';
		in2 <= '0';
		in3 <= '0';
		in4 <= '0';
		in5 <= '0';
		in6 <= '0';
		in7 <= '0';
		MS <= "001";
      wait for 10 ns;
		in0 <= '0';
		in1 <= '0';
		in2 <= '1';
		in3 <= '0';
		in4 <= '0';
		in5 <= '0';
		in6 <= '0';
		in7 <= '0';
		MS <= "010";
      wait for 10 ns;
		in0 <= '0';
		in1 <= '0';
		in2 <= '0';
		in3 <= '1';
		in4 <= '0';
		in5 <= '0';
		in6 <= '0';
		in7 <= '0';
		MS <= "011";
      wait for 10 ns;
		in0 <= '0';
		in1 <= '0';
		in2 <= '0';
		in3 <= '0';
		in4 <= '1';
		in5 <= '0';
		in6 <= '0';
		in7 <= '0';
		MS <= "100";
      wait for 10 ns;
		in0 <= '0';
		in1 <= '0';
		in2 <= '0';
		in3 <= '0';
		in4 <= '0';
		in5 <= '1';
		in6 <= '0';
		in7 <= '0';
		MS <= "101";
      wait for 10 ns;
		in0 <= '0';
		in1 <= '0';
		in2 <= '0';
		in3 <= '0';
		in4 <= '0';
		in5 <= '0';
		in6 <= '1';
		in7 <= '0';
		MS <= "110";
      wait for 10 ns;
		in0 <= '0';
		in1 <= '0';
		in2 <= '0';
		in3 <= '0';
		in4 <= '0';
		in5 <= '0';
		in6 <= '0';
		in7 <= '1';
		MS <= "111";
      wait for 10 ns;
   end process;

END;
