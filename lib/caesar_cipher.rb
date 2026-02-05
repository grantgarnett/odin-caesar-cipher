# This class contains all of the needed functionality
# to output a caesar cipher of a string
class CaesarCipher
  def output_cipher(string, shift_factor)
    puts string
      .chars
      .map { |char| shift_char(char, shift_factor) }.join
  end

  def shift_char(char, shift)
    char_num = char.ord
    if char_num.between?(65, 90) || char_num.between?(97, 122)
      shift_letter(char, shift)
    else
      char
    end
  end

  def shift_letter(letter, shift)
    base = letter.ord < 97 ? 65 : 97
    letter_num = letter.ord - base
    (((letter_num + shift) % 26) + base).chr
  end
end
