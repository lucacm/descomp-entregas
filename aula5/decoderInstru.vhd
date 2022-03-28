library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( Entrada : in std_logic_vector(3 downto 0);
         Saida : out std_logic_vector(5 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  

  begin
saida <= "0000000" when Entrada = NOP  else
         "0010010" when Entrada = LDA  else
         "0011010" when Entrada = SOMA else
         "0010110" when Entrada = SUB  else
			"0110000" when Entrada = LDI  else
			"0000001" when Entrada = STA  else
			"1000000" when Entrada = JMP  else
         "0000000";  -- NOP para os opcodes Indefinidos
end architecture;