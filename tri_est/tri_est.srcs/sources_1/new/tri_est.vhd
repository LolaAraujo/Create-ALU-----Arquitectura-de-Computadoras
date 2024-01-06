----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2023 17:14:04
-- Design Name: 
-- Module Name: tri_est - Behavioral
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

entity tri_est is
    Port ( clk : in STD_LOGIC;
           cs : in STD_LOGIC_VECTOR (4 downto 0);
           operacion : in STD_LOGIC_VECTOR (3 downto 0);
           dataout : inout STD_LOGIC_VECTOR (3 downto 0));
end tri_est;

architecture Behavioral of tri_est is

begin
process(cs, clk)
begin 
    if  (clk' event and clk='1') then
        case cs is
            when "11000" => dataout <= operacion;
            when others => dataout <= "ZZZZ";
        end case;
    end if;
end process;
end Behavioral;
