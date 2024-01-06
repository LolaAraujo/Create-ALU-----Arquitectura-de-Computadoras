----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2023 17:07:43
-- Design Name: 
-- Module Name: indice - Behavioral
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

entity indice is
    Port ( clk : in STD_LOGIC;
           pcontrol : in STD_LOGIC_VECTOR (7 downto 0);
           cs : in STD_LOGIC_VECTOR (4 downto 0);
           reset : in STD_LOGIC;
           ix : inout STD_LOGIC_VECTOR (7 downto 0));
end indice;

architecture Behavioral of indice is

begin
process(clk, cs, reset)
begin
    if reset='1' then
        ix<="00000000";
    else 
        if(clk' event and clk='1') then
            case cs is
                when "11010" => ix<=pcontrol;
                when "11011" => ix<=ix+1;
                when others => null;
            end case;
        end if;
    end if;
end process;
end Behavioral;
