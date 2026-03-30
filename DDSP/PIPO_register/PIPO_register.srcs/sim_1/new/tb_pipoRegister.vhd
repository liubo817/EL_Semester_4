library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_pipoRegister is
end tb_pipoRegister;

architecture Behavioral of tb_pipoRegister is

    -- DUT component
    component pipoRegister
        Port ( clk    : in  STD_LOGIC;
               Reset  : in  STD_LOGIC;
               Input  : in  STD_LOGIC_VECTOR(0 to 7);
               Output : out STD_LOGIC_VECTOR(0 to 7));
    end component;

    -- Testbench signals
    signal clk_tb    : STD_LOGIC := '0';
    signal Reset_tb  : STD_LOGIC := '0';
    signal Input_tb  : STD_LOGIC_VECTOR(0 to 7) := (others => '0');
    signal Output_tb : STD_LOGIC_VECTOR(0 to 7);

    constant clk_period : time := 10 ns;

begin

    -- Instantiate DUT
    uut: pipoRegister
        Port map (
            clk    => clk_tb,
            Reset  => Reset_tb,
            Input  => Input_tb,
            Output => Output_tb
        );

    -- Clock process
    clk_process : process
    begin
        while true loop
            clk_tb <= '0';
            wait for clk_period/2;
            clk_tb <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Apply reset
        Reset_tb <= '1';
        wait for 20 ns;
        Reset_tb <= '0';

        -- Test vectors
        Input_tb <= "10101010";
        wait for clk_period;

        Input_tb <= "11110000";
        wait for clk_period;

        Input_tb <= "00001111";
        wait for clk_period;

        Input_tb <= "11001100";
        wait for clk_period;

        -- End simulation
        wait for 20 ns;
        assert false report "Simulation finished" severity note;
        wait;
    end process;

end Behavioral;