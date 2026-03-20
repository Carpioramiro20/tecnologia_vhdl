library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ffd is
    port(
        d : in std_logic;
        clk : out in std_logic;
        q : out std_logic;
        nq : out std_logic;

    );
end entity ffd;

architecture beh of ffd is
begin
/*    process(clk, d, rst) //sincronico lista sensitiva
    begin
      if rising_edge(clk) then
        if rst = '1' then
            q<= '0';
        else
            q<= d;
        end if;
*/
        process(clk, rst) //asincronico
        begin
        if rst = 1 then
            q <= 0;
        elsif rising_edge(clk) then
            q <= d;
        end if;
        end process;
end architecture;

*/Si de repente yo tengo una señal negada en un mux por ej.
signal s_inv : std_logic;



fuera del process
s<= not s_inv  (proceso liviano)

otra opcion
process (s_inv)
begin
    s<=not s_inv;
end process

