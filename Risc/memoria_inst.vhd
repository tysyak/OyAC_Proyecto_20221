-- memoria de solo lectura

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria_inst is
  Port( direccion : in STD_LOGIC_VECTOR (15 downto 0);
        datos : out STD_LOGIC_VECTOR (31 downto 0));
end memoria_inst;

architecture Behavioral of memoria_inst is

  type memory is array(0 to 67) of std_logic_vector(31 downto 0);
  signal memoria : memory;
begin

  --6 * 8 ----------------------------------------------------------------------
  memoria(0) <= x"00860006"; -- A=6 declaracion a  <<== VALOR DE ENTRADA
  memoria(1) <= x"00010000"; --
  memoria(2) <= x"00B70002"; -- M2 = 6
  memoria(3) <= x"00010000"; --  Fin declaracion a
  memoria(4) <= x"00010000"; --
  memoria(5) <= x"00860008"; -- A=8 declaracion b  <<== VALOR DE ENTRADA
  memoria(6) <= x"00010000"; --
  memoria(7) <= x"00B70003"; -- M3 = 8
  memoria(8) <= x"00010000"; --  Fin Declaración b
  memoria(9) <= x"00010000"; --
  memoria(10) <= x"00860001"; -- A=0 declaracion i
  memoria(11) <= x"00010000"; --
  memoria(12) <= x"00B70000"; -- M0 = 1
  memoria(13) <= x"00010000"; --  Fin Declaración i
  memoria(14) <= x"00010000"; --
  memoria(15) <= x"00960002"; -- A=M2 declaracion aux
  memoria(16) <= x"00010000"; --
  memoria(17) <= x"00B70004"; -- M4 = M2
  memoria(18) <= x"00010000"; --  Fin declaracion aux
  memoria(19) <= x"00010000"; --
  memoria(20) <= x"00010000"; --
  memoria(21) <= x"00010000"; --
  memoria(22) <= x"00D60003"; --  Etiqueta
  memoria(23) <= x"00960000"; --
  memoria(24) <= x"00010000"; --
  memoria(25) <= x"00010000"; --
  memoria(26) <= x"00110000"; --  if a = b then div
  memoria(27) <= x"00270031"; --
  memoria(28) <= x"00010000"; --
  memoria(29) <= x"00010000"; --
  memoria(30) <= x"00010000"; --
  memoria(31) <= x"00010000"; --  else
  memoria(32) <= x"00960004"; -- a=m4(aux)
  memoria(33) <= x"00D60002"; -- b=m2(a)
  memoria(34) <= x"00010000"; --
  memoria(35) <= x"00010000"; --
  memoria(36) <= x"001B0000"; -- a=a+b
  memoria(37) <= x"00010000"; --
  memoria(38) <= x"00D60003"; -- b=m3(b)
  memoria(39) <= x"00010000"; --
  memoria(40) <= x"00B70004"; -- M4=a(aux)
  memoria(41) <= x"00960000"; -- a=m0(i)
  memoria(42) <= x"00010000"; --
  memoria(43) <= x"004C0000"; -- a++
  memoria(44) <= x"00010000"; --
  memoria(45) <= x"00010000"; --
  memoria(46) <= x"00B70000"; -- m0(i)=a
  memoria(47) <= x"007E0016"; --
  memoria(48) <= x"00010000"; --
  memoria(49) <= x"00010000"; --
  memoria(50) <= x"00D60004"; -- b=m4(aux) div
  memoria(51) <= x"00010000"; --
  memoria(52) <= x"00010000"; --
  memoria(53) <= x"00010000"; --
  memoria(54) <= x"00570000"; --
  memoria(55) <= x"00000000"; --
  memoria(56) <= x"00000000"; --
  memoria(57) <= x"00000000"; --
  memoria(58) <= x"00000000"; --
  memoria(59) <= x"00000000"; --
  memoria(60) <= x"00000000"; --
  memoria(61) <= x"00000000"; --
  memoria(62) <= x"00000000"; --
  memoria(63) <= x"00000000"; --
  memoria(64) <= x"00000000"; --
  memoria(65) <= x"00000000"; --
  memoria(66) <= x"00000000"; --
  memoria(67) <= x"00000000"; --




  process(direccion)
  begin
    datos <= memoria(conv_integer(unsigned(direccion)));
  end process;
end Behavioral;
