----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:34:01 02/09/2022 
-- Design Name: 
-- Module Name:    falb - Behavioral 
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

entity falb is
    Port ( x,y,ci : in  STD_LOGIC;
           s,co : out  STD_LOGIC);
end falb;

architecture Behavioral of falb is
begin
  s <= x xor y xor ci;
  co <= (x and y) or (x and ci) or (y and ci);
end Behavioral;

