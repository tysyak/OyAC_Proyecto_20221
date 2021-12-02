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
  memoria(0) <= x"00860002"; -- LDAA #0002 ; (ACCA) <- 0x0002    int a
  memoria(1) <= x"00010000"; -- NOP
  memoria(2) <= x"00B70001"; -- STAA $#0001 ; (mem[1]) <- (ACCA)
			     -- int a=2
  memoria(3) <= x"00010000"; -- NOP
  memoria(4) <= x"00010000"; -- NOP
  memoria(5) <= x"00860006"; -- LDAA #0002 ; (ACCA) <- 0x0006
  memoria(6) <= x"00010000"; -- NOP
  memoria(7) <= x"00B70002"; -- STAA $#0002 ; (mem[2]) <- (ACCA)
			     -- int b=6
  memoria(8) <= x"00010000"; -- NOP
  memoria(9) <= x"00010000"; -- NOP

  memoria(10)<= x"00860001";
  memoria(11)<= x"00B70003"; -- STAA $#0003 ; (mem[3]) <- (ACCA)
			     -- int i=1
  memoria(12)<= x"00010000"; -- NOP
  memoria(13)<= x"00010000"; -- NOP
  memoria(14)<= x"00960000"; -- LDAA $#0000 ; (ACCA) <- (mem[0]) a ETIQUETA_A
  memoria(15)<= x"00010000"; -- NOP
  memoria(16)<= x"00D60000"; -- LDAB $#0000 ; (ACCB) <- (mem[0]) a
  memoria(17)<= x"00010000"; -- NOP
  memoria(18)<= x"001B0001"; -- ABA ; (ACCA) <- (ACCA) + (ACCB)  ... a + a
  memoria(19)<= x"00B70004"; -- STAA $#0001 ; (mem[4]) <- (ACCA) c = ...
			     --
  memoria(20)<= x"00960003"; -- LDAA $#0003 ; (ACCA) <- (mem[3]) i
  memoria(21)<= x"004C0000"; -- INCA ; (ACCA) <- (ACCA) + 1      ... + i+1
  memoria(22)<= x"00B70003"; -- STAA $#0003 ; (mem[3]) <- (ACCA) i = ...
			     --

  memoria(23)<= x"00D60002"; -- LDAB $#0000 ; (ACCB) <- (mem[2]) b
  memoria(24)<= x"00110000"; -- CBA ; (ACCA) - (ACCB) ; update flags (N, Z, V, C)
  memoria(25)<= x"00120004"; -- BLO ETIQUETA_A;

  memoria(26)<= x"004C0000"; -- INCA ; (ACCA) <- (ACCA) + 1
  memoria(27)<= x"00C60001"; -- LDAA #0001 ; (ACCB) <- 0x0001
  memoria(28)<= x"00B70000"; -- STAA $#0000 ; (mem[0]) <- (ACCA)
  memoria(29)<= x"00D60002"; -- LDAB $#0002 ; (ACCB) <- (mem[2])
  memoria(30)<= x"00110000"; -- CBA ; (ACCA) - (ACCB) ; update flags (N, Z, V, C)
  memoria(41)<= x"0012000E"; -- BLO ETIQUETA_A;

  memoria(42) <= x"00010000";
  memoria(43) <= x"00010000";
  memoria(44) <= x"00010000";
  memoria(46) <= x"00010000";
  memoria(47) <= x"00010000";
  memoria(48) <= x"00010000";
  memoria(49) <= x"00010000";
  memoria(50) <= x"00010000";


  process(direccion)
  begin
    datos <= memoria(conv_integer(unsigned(direccion)));
  end process;
end Behavioral;
