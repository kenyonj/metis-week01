dictionary = []
command_line_args = ARGV
amount_of_guesses_allowed = 6

def read_dictionary(dictionary, command_line_args)
  if command_line_args[0].to_s != ""
    File.open("#{command_line_args[0]}", "r") do |word|
      while (line = word.gets)
        dictionary << line.chomp.downcase
      end
    end
  else
    puts "You must specifiy a dictionary file. Example: ruby hangman.rb /usr/share/dict/words"
  end
end

read_dictionary(dictionary, command_line_args)

chosen_word = dictionary.sample
chosen_letters = chosen_word.split(//)
revealed_letters = 
puts "Welcome to Hangman!"
puts "You have #{amount_of_guesses_allowed} guesses left."
puts "_" * chosen_letters.length
puts "> "
letter_guess = gets.chomp

until letter_guess = "" do
  if chosen_letters.any? { |letter| letter == letter_guess }
    #guessed a letter
  else
    puts "Sorry, that letter does not exist in the word."
  end
end

