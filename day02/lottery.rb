names = []
puts "Welcome to the Lottery App!"
puts "Please enter the names of the contestants. Once you have entered in all the name for the lottery, press enter on a blank line."
print "> "

input = gets.strip

while input.length > 0 do
  names << input
  print "> "
  input = gets.strip
end

puts "The winner is... #{names.sample}!"

