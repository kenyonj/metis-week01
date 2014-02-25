number = rand(10) + 1

puts "Guess my number between 1-10" 
print "> " 
guess = gets.to_i

if guess == number
  puts "You are correct!" 
else
  puts "You are incorrect! The answer was #{number}."
end
