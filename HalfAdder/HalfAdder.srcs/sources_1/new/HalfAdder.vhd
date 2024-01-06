----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.02.2023 20:33:33
-- Design Name: 
-- Module Name: HalfAdder - Behavioral
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

entity HalfAdder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           C0 : out STD_LOGIC;
           S : out STD_LOGIC);
end HalfAdder;

architecture Behavioral of HalfAdder is

begin
S <= a xor b;
C0 <= (a and b);

end Behavioral;
