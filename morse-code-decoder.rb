def decode_char(char)
  case char
    when '.-'
      return 'A'
    when '-...'
      return 'B'
    when '-.-.'
      return 'C'
    when '-..'
      return 'D'
    when '.'
      return 'E'
    when '..-.'
      return 'F'
    when '--.'
      return 'G'
    when '....'
      return 'H'
    when '..'
      return 'I'
    when '.---'
      return 'J'
    when '-.-'
      return 'K'
    when '.-..'
      return 'L'
    when '--'
      return 'M'
    when '-.'
      return 'N'
    when '---'
      return 'O'
    when '.--.'
      return 'P'
    when '--.-'
      return 'Q'
    when '.-.'
      return 'R'
    when '...'
      return 'S'
    when '-'
      return 'T'
    when '..-'
      return 'U'
    when '...-'
      return 'V'
    when '.--'
      return 'W'
    when '-..-'
      return 'X'
    when '-.--'
      return 'Y'
    when '--..'
      return 'Z'
    when '.----'
      return '1'
    when '..---'
      return '2'
    when '...--'
      return '3'
    when '....-'
      return '4'
    when '.....'
      return '5'
    when '-....'
      return '6'
    when '--...'
      return '7'
    when '---..'
      return '8'
    when '----.'
      return '9'
    when '-----'
      return '0'
    else 
      return -1
  end
end

def decode_word(word)
  decoded_word = ''

  word.split(' ').each do |i|
    decoded_word+=decode_char(i)
  end

  return decoded_word
end 

def decode(message)

  decoded_message = ''

  message.split('   ').each do |i|
    decoded_message += decode_word(i)+' '
  end

  return decoded_message
end

puts decode_char(".-")
puts decode_word("-- -.--")
puts decode("-- -.--   -. .- -- .")
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
