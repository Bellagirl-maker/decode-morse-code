MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(code)
  MORSE_CODE[code]
end

def decode_word(word)
  letters = word.split
  decoded_word = letters.map { |letter| decode_char(letter) }
  decoded_word.join
end

def decode(message)
  words = message.split('   ')
  decoded_message = words.map { |word| decode_word(word) }
  decoded_message.join(' ')
end

<<<<<<< HEAD
# Example usage:
morse_code = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
=======
morse_code = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
>>>>>>> 7b506920c6353ea645f6fd6ea3e260c54209226b
decoded_message = decode(morse_code)
puts decoded_message
