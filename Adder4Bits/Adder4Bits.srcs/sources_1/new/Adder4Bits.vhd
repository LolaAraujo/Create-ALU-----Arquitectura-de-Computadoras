----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.02.2023 15:27:22
-- Design Name: 
-- Module Name: Adder4Bits - Behavioral
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

entity Adder4Bits is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Ci: in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Co : out STD_LOGIC);
end Adder4Bits;

architecture Behavioral of Adder4Bits is
signal C: STD_LOGIC_VECTOR (2 downto 0);
begin
S(0)<=A(0) xor B(0) xor Ci;
C(0)<=(A(0) and B(0)) or (Ci and (A(0) xor B(0)));
S(1)<=A(1) xor B(1) xor C(0);
C(1)<=(a(1) and b(1)) or (C(0) and (a(1) xor b(1)));
S(2)<=A(2) xor B(2) xor C(1);
C(2)<=(a(2) and b(2)) or (C(1) and (a(2) xor b(2)));
S(3)<=A(3) xor B(3) xor C(2);
Co<=(a(3) and b(3)) or (C(2) and (a(3) xor b(3)));
end Behavioral;
