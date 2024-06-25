def shift_letter(letter, shift)
    if letter.match?(/[a-z]/)
      ((letter.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    elsif letter.match?(/[A-Z]/)
      ((letter.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    else
      letter
    end
  end
  
  def caesar_cipher(string, shift)
    string.chars.map { |char| shift_letter(char, shift) }.join
  end
  