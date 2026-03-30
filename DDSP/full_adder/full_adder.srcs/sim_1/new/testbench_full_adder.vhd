----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2026 10:40:12 AM
-- Design Name: 
-- Module Name: testbench_full_adder - Behavioral
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

entity testbench_full_adder is
--  Port ( );
end testbench_full_adder;

architecture Behavioral of testbench_full_adder is
component full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end component;

signal A: std_logic;
signal B: std_logic;
signal Cin: std_logic;
signal S: std_logic;
signal C: std_logic;

begin
uut: full_adder Port map
(A => A, B => B, Cin => Cin, S => S, C => C);
    process
        Begin
        wait for 10ns;
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 10ns;
        A <= '1';
        B <= '0';
        Cin <= '0';
        wait for 10ns;
        A <= '0';
        B <= '1';
        Cin <= '0';
        wait for 10ns;
        A <= '0';
        B <= '0';
        Cin <= '1';
        wait for 10ns;
        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10ns;
        A <= '1';
        B <= '0';
        Cin <= '1';
        wait for 10ns;
        A <= '0';
        B <= '1';
        Cin <= '1';
        wait for 10ns;
        A <= '1';
        B <= '1';
        Cin <= '1';    
    end process;
end Behavioral;
