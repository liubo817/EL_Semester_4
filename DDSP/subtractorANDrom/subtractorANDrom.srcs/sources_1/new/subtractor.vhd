----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2026 02:04:02 PM
-- Design Name: 
-- Module Name: subtractor - Behavioral
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

entity subtractor is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Bin : in STD_LOGIC;
           Diff : out STD_LOGIC;
           Bout : out STD_LOGIC);
end subtractor;

architecture Behavioral of subtractor is

begin
Diff <= (A xor B) xor Bin;
Bout <= ((A xnor B) and Bin) or (not A and B);

end Behavioral;
