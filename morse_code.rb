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

morse_letters.select {|key, value| value == str}.keys[0]

end


def decode_word(str)
  split_arr = str.split
  word = ''
  split_arr.each do |char|
    word += decode_char(char)
  end 
  word
end
