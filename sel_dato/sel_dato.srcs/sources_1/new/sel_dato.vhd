----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2023 16:42:48
-- Design Name: 
-- Module Name: sel_dato - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sel_dato is
    Port ( clk : in STD_LOGIC;
           datain : in STD_LOGIC_VECTOR (3 downto 0);
           operacion : in STD_LOGIC_VECTOR (3 downto 0);
           cs : in STD_LOGIC_VECTOR (4 downto 0);
           dataout : inout STD_LOGIC_VECTOR (3 downto 0));
end sel_dato;

architecture Behavioral of sel_dato is

begin
process(cs, clk)
begin
    if(clk' event and clk = '1') then
        case cs is
            when "10110" => dataout <= datain;
            when "10101" => dataout <= datain;
            when others => null;
        end case;
    end if;
end process;

end Behavioral;
