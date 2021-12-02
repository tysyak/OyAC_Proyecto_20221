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
  memoria(0) <= x"00860002"; -- ACCA = 2
  memoria(1) <= x"00010000";
  memoria(2) <= x"00010000";
  memoria(3) <= x"00B70000"; -- mem[0] = ACCA
  memoria(4) <= x"00010000";
  memoria(5) <= x"00010000";
  memoria(6) <= x"00860006"; -- ACCA = 6
  memoria(7) <= x"00010000";
  memoria(8) <= x"00010000";
  memoria(9) <= x"00B70001"; -- mem[1] = ACCA
  memoria(10)<= x"00010000";
  memoria(11)<= x"00010000";
  memoria(12)<= x"00860001"; -- ACCA = 1
  memoria(13)<= x"00010000";
  memoria(14)<= x"00010000";
  memoria(15)<= x"00B70002"; -- mem[2] = ACCA
  memoria(16)<= x"00010000";
  memoria(17)<= x"00010000";
  memoria(18)<= x"00860000"; -- ACCA = 0
  memoria(19)<= x"00010000";
  memoria(20)<= x"00010000";
  memoria(21)<= x"00B70003"; -- mem[3] = ACCA
  memoria(22)<= x"00010000";
  memoria(23)<= x"00010000";
  memoria(24)<= x"00960000"; -- ACCA = mem[0] 2
  memoria(25)<= x"00010000";
  memoria(26)<= x"00010000";
  memoria(27)<= x"00D60001"; -- ACCB = mem[1] 6
  memoria(28)<= x"00010000";
  memoria(29)<= x"00010000";
  memoria(30)<= x"001B0000"; -- ACCA = ACCA + ACCB
  memoria(41)<= x"00010000";
  memoria(42)<= x"00010000";
  memoria(43)<= x"00B70003"; -- mem[3] = ACCA
  memoria(44)<= x"00010000";
  memoria(46)<= x"00010000";
  memoria(47)<= x"00D60002"; -- ACCB = mem[2]
  memoria(48)<= x"00010000";
  memoria(49)<= x"00010000";
  memoria(50)<= x"005C0000"; -- ACCB++
  memoria(51)<= x"00010000";
  memoria(52)<= x"00010000";
  memoria(53)<= x"00960003"; -- ACCA = mem[3] 0
  memoria(54)<= x"00D70003";
  memoria(56)<= x"00010000";
  memoria(57)<= x"00D10003"; -- B == mem[3]
  memoria(58)<= x"00120015";
  memoria(59)<= x"00010000";


  process(direccion)
  begin
    datos <= memoria(conv_integer(unsigned(direccion)));
  end process;
end Behavioral;
