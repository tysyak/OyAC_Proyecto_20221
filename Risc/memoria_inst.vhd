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

  type memory is array(0 to 70) of std_logic_vector(31 downto 0);
  signal memoria : memory;
begin

  --2 * 6 ----------------------------------------------------------------------
  memoria(0) <= x"00860006";
  memoria(1) <= x"00010000";
  memoria(2) <= x"00B70002";
  memoria(3) <= x"00010000";
  memoria(4) <= x"00010000";
  memoria(5) <= x"00860003";
  memoria(6) <= x"00010000";
  memoria(7) <= x"00B70003";
  memoria(8) <= x"00010000";
  memoria(9) <= x"00010000";
  memoria(10) <= x"00860000";
  memoria(11) <= x"00010000";
  memoria(12) <= x"00B70000";
  memoria(13) <= x"00010000";
  memoria(14) <= x"00010000";
  memoria(15) <= x"00960002";
  memoria(16) <= x"00010000";
  memoria(17) <= x"00B70004";
  memoria(18) <= x"00010000";
  memoria(19) <= x"00010000";
  memoria(20) <= x"00010000";
  memoria(21) <= x"00960000";
  memoria(22) <= x"00010000";
  memoria(23) <= x"00D60004";
  memoria(24) <= x"00010000";
  memoria(25) <= x"00110000";
  memoria(26) <= x"00270034";
  memoria(27) <= x"00010000";
  memoria(28) <= x"00010000";
  memoria(29) <= x"00010000";
  memoria(30) <= x"00010000";
  memoria(31) <= x"00960000";
  memoria(32) <= x"00010000";
  memoria(33) <= x"004C0000";
  memoria(34) <= x"00010000";
  memoria(35) <= x"00B70000";
  memoria(36) <= x"00010000";
  memoria(37) <= x"00010000";
  memoria(38) <= x"00960004";
  memoria(39) <= x"00D60002";
  memoria(40) <= x"00010000";
  memoria(41) <= x"00010000";
  memoria(42) <= x"001B0000";
  memoria(43) <= x"00010000";
  memoria(44) <= x"00D60003";
  memoria(45) <= x"00010000";
  memoria(46) <= x"00B70004";
  memoria(47) <= x"00010000";
  memoria(48) <= x"00960000";
  memoria(49) <= x"00010000";
  memoria(50) <= x"00010000";
  memoria(51) <= x"00270018";
  memoria(52) <= x"00000000";
  memoria(53) <= x"00000000";
  memoria(54) <= x"00000000";
  memoria(55) <= x"00000000";
  memoria(56) <= x"00000000";
  memoria(57) <= x"00000000";
  memoria(58) <= x"00000000";
  memoria(59) <= x"00000000";
  memoria(60) <= x"00000000";
  memoria(61) <= x"00000000";
  memoria(62) <= x"00000000";
  memoria(63) <= x"00000000";
  memoria(64) <= x"00000000";
  memoria(65) <= x"00000000";
  memoria(66) <= x"00000000";
  memoria(67) <= x"00000000";


  process(direccion)
  begin
    datos <= memoria(conv_integer(unsigned(direccion)));
  end process;
end Behavioral;
