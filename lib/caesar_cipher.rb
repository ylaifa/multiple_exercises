def letter_transpose(letter,number)
  letter_downcase = letter.downcase
  new_letter = letter_downcase.ord + number
  if letter_downcase.ord >= 97 && letter_downcase.ord <= 122
    if letter == letter_downcase
      new_letter > 122 ? (new_letter - 26).chr : new_letter.chr
    else
      new_letter > 122 ? (new_letter - 26).chr.upcase : new_letter.chr.upcase
    end
  else
    letter
  end
end

def caesar_cipher(message, number)
  message.chars.map {|letter| letter_transpose(letter, number)}.join
end

p caesar_cipher("What a string!", 5)
