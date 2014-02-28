require 'pp'
dictionary = []
#command_line_args = ""#ARGV.strip
amount_of_guesses_allowed = 6

def read_dictionary(dictionary)#, command_line_args)
#  if command_line_args[0].to_s != ""
  IO.foreach("/usr/share/dict/words" ) { |word| dictionary << word.chomp.downcase }
# else
#   puts "You must specifiy a dictionary file. Example: ruby hangman.rb /usr/share/dict/words"
# end
end

read_dictionary(dictionary)#, command_line_args)
chosen_word = dictionary.sample
correct_guesses = []
winner = nil
bad_guesses = []
chosen_letters = chosen_word.split(//)

puts "Welcome to Hangman!"
puts "You have #{amount_of_guesses_allowed} guesses left."
puts "_" * chosen_letters.length
print "> "
letter_guess = gets.chomp

until winner do
  if chosen_letters.any? { |letter| letter == letter_guess }
    correct_guesses << letter_guess
    correct_guesses.uniq!
  else
    puts "Sorry, that letter does not exist in the word."
    bad_guesses << letter_guess
    letter_guess = ""
    amount_of_guesses_allowed = amount_of_guesses_allowed - 1
  end

  puts "You have #{amount_of_guesses_allowed} guesses left."
  print "You have already guessed these letters:"
  pp bad_guesses.sort
  chosen_letters.each do |letter|
    if correct_guesses.include? letter
      print letter
    else
      print "_"
    end
  end
  print "> "
  letter_guess = gets.chomp
end
