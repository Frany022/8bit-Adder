
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eightbit_adder is
    Port ( x,y : in STD_LOGIC_VECTOR (7 downto 0);
           ci : in STD_LOGIC;
           co : out STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(7 downto 0));
end eightbit_adder;

architecture Logic of eightbit_adder is

component Adder
Port (A, B, Cin: in STD_LOGIC;
      C, Cout: out STD_LOGIC);
end component;

signal carry: STD_LOGIC_VECTOR(6 downto 0);

begin

U1 : Adder port map (x(0),y(0),ci,sum(0),carry(0));
U2 : for i in 1 to 6 generate
U3 : Adder port map (x(i),y(i),carry(i-1),sum(i),carry(i));
end generate;
U4 : Adder port map (x(7),y(7),carry(6),sum(7),co);

end Logic;
