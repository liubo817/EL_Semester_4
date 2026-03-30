----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2026 02:04:54 PM
-- Design Name: 
-- Module Name: nonOverlappingSeq - Behavioral
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

entity nonOverlappingSeq is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           input : in STD_LOGIC;
           output : out STD_LOGIC);
end nonOverlappingSeq;

architecture Behavioral of nonOverlappingSeq is
type state is (st0, st1, st2);
signal present_state, next_state: state;

begin

synchronous_process: process(clk)
begin
if rising_edge(clk) then
    if(reset = '1') then
        present_state <= st0;
        else
        present_state <= next_state;
     end if;
end if;
end process;

next_state_and_output: process(present_state, input)
begin

output <= '0';
case (present_state) is 

when st0 =>
if(input = '1') then
    next_state <= st1;
    output <= '0';
else
    next_state <= st0;
    output <= '0';
end if;

when st1 =>
if(input = '0') then
    next_state <= st2;
    output <= '0';
else
    next_state <= st1;
    output <= '0';
end if;

when st2 =>
if(input = '1') then
    next_state <= st0;
    output <= '1';
else
    next_state <= st0;
    output <= '0';
end if;

when others =>
next_state <= st0;
output <= '0';

end case;
end process;
end Behavioral;