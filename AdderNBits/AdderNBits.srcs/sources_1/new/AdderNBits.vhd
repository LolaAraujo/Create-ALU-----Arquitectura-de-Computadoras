----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.02.2023 15:54:24
-- Design Name: 
-- Module Name: AdderNBits - Behavioral
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

entity AdderNBits is
generic(nbits: integer:=8);  --constante de tipo entera
    Port ( a : in STD_LOGIC_VECTOR (nbits-1 downto 0);
           b : in STD_LOGIC_VECTOR (nbits-1 downto 0);
           Ci : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (nbits-1 downto 0);
           Co : out STD_LOGIC);
end AdderNBits;

architecture Behavioral of AdderNBits is
--De esta manera accedemos a componentes de otro archivo
component FullAdder
    port(a,b,Ci: in std_logic;
         S,Co: out std_logic);
end component;

--Señal auxiliar para la propagación de acarreos
signal Ct: std_logic_vector(nbits downto 0);
begin

--Inicializa acarreo temporal
Ct(0)<= Ci;
--Se genera el conjunto de FullAdder
GeneraFA: for i in 0 to nbits-1 generate
--Al primer sumador se la vas a dar al primer puerto que es A
FA: FullAdder port map (A=>A(i),B=>B(i),Ci=>Ct(i), S=>S(i), Co=>Ct(i+1));
end generate;

Co <= Ct(nbits-1);
end Behavioral;
