require_relative "../lib/caesar_cipher"

# rubocop: disable Metrics/BlockLength
describe CaesarCipher do
  subject(:generic_cipher) { CaesarCipher.new }

  describe("#shift_char") do
    context("when given a letter") do
      it "shifts the letter by 1" do
        expect(generic_cipher).to receive(:puts).with "B"
        generic_cipher.output_cipher("A", 1)
      end

      it "shifts the letter by 28" do
        expect(generic_cipher).to receive(:puts).with "C"
        generic_cipher.output_cipher("A", 28)
      end
    end

    context("when given a non-letter char") do
      it "outputs the char" do
        expect(generic_cipher).to receive(:puts).with "?"
        generic_cipher.output_cipher("?", 51)
      end
    end
  end

  describe("#shift_letter") do
    context("when given a lowercase letter") do
      it "returns a lowercase letter" do
        new_letter = generic_cipher.shift_letter("f", 51)
        expect(new_letter).to eq "e"
      end
    end

    context("when given an uppercase letter") do
      it "returns an uppercase letter" do
        new_letter = generic_cipher.shift_letter("F", 53)
        expect(new_letter).to eq "G"
      end
    end
  end
end
# rubocop: enable Metrics/BlockLength
