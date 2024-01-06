----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.04.2023 10:56:35
-- Design Name: 
-- Module Name: regB - Behavioral
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

entity regB is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           cs : in STD_LOGIC_VECTOR (4 downto 0);
           datoin : in STD_LOGIC_VECTOR (3 downto 0);
           b : inout STD_LOGIC_VECTOR (3 downto 0));
end regB;

architecture Behavioral of regB is

begin
process(clk, cs, reset)
variable bres:std_logic_vector(3 downto 0);
begin 
    if reset='1' then
        b<="0000";
    else
        if(clk' event and clk='1')then
            case cs is
                when "10010" => b<=datoin; -- se cambia en el registro b
                when "11100" => bres:=datoin; -- se cambia el nombre de ares
                when "11101" => b<=bres;
                when others => null;
            end case;
        end if;
    end if;
end process;

end Behavioral;
