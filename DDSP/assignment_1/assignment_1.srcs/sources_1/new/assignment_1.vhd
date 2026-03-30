----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2026 06:12:59 PM
-- Design Name: 
-- Module Name: assignment_1 - Structural
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

entity assignment_1 is
    Port ( Sel : in STD_LOGIC_VECTOR (1 downto 0);
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           AluOut : out STD_LOGIC_VECTOR (7 downto 0));
end assignment_1;

architecture Structural of assignment_1 is

component adder
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (7 downto 0);
           Cout : out STD_LOGIC);
end component;

component logic
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : out STD_LOGIC_VECTOR (7 downto 0);
           D : out STD_LOGIC_VECTOR (7 downto 0);
           E : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component mux
    Port ( Sel : in STD_LOGIC_VECTOR (1 downto 0);
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : in STD_LOGIC_VECTOR (7 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           E : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal sum_out   : STD_LOGIC_VECTOR(7 downto 0);
signal logic_c_out : STD_LOGIC_VECTOR(7 downto 0);
signal logic_d_out : STD_LOGIC_VECTOR(7 downto 0);
signal logic_e_out : STD_LOGIC_VECTOR(7 downto 0);

begin
c1:adder port map(A => A, B => B, Cin => Cin, Sum => sum_out, Cout => Cout);
c2:logic port map(A => A, B => B, C => logic_c_out, D => logic_d_out, E => logic_e_out);
c3:mux port map(Sel => Sel, A => sum_out, B => logic_c_out, C => logic_d_out, D => logic_e_out, E => AluOut);

end Structural;
