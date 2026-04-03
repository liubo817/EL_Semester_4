---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2026 03:31:25 PM
-- Design Name: 
-- Module Name: testHalf - Behavioral
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

entity test3_1 is
--  Port ( );
end test3_1;

architecture gates of test3_1 is
component task3_1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC);
end component;

signal A: STD_LOGIC;
signal B: STD_LOGIC;
signal C: STD_LOGIC;
signal X: STD_LOGIC;

begin
    uut: task3_1 Port map
    (A=>A,B=>B,C=>C,X=>X);
    process
        Begin
        wait for 10 ns;
        A <= '0';
        B <= '0';
        C <= '0';
        wait for 10 ns;
        A <= '1';
        B <= '0';
        C <= '0';
        wait for 10 ns;
        A <= '0';
        B <= '1';
        C <= '0';
        wait for 10 ns;
        A <= '1';
        B <= '1';
        C <= '0';
        wait for 10 ns;
        A <= '0';
        B <= '0';
        C <= '1';
        wait for 10 ns;
        A <= '1';
        B <= '0';
        C <= '1';
        wait for 10 ns;
        A <= '0';
        B <= '1';
        C <= '1';
        wait for 10 ns;
        A <= '1';
        B <= '1';
        C <= '1';
        wait for 10 ns;
    end process;
end gates;
