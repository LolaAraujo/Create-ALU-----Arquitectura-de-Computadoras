----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2023 16:34:51
-- Design Name: 
-- Module Name: sel_dir - Behavioral
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

entity sel_dir is
    Port ( pcout : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           ix : in STD_LOGIC_VECTOR(7 downto 0);
           cs : in STD_LOGIC_VECTOR (4 downto 0);
           direccion : out STD_LOGIC_VECTOR (7 downto 0));
end sel_dir;

architecture Behavioral of sel_dir is

begin
process(cs, clk)
begin  
    if(clk' event and clk='1') then
        case cs is
            when "11000" => direccion <= ix;
            when others => direccion <= pcout;
        end case;
    end if;
    
end process;
end Behavioral;
