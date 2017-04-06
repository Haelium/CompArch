
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux2_8bit_tb IS
END mux2_8bit_tb;
 
ARCHITECTURE behavior OF mux2_8bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2_8bit
    PORT(
         S : IN  std_logic;
         in0 : IN  std_logic_vector(7 downto 0);
         in1 : IN  std_logic_vector(7 downto 0);
         Z : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal in0 : std_logic_vector(7 downto 0) := x"00";
   signal in1 : std_logic_vector(7 downto 0) := x"00";

 	--Outputs
   signal Z : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2_8bit PORT MAP (
          S => S,
          in0 => in0,
          in1 => in1,
          Z => Z
        );


   -- Stimulus process
   stim_proc: process
   begin	
      wait for 10 ns;	
		in0 <= x"FF";
		in1 <= x"AA";
		S <= '0';
      wait for 10 ns;
		in0 <= x"FF";
		in1 <= x"AA";
		S <= '1';
      wait for 10 ns;
   end process;

END;
