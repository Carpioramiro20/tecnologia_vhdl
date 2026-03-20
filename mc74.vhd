library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux is
  port (
    A0,A1,A3, : in std_logic;
    sel : in std_logic_vector(1 downto 0);
    Y, y : out std_logic
    );
end entity mux;

architecture beh of mux is
begin
  
  --proceso secuencial
  process(A,B,C,D,sel)
  begin
    case sel is
      when "00" =>
        S <= A;
      when "01" =>
        S <= B;
      when "10" =>
        S <= C;
      when "11" =>
        S <= D;
      when others =>
        null;
     end case;     
    end process;
       
end architecture;