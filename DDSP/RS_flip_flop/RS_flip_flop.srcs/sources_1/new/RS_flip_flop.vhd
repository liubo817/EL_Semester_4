----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 02:38:04 PM
-- Design Name: 
-- Module Name: RS_flip_flop - Behavioral
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

entity RS_flip_flop is
    Port ( R : in STD_LOGIC;
           S : in STD_LOGIC;
           clk: in std_logic;
           Q_out : out STD_LOGIC;
           Q_inv_out : out STD_LOGIC);
end RS_flip_flop;

architecture Behavioral of RS_flip_flop is
signal q_int: std_logic;
begin
process(clk, R, S)
    begin
    if rising_edge(clk) then   
        if R = '1' and S = '0' then
           q_int <= '0';
        else
        if R = '0' and S = '1' then
           q_int <= '1';
        end if;
        end if;
    end if;
        Q_out <= q_int;
        Q_inv_out <= not q_int;
end process;

end Behavioral;
