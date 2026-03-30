----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2026 10:46:33 AM
-- Design Name: 
-- Module Name: testbench_adder - Behavioral
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

entity testbench_adder is
--  Port ( );
end testbench_adder;

architecture Behavioral of testbench_adder is

component full is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (7 downto 0);
           Cout : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal A: STD_LOGIC_VECTOR (7 downto 0);
signal B: STD_LOGIC_VECTOR (7 downto 0);
signal Cin: STD_LOGIC;
signal Sum: STD_LOGIC_VECTOR (7 downto 0);
signal Cout: STD_LOGIC_VECTOR (7 downto 0);

begin
uut: full Port map
    (A=>A,B=>B,Sum=>Sum,Cin=>Cin,Cout=>Cout);
    process
        Begin
        wait for 10 ns;
        A <= "00001111";
        B <= "00000011";
        Cin <= '0';
        wait for 10 ns;
        A <= "11101111";
        B <= "00111100";
        Cin <= '0';
        wait for 10 ns;
        A <= "01001111";
        B <= "00110011";
        Cin <= '0';
        wait for 10 ns;
        A <= "00011111";
        B <= "11000011";
        Cin <= '0';
        wait for 10 ns;
        A <= "00001001";
        B <= "00000011";
        Cin <= '1';
        wait for 10 ns;
        A <= "00111100";
        B <= "00011111";
        Cin <= '1';
        wait for 10 ns;
        A <= "00001100";
        B <= "00000000";
        Cin <= '1';
        wait for 10 ns;
        A <= "01111000";
        B <= "00011011";
        Cin <= '1';
        wait for 10 ns;
    end process;

end Behavioral;
