----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2026 06:20:09 PM
-- Design Name: 
-- Module Name: pipoRegister - Behavioral
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

entity pipoRegister is
    Port ( clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Input : in STD_LOGIC_VECTOR (0 to 7);
           Output : out STD_LOGIC_VECTOR (0 to 7));
end pipoRegister;

architecture Behavioral of pipoRegister is
begin
    process(clk, Reset)
    begin
        if Reset = '1' then
            Output <= (others => '0');  -- Clear all bits on reset
        elsif rising_edge(clk) then
            Output <= Input;            -- Load input into register on clock edge
        end if;
    end process;
end Behavioral;
