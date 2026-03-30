----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2026 03:32:44 PM
-- Design Name: 
-- Module Name: testbench_half_adder - Behavioral
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

entity testbench_half_adder is
--  Port ( );
end testbench_half_adder;

architecture Behavioral of testbench_half_adder is
component half_adder is
Port ( A : in STD_LOGIC;
       B : in STD_LOGIC;
       Sum: out STD_LOGIC;
       Carry: out STD_LOGIC);
end component;
signal A: std_logic;
signal B: std_logic;
signal Sum: std_logic;
signal Carry: std_logic;

begin
uut: half_adder Port map
(A => A, B => B, Sum => Sum, Carry => Carry);
    process
        Begin
        wait for 10ns;
        A <= '0';
        B <= '0';
        wait for 10ns;
        A <= '1';
        B <= '0';
        wait for 10ns;
        A <= '0';
        B <= '1';
        wait for 10ns;
        A <= '1';
        B <= '1';
        wait for 10ns;
    end process;
end Behavioral;
