def decode_char(str)
  morse_letters = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
    'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-.', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }

  morse_letters.select { |_key, value| value == str }.keys[0]
end

def decode_word(str)
  split_arr = str.split
  word = ''
  split_arr.each do |char|
    word += decode_char(char)
  end
  word
end

def decode(str)
  split_arr = str.split('   ')
  sentence = ''
  split_arr.each_with_index do |word, index|
    sentence += decode_word(word)
    sentence += ' ' if index < split_arr.length - 1
  end
  sentence
end
