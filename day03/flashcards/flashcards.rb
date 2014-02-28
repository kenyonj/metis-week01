puts "Welcome to my flashcard app!"
puts "-" * 28

class Card
  def initialize(front, back)
    @front = front
    @back = back
  end

  def front
    @front
  end

  def back
    @back
  end

end

deck = []
deck_file = File.open("decks", "r")
card_count = deck_file.gets.to_i
card_count.times do
  front = deck_file.gets.strip
  back = deck_file.gets.strip
  deck << Card.new(front,back)
end

deck.each do |card|
  puts "Guess the answer to #{card.front}"
  correct_guess = false

  3.times do
    print "> "
    guess = gets.strip

    if guess.downcase == card.back.downcase
      correct_guess = true
      break
    end
  end

  if correct_guess
    puts "You are correct!"
  else
    puts "Sorry, it was actually #{card.back}."
  end
end
