----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2023 17:22:32
-- Design Name: 
-- Module Name: stack - Behavioral
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

entity stack is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           pcout : in STD_LOGIC_VECTOR (7 downto 0);
           cs : in STD_LOGIC_VECTOR (4 downto 0);
           pila : inout STD_LOGIC_VECTOR (7 downto 0));
end stack;

architecture Behavioral of stack is

begin
process(clk, cs, reset)
begin
    if reset='1' then
        pila<="00000000";
    else 
        if(clk' event and clk='1') then
            case cs is
                when "11100" => pila<=pcout;
                when others => null;
            end case;
        end if;
    end if;
end process;

end Behavioral;
