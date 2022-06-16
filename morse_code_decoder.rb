@morse_code_dict = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}
def decode_char(char)
  @morse_code_dict[char]
end

def decode_word(word)
  decoded_word = ''

  word.split.each do |i|
    decoded_word += decode_char(i)
  end

  decoded_word
end

def decode(message)
  decoded_message = ''

  message.split('   ').each do |i|
    decoded_message += "#{decode_word(i)} "
  end

  decoded_message
end
