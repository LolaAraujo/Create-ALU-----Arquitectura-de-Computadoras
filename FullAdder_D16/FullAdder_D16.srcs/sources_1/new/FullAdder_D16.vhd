----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.02.2023 19:48:32
-- Design Name: 
-- Module Name: FullAdder_D16 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder_D16 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Ci : in STD_LOGIC;
           S : out STD_LOGIC;
           C0 : out STD_LOGIC);
end FullAdder_D16;

architecture Behavioral of FullAdder_D16 is

begin
S <= a xor b xor Ci;
C0 <= (a and b) or (Ci and (a xor b));

end Behavioral;
