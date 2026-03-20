library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity M74HC251 is
  port (
    A0,A1,A3,A4,A5,A6,A7 : in std_logic;
    sel : in std_logic_vector(2 downto 0);
    G : in std_logic; --habilitacion
    Y, y : out std_logic
    );
end entity M74HC251;

architecture beh of M74HC251 is
begin
  
  --proceso secuencial
  process(A0,A1,A3,A4,A5,A6,A7,sel, G)
  begin
    case sel is
      when "000" =>
        Y <= A0;
      when "001" =>
        Y <= A1;
      when "010" =>
        Y <= A2;
      when "011" =>
        Y <= A3;
      when "100"=>
        Y <= A4;
      when "101" =>
        Y <= A5; 
      when "110" =>
        Y <= A6;
      when "111" =>
        Y <= A7;
      when others =>
        null;
     end case;     
    end process;
       
end architecture;