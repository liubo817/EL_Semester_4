----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 03:37:19 PM
-- Design Name: 
-- Module Name: testbench_shift - Behavioral
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

entity testbench_shift is
--  Port ( );
end testbench_shift;

architecture Behavioral of testbench_shift is
component shift_register is
    Port ( R : in STD_LOGIC;
           Output : out STD_LOGIC;
           Input : in STD_LOGIC;
           clk : in STD_LOGIC);
end component;

signal Output: STD_LOGIC;
signal Input: STD_LOGIC;
signal R: STD_LOGIC;
signal clk: STD_LOGIC;

constant clk_period : time := 50ns;
begin
    uut: shift_register Port map
    (R=>R, Output=>Output,Input=>Input,clk=>clk);
    clk_process: process
        Begin
        while true loop
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
        end loop;
    end process;
    stim_proc: process
        begin
    R <= '1';
    wait for clk_period;
    R <= '0';
    Input <= '1';
    wait for clk_period;
    Input <= '0';
    wait for clk_period;
    Input <= '1';
    wait for clk_period;
    Input <= '0';
    wait for clk_period;

    Input <= '0';
    wait for 4 * clk_period;
    end process;

end Behavioral;
