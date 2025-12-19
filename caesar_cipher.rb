$LETTERS_DOWN = "abcdefghijklmnopqrstuvwxyz"
$LETTERS_UP = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

def shift_letter(letter, shift_factor)
  if($LETTERS_DOWN.include?(letter))
    $LETTERS_DOWN[($LETTERS_DOWN.index(letter) + shift_factor) % 26]
  elsif($LETTERS_UP.include?(letter))
    $LETTERS_UP[($LETTERS_UP.index(letter) + shift_factor) % 26]
  else
    letter
  end
end

def caesar_cipher(text, shift_factor)
  puts text
      .chars
      .map { |letter| shift_letter(letter, shift_factor) }.join
end

caesar_cipher("Jesus loves you!", 5)
caesar_cipher("This also works.", 26)