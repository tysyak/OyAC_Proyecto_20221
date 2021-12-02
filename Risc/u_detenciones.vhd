library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity u_detenciones is
	Port( 
			selregr : in STD_LOGIC_VECTOR (3 downto 0);
			selregrid : in STD_LOGIC_VECTOR (2 downto 0);
			selregrex : in STD_LOGIC_VECTOR (2 downto 0);
			ifidwrite : out STD_lOGIC := '1';
			PCWrite : out STD_logic   :='1';
			selctrl : out STD_LOGIC :='0';
			--burbuja
			selregr2 : out STD_LOGIC_VECTOR (3 downto 0);
			sels1 : out STD_LOGIC;
			sr : out STD_LOGIC;
			cin : out STD_LOGIC;
			sels2 : out STD_LOGIC;
			seldato : out STD_LOGIC;
			selsrc : out STD_LOGIC_VECTOR (2 downto 0);
			seldir : out STD_LOGIC_VECTOR(1 downto 0);
			selop : out STD_LOGIC_VECTOR (3 downto 0);
			selresult : out STD_LOGIC_VECTOR (1 downto 0);
			selc : out STD_LOGIC;
			cadj : out STD_LOGIC;
			selfalgs : out STD_LOGIC_VECTOR (3 downto 0);
			selbranch : out STD_LOGIC_VECTOR (2 downto 0);
			vf : out STD_LOGIC;
			selregw : out STD_LOGIC_VECTOR (2 downto 0);
			memw : out STD_LOGIC;
			seldirw : out STD_LOGIC_VECTOR (1 downto 0));
end u_detenciones;

architecture Behavioral of u_detenciones is
begin
	process(selregr,selregrid,selregrex)
	begin
		--burbuja
				selregr2 <= "0000";
				sels1 <= '0';
				sr <= '0';
				cin <= '0';
				sels2 <= '0';
				seldato <= '0';
				selsrc <= "000";
				seldir <= "00";
				selop <= "0000";
				selresult <= "00";
				selc <= '0';
				cadj <= '0';
				selfalgs <= "0000";
				selbranch <= "000";
				vf <= '1';
				selregw <= "000";
				memw <= '0';
				seldirw  <= "00"; 
		if selregr = X"1" and (selregrid =x"1" or selregrex =x"4")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"2" and (selregrid =x"2" or selregrex =x"4")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"3" and (selregrid =x"3" or selregrex =x"4")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"4" and (selregrid =x"1" or selregrex =x"1")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"5" and (selregrid =x"4" or selregrex =x"4")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"6" and (selregrid =x"1" or selregrex =x"2")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"7" and (selregrid =x"1" or selregrex =x"3")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
				
		 elsif selregr = X"8" and (selregrid =x"5" or selregrex =x"5")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"9" and (selregrid =x"2" or selregrex =x"2")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"A" and (selregrid =x"3" or selregrex =x"3")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"B" and (selregrid =x"6" or selregrex =x"6")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"C" and (selregrid =x"1" or selregrex =x"6")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"D" and (selregrid =x"4" or selregrex =x"6")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"E" and (selregrid =x"2" or selregrex =x"6")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		 elsif selregr = X"F" and (selregrid =x"3" or selregrex =x"6")  then
				ifidwrite <= '0';
				PCWrite <= '0';
				selctrl <= '1';
		else 
				
				ifidwrite <= '1';
				PCWrite <= '1';
				selctrl <= '0';
		end if;
	end process;

end Behavioral;
