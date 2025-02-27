
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder is
    Port ( A, B, Cin : in STD_LOGIC;
           C, Cout : out STD_LOGIC);
end Adder;

architecture Logic of Adder is

begin
    C <= (not A and not B and Cin) or (A and not B and not Cin) or (A and B and not Cin) or (A and B and Cin);
    
    Cout <= (A and not B and not Cin) or (not A and B and not Cin) or (not A and not B and Cin) or (A and B and Cin);

end Logic;
