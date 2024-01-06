----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.02.2023 23:50:23
-- Design Name: 
-- Module Name: HalfSubtractor - Behavioral
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

entity HalfSubtractor is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           C0 : out STD_LOGIC;
           R : out STD_LOGIC);
end HalfSubtractor;

architecture Behavioral of HalfSubtractor is

begin
R <= a xor b;
C0 <= not a and b;

end Behavioral;
