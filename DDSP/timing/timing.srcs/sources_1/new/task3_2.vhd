----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 02:20:49 PM
-- Design Name: 
-- Module Name: task3_1 - gates
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

entity task3_2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC);
end task3_2;

architecture gates of task3_2 is
signal n1, n2, n3: STD_LOGIC;

begin
n1 <= (A and B) after 2 ns;
n2 <= (not B) after 1 ns;
n3 <= (n2 and C) after 2 ns;
X <= (n1 or n3) after 3 ns;
end gates;
