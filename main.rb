require_relative "lib/caesar_cipher"

test = CaesarCipher.new
test.output_cipher("Jesus loves you!", 5)
test.output_cipher("#fea6340-", 26)
