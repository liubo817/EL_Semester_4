----------------------------------------------------------------------------------
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

entity test4 is
--  Port ( );
end test4;

architecture Behavioral of test4 is
component task4 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Sum : out STD_LOGIC;
           clk : in STD_LOGIC;
           Carry : out STD_LOGIC);
end component;

signal A: STD_LOGIC;
signal B: STD_LOGIC;
signal Sum: STD_LOGIC;
signal Carry: STD_LOGIC;
signal clk: STD_LOGIC;

begin
    uut: task4 Port map
    (A=>A,B=>B,Sum=>Sum,Carry=>Carry,clk=>clk);
    clk_process: process
        Begin
        while true loop 
            clk <= '0';
            wait for 15ns;
            clk <= '1';
            wait for 15ns;
        end loop;
    end process;
    stim_proc: process
        begin
        wait for 10 ns;
        A <= '0';
        B <= '0';
        wait for 10 ns;
        A <= '0';
        B <= '1';
        wait for 10 ns;
        A <= '1';
        B <= '0';
        wait for 10 ns;
        A <= '1';
        B <= '1';
    end process;
end Behavioral;
