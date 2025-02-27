
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Adder_test is
--  Port ( );
end Adder_test;

architecture Test of Adder_test is

    Component Adder
    port ( A, B, Cin : in STD_LOGIC;
           C, Cout : out STD_LOGIC);
    end component;

for U1: Adder use entity WORK.Adder(Logic);

signal A_signal, B_signal: std_logic;
signal Cin_signal: std_logic;
signal C_signal: std_logic;
signal Cout_signal: std_logic;

begin
U1: Adder port map(A_signal, B_signal, Cin_signal, C_signal, Cout_signal);

process 
begin
--case 0:
    A_signal <= '0';
    B_signal <= '0';
    Cin_signal <= '0';
    wait for 10ns;
    assert(C_signal = '0') report "Failed case 0 - C" severity error;
    assert(Cout_signal = '0') report "Failed case 0 - Cout" severity error;
    wait for 40ns;
    
--case 1:
    A_signal <= '0';
    B_signal <= '0';
    Cin_signal <= '1';
    wait for 10ns;
    assert(C_signal = '1') report "Failed case 1 - C" severity error;
    assert(Cout_signal = '0') report "Failed case 1 - Cout" severity error;
    wait for 40ns;

--case 2:
    A_signal <= '0';
    B_signal <= '1';
    Cin_signal <= '0';
    wait for 10ns;
    assert(C_signal = '1') report "Failed case 2 - C" severity error;
    assert(Cout_signal = '0') report "Failed case 2 - Cout" severity error;
    wait for 40ns;

--case 3:
    A_signal <= '0';
    B_signal <= '1';
    Cin_signal <= '1';
    wait for 10ns;
    assert(C_signal = '0') report "Failed case 3 - C" severity error;
    assert(Cout_signal = '1') report "Failed case 3 - Cout" severity error;
    wait for 40ns;

--case 4:
    A_signal <= '1';
    B_signal <= '0';
    Cin_signal <= '0';
    wait for 10ns;
    assert(C_signal = '1') report "Failed case 4 - C" severity error;
    assert(Cout_signal = '0') report "Failed case 4 - Cout" severity error;
    wait for 40ns;

--case 5:
    A_signal <= '1';
    B_signal <= '0';
    Cin_signal <= '1';
    wait for 10ns;
    assert(C_signal = '0') report "Failed case 5 - C" severity error;
    assert(Cout_signal = '1') report "Failed case 5 - Cout" severity error;
    wait for 40ns;

--case 6:
    A_signal <= '1';
    B_signal <= '1';
    Cin_signal <= '0';
    wait for 10ns;
    assert(C_signal = '0') report "Failed case 6 - C" severity error;
    assert(Cout_signal = '1') report "Failed case 6 - Cout" severity error;
    wait for 40ns;

--case 7:
    A_signal <= '1';
    B_signal <= '1';
    Cin_signal <= '1';
    wait for 10ns;
    assert(C_signal = '1') report "Failed case 7 - C" severity error;
    assert(Cout_signal = '1') report "Failed case 7 - Cout" severity error;
    wait for 40ns;
            
end process;
                
    
end Test;
