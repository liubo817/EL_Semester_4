----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2026 01:42:04 PM
-- Design Name: 
-- Module Name: testbench_mux - Behavioral
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

entity testbench_mux is
--  Port ( );
end testbench_mux;

architecture Behavioral of testbench_mux is
component MUX is
    Port ( Sel : in std_logic_vector (1 downto 0);
           A : in std_logic_vector (7 downto 0);
           B : in std_logic_vector (7 downto 0);
           C : in std_logic_vector (7 downto 0);
           D : in std_logic_vector (7 downto 0);
           E : out std_logic_vector (7 downto 0));
end component;

signal A: std_logic_vector(7 downto 0);
signal B: std_logic_vector(7 downto 0);
signal C: std_logic_vector(7 downto 0);
signal D: std_logic_vector(7 downto 0);
signal E: std_logic_vector(7 downto 0);
signal Sel: std_logic_vector(1 downto 0);

begin

uut: MUX Port map
(Sel => Sel, A => A, B=> B, C => C, D =>D, E=>E);
    stim_proc: process
        Begin
        A <= "00000000";
        B <= "00000001";
        C <= "00000010";
        D <= "00000011";
        wait for 10ns;
        Sel <= "00";
        wait for 10ns;
        Sel <= "01";
        wait for 10ns;
        Sel <= "10";
        wait for 10ns;
        Sel <= "11";
    end process;
end Behavioral;
