library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mc74_tb is
end entity mc74_tb;

architecture test_mc74 of mc74_tb is
	
	--Declaración de componentes
	component mc74
	port(
		A0,A1,A2,A3,A4,A5,A6,A7 : in std_logic;
        sel : in std_logic_vector(2 downto 0);
        G : in std_logic; --enable activo en bajo
        Y, y : out std_logic -- Y:salida normal - y: salida invertida
    );
	end component;
	
	--Declaración de señales
	signal tb_A0 ,tb_A1,tb_A2,tb_A3,tb_A4, tb_A5, tb_A6, tb_A7 : std_logic := '0';
	signal t_sel : std_logic_vector(2 downto 0) := "000";
    signal t_G : std_logic := '1';
    signal t_Y, t_y : std_logic;


begin
	
	--Instanciación de componentes 
	--y sus conexiones
	mux8a1 : mc74
		port map (
			A0 => tb_A0,
			A1 => tb_A1,
            A2 => tb_A2,
            A3 => tb_A3,
            A4 => tb_A4,
            A5 => tb_A5,
            A6 => tb_A6,
            A7 => tb_A7,
			sel => t_sel,
			G => t_G,
            Y => t_Y,
            y => t_y
			);
		
	--Estímulos
	estimulos: process
	begin
        --Deshabilitación
        t_G <= '1';
        wait for 20 ns;
        --habilitación
        t_G <= '0';
        
        tb_A0 <= '1';
        t_sel <= "000";
        wait for 20 ns;
        tb_A0 <= '0';

        tb_A1 <= '1';
        t_sel <= "001";
        wait for 20 ns;
        tb_A1 <= '0';

        tb_A2 <= '1';
        t_sel <= "010";
        wait for 20 ns;
        tb_A2 <= '0';

        tb_A3 <= '1';
        t_sel <= "011"; 
        wait for 20 ns;
        tb_A3 <= '0';

        tb_A4 <= '1'; 
        t_sel <= "100";
        wait for 20 ns;
        tb_A4 <= '0';

        tb_A5 <= '1'; 
        t_sel <= "101"; 
        wait for 20 ns;
        tb_A5 <= '0'; 

        tb_A6 <= '1'; 
        t_sel <= "110"; 
        wait for 20 ns;
        tb_A6 <= '0';

        tb_A7 <= '1'; 
        t_sel <= "111"; 
        wait for 20 ns;
        tb_A7 <= '0'; 
        wait;
	end process;

end architecture test_mc74;

