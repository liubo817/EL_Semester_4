----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2026 11:09:23 AM
-- Design Name: 
-- Module Name: testbench_logic - Behavioral
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

entity testbench_logic is
--  Port ( );
end testbench_logic;

architecture Behavioral of testbench_logic is
component logic is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : out STD_LOGIC_VECTOR (7 downto 0);
           D : out STD_LOGIC_VECTOR (7 downto 0);
           E : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal A: std_logic_vector(7 downto 0);
signal B: std_logic_vector(7 downto 0);
signal C: std_logic_vector(7 downto 0);
signal D: std_logic_vector(7 downto 0);
signal E: std_logic_vector(7 downto 0);

begin
uut: logic Port map
(A => A, B=> B, C => C, D =>D, E=>E);
    stim_proc: process
        Begin
        A <= "00000000";
        B <= "00000001";
        wait for 10ns;
        A <= "00000001";
        B <= "00000000";
        wait for 10ns;
        A <= "00000001";
        B <= "00000001";
        wait for 10ns;
        A <= "00000011";
        B <= "00000001";
        wait for 10ns;
        A <= "10000000";
        B <= "00010000";
    end process;

end Behavioral;
