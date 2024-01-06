----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2023 16:32:51
-- Design Name: 
-- Module Name: DecoBINHEX - Behavioral
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

entity DecoBINHEX is
    Port ( b : in STD_LOGIC_VECTOR (3 downto 0);
           h : out STD_LOGIC_VECTOR (6 downto 0));
end DecoBINHEX;

architecture Behavioral of DecoBINHEX is  --de 10 en 10 en o'clock
begin
process(b)
begin
    case b is 
        when "0000" => h <= "1111110";
        when "0001" => h <= "0110000";
        when "0010" => h <= "1101101";
        when "0011" => h <= "1111001";
        when "0100" => h <= "0110011";
        when "0101" => h <= "1011011";
        when "0110" => h <= "1011111";
        when "0111" => h <= "1110000";
        when "1000" => h <= "1111111";
        when "1001" => h <= "1110011";
        when "1010" => h <= "1110111";
        when "1011" => h <= "0011111";
        when "1100" => h <= "1001110";
        when "1101" => h <= "0111101";
        when "1110" => h <= "1001111";
        when "1111" => h <= "1000111";
        when others => h <= "0000000";
    end case;
end process;
end Behavioral;
