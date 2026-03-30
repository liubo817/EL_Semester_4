----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2026 06:36:16 PM
-- Design Name: 
-- Module Name: testbench_alu - Behavioral
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

entity testbench_alu is
--  Port ( );
end testbench_alu;

architecture Structural of testbench_alu is

component assignment_1 is
    Port ( Sel : in STD_LOGIC_VECTOR (1 downto 0);
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           AluOut : out STD_LOGIC_VECTOR (7 downto 0));
end component;

    signal Sel   : STD_LOGIC_VECTOR (1 downto 0);
    signal A      : STD_LOGIC_VECTOR (7 downto 0);
    signal B      : STD_LOGIC_VECTOR (7 downto 0);
    signal Cin    : STD_LOGIC;
    signal Cout   : STD_LOGIC;
    signal AluOut : STD_LOGIC_VECTOR (7 downto 0);
    
begin

    uut: assignment_1
          port map(
          Sel     => Sel,
          A       => A,
          B       => B,
          Cin     => Cin,
          Cout    => Cout,
          AluOut  => AluOut);
stim_proc: process
    begin

        -- Test Case 1
        Sel <= "00";
        A <= "00000001";
        B <= "00000001";
        Cin <= '0';
        wait for 20 ns;

        -- Test Case 2
        Sel <= "01";
        A <= "11111111";
        B <= "00000001";
        Cin <= '1';
        wait for 20 ns;

        -- Test Case 3
        Sel <= "10";
        A <= "10101010";
        B <= "11001100";
        Cin <= '0';
        wait for 20 ns;

        -- Test Case 4
        Sel <= "11";
        A <= "00000001";
        B <= "11111111";
        Cin <= '0';
        wait for 20 ns;

    end process;
end Structural;
