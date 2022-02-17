--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ts_cpu4bits IS
END ts_cpu4bits;
 
ARCHITECTURE behavior OF ts_cpu4bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesador4bits
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         we : IN  std_logic;
         datain : IN  std_logic_vector(3 downto 0);
         salCPU : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal we : std_logic := '0';
   signal datain : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal salCPU : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	process
		begin
		
	end process;
	
	-- Instantiate the Unit Under Test (UUT)
   uut: procesador4bits PORT MAP (
          clk => clk,
          reset => reset,
          we => we,
          datain => datain,
          salCPU => salCPU
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
