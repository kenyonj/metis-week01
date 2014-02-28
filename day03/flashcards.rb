puts "Welcome to my flashcard app!"
puts "-" * 28

card_1 = { front: "Hello", back: "Hola" }
card_2 = { front: "Goodbye", back: "Adios" }
deck = [card_1, card_2]

deck.each do |card|
  puts "Guess the answer to #{card[:front]}"
  correct_guess = false

  3.times do
    print "> "
    guess = gets.strip

    if guess.downcase == card[:back].downcase
      correct_guess = true
      break
    end
  end

  if correct_guess
    puts "You are correct!"
  else
    puts "Sorry, it was actually #{card[:back]}."
  end
end
