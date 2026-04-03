----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2026 12:56:41 PM
-- Design Name: 
-- Module Name: nDivider - Behavioral
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

entity nDivider is
    Generic (N : integer := 50000);
    Port ( clkin : in STD_LOGIC;
           clkout : out STD_LOGIC;
           rst : in STD_LOGIC);
end nDivider;

architecture Behavioral of nDivider is
signal counter : integer range 0 to N-1 := 0;
signal clkdiv : STD_LOGIC := '0';
begin
    process (clkin, rst)
    begin   
        if rst = '1' then
            counter <= 0;
            clkdiv <= '0';
        elsif rising_edge(clkin) then
            if counter = (N/2-1) then
                clkdiv <= not clkdiv;
                counter <= 0;
            else    
                counter <= counter + 1;
            end if;
        end if;
    end process;
    
    clkout <= clkdiv;
         
end Behavioral;
