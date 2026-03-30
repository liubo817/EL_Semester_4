library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_nonOverlappingSeq is
end tb_nonOverlappingSeq;

architecture Behavioral of tb_nonOverlappingSeq is

    -- Component declaration of the DUT
    component nonOverlappingSeq
        Port ( clk    : in  STD_LOGIC;
               reset  : in  STD_LOGIC;
               input  : in  STD_LOGIC;
               output : out STD_LOGIC);
    end component;

    -- Signals to connect to DUT
    signal clk    : STD_LOGIC := '0';
    signal reset  : STD_LOGIC := '0';
    signal input  : STD_LOGIC := '0';
    signal output : STD_LOGIC;

    -- Clock period
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the DUT
    uut: nonOverlappingSeq
        Port map (
            clk    => clk,
            reset  => reset,
            input  => input,
            output => output
        );

    -- Clock generation process
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Apply reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for clk_period;

        -- Test sequence: no detection
        input <= '0'; wait for clk_period;
        input <= '1'; wait for clk_period;
        input <= '1'; wait for clk_period;

        -- Test sequence: 1-0-1 (should trigger output = '1')
        input <= '1'; wait for clk_period;
        input <= '0'; wait for clk_period;
        input <= '1'; wait for clk_period;

        -- Another valid sequence
        input <= '1'; wait for clk_period;
        input <= '0'; wait for clk_period;
        input <= '1'; wait for clk_period;

        -- Random sequence
        input <= '0'; wait for clk_period;
        input <= '1'; wait for clk_period;
        input <= '0'; wait for clk_period;
        input <= '0'; wait for clk_period;
        input <= '1'; wait for clk_period;

        -- End simulation
        wait;
    end process;

end Behavioral;