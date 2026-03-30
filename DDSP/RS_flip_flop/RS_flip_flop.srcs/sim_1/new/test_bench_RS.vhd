----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 02:51:24 PM
-- Design Name: 
-- Module Name: test_bench_RS - Behavioral
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

entity test_bench_RS is
--  Port ( );
end test_bench_RS;

architecture Behavioral of test_bench_RS is
component RS_flip_flop is
    Port ( R : in STD_LOGIC;
           Q_inv_out : out STD_LOGIC;
           Q_out : out STD_LOGIC;
           S : in STD_LOGIC;
           clk : in STD_LOGIC);
end component;

signal R: STD_LOGIC;
signal Q_out: STD_LOGIC;
signal Q_inv_out: STD_LOGIC;
signal S: STD_LOGIC;
signal clk: STD_LOGIC;

constant clk_period : time := 50ns;

begin
    uut: RS_flip_flop Port map
    (R=>R,Q_inv_out=>Q_inv_out,S=>S,clk=>clk, Q_out =>Q_out);
    clk_process: process
        Begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
    stim_proc: process
        begin
        R <= '1';
        wait for 90 ns;
        R <= '0';
        wait for 220 ns;
        S <= '0';
        wait for 10 ns;
        S <= '1';
        wait for 10 ns;
        S <= '0';
        wait for 10 ns;
        R <= '1';
    end process;
end Behavioral;
