#accept difficulty level from user
def print_board(board_size, board_rows, difficulty_level, number_of_mines)
  
end
board_size = 0
difficulty_level = 0
board = []
puts "Welcome to MINESWEEPER!"
loop do
  puts "How big of a map do you want?"
  print "16, 25, 36, 49, 64, 81, or 100: "
  board_size = gets.chomp.to_f
  if [16,25,36,49,64,81,100].include? board_size
    break
  else
    puts "Please select a valid map size option."
  end
end
loop do
  puts "What difficulty level would you like?"
  print "1 - 5 (5 being the hardest): "
  difficulty_level = gets.chomp.to_f
  if [1,2,3,4,5].include? difficulty_level
    break
  else
    puts "Please select a valid difficulty level option."
  end
end
#calculate how many mines there are
number_of_mines = (board_size * (difficulty_level/10)).round

#draw out board, only showing the revealed spaces
board_rows = (Math.sqrt(board_size)).to_i
board_rows.times { |row| board[row] = [false] * board_rows }
print_board(board_size, board_rows, difficulty_level, number_of_mines)
#accept board choice from user, choosing whether it is a flag or a uncovering
