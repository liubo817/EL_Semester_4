----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 03:28:40 PM
-- Design Name: 
-- Module Name: shift_register - Behavioral
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

entity shift_register is
    Port ( clk : in STD_LOGIC;
           R : in STD_LOGIC;
           Output : out STD_LOGIC;
           Input : in STD_LOGIC);
end shift_register;

architecture Behavioral of shift_register is
signal shifted_bit:std_logic_vector(3 downto 0);
begin
process(clk)
begin

if rising_edge(clk) then
    if R = '1' then
        shifted_bit <= (others => '0');
    else
    for i in 0 to 2 loop
    shifted_bit(i+1) <= shifted_bit(i);
    end loop;
    shifted_bit(0) <= Input;
    end if;
end if;
end process;
    Output <= shifted_bit(3);
end Behavioral;
