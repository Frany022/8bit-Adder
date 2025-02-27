
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eightbit_adder_test is
end eightbit_adder_test;

architecture Test of eightbit_adder_test is

component eightbit_adder
    port( x,y : in STD_LOGIC_VECTOR (7 downto 0);
           ci : in STD_LOGIC;
           co : out STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(7 downto 0));
 end component;
 
 for U1: eightbit_adder use entity WORK.eightbit_adder(logic);
 
 signal x_s,y_s,sum_s: std_logic_vector(7 downto 0);
 signal ci_s,co_s: std_logic;

begin
U1: eightbit_adder port map(x_s,y_s,ci_s,co_s,sum_s);

process
    begin
    x_s <= "10101010";
    y_s <= "01010101";
    ci_s <= '0';
    wait for 40 ns;
  
    x_s <= "11001100";
    y_s <= "11110000";
    ci_s <= '1';
    wait for 40 ns;
  
    x_s <= "11010111";
    y_s <= "01011010";
    ci_s <= '0';
    wait for 40 ns;
  
    x_s <= "10110011";
    y_s <= "11111111";
    ci_s <= '1';
    wait for 40ns;
    end process;


end Test;
