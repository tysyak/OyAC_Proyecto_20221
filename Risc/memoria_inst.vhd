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

  type memory is array(0 to 50) of std_logic_vector(31 downto 0);
  signal memoria : memory;
begin

  --2 * 6 ----------------------------------------------------------------------
  memoria(0) <= x"00010000";
  memoria(1) <= x"00010000";
  memoria(2) <= x"00010000";
  memoria(3) <= x"00010000";
  memoria(4) <= x"00010000";
  memoria(5) <= x"00010000";
  memoria(6) <= x"00010000";
  memoria(7) <= x"00010000";
  memoria(8) <= x"00010000";
  memoria(9) <= x"00010000";
  memoria(10)<= x"00010000";
  memoria(11)<= x"00010000";
  memoria(12)<= x"00010000";
  memoria(13)<= x"00010000";
  memoria(14)<= x"00010000";
  memoria(15)<= x"00010000";
  memoria(16)<= x"00010000";
  memoria(17)<= x"00010000";
  memoria(18)<= x"00010000";
  memoria(19)<= x"00010000";
  memoria(20)<= x"00010000";
  memoria(21)<= x"00010000";
  memoria(22)<= x"00010000";
  memoria(23)<= x"00010000";
  memoria(24)<= x"00010000";
  memoria(25)<= x"00010000";
  memoria(26)<= x"00010000";
  memoria(27)<= x"00010000";
  memoria(28)<= x"00010000";
  memoria(29)<= x"00010000";
  memoria(30)<= x"00010000";
  memoria(41)<= x"00010000";
  memoria(42)<= x"00010000";
  memoria(43)<= x"00010000";
  memoria(44)<= x"00010000";
  memoria(46)<= x"00010000";
  memoria(47)<= x"00010000";
  memoria(48)<= x"00010000";
  memoria(49)<= x"00010000";
  memoria(50)<= x"00010000";


  process(direccion)
  begin
    datos <= memoria(conv_integer(unsigned(direccion)));
  end process;
end Behavioral;
