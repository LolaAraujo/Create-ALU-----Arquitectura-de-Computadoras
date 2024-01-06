----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2023 17:34:30
-- Design Name: 
-- Module Name: regA - Behavioral
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

entity regA is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           cs : in STD_LOGIC_VECTOR (4 downto 0);
           datoin : in STD_LOGIC_VECTOR (3 downto 0);
           a : inout STD_LOGIC_VECTOR (3 downto 0));
end regA;

architecture Behavioral of regA is

begin
process(clk, cs, reset)
variable ares:std_logic_vector(3 downto 0);
begin 
    if reset='1' then
        a<="0000";
    else
        if(clk' event and clk='1')then
            case cs is
                when "10001" => a<=datoin; -- se cambia en el registro b
                when "11100" => ares:=datoin; -- se cambia el nombre de ares
                when "11101" => a<=ares;
                when others => null;
            end case;
        end if;
    end if;
end process;


end Behavioral;
