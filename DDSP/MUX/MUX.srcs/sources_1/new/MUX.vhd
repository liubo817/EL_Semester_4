----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2026 01:17:56 PM
-- Design Name: 
-- Module Name: MUX - Behavioral
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

entity MUX is
    Port ( Sel : in std_logic_vector (1 downto 0);
           A : in std_logic_vector (7 downto 0);
           B : in std_logic_vector (7 downto 0);
           C : in std_logic_vector (7 downto 0);
           D : in std_logic_vector (7 downto 0);
           E : out std_logic_vector (7 downto 0));
end MUX;

architecture Behavioral of MUX is
begin
process(Sel,A,B,C,D)
begin
    case Sel is
    when "00" => E <= A;
    when "01" => E <= B;
    when "10" => E <= C;
    when "11" => E <= D;
    when others => E <= "11111111";
    end case;
end process;
end Behavioral;
