library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mc74_tb is
end entity mc74_tb;

architecture test_mc74 of mc74_tb is
	
	--Declaración de componentes
	component mc74
	port(
		A0,A1,A3,A4,A5,A6,A7 : in std_logic;
        sel : in std_logic_vector(2 downto 0);
        G : in std_logic; --enable activo en bajo
        Y, y : out std_logic -- Y:salida normal - y: salida invertida
    );
	end component;
	
	--Declaración de señales
	signal t_A0 ,t_A1,t_A2,t_A3,t_A4, t_A5, t_A6, t_A7 : std_logic;
	signal t_sel : std_logic_vector(1 downto 0);
    signal t_G : std_logic := '1';
    signal t_Y, t_y : std_logic;


begin
	
	--Instanciación de componentes 
	--y sus conexiones
	mux8a1 : mc74
		port map (
			A0 => t_A0,
			A1 => t_A1,
            A2 => t_A2,
            A3 => t_A3,
            A4 => t_A4,
            A5 => t_A5,
            A6 => t_A6,
            A7 => t_A7,
			sel => t_sel,
			G => t_G,
            Y => t_Y,
            y => t_y
			);
		
	--Estímulos
	estimulos: process
	begin
        G <= "1";
        D <= "10101010";
        wait for 20ns;

	end process;

end architecture test_mc74;

