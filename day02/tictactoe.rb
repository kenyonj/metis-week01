def draw(board)
  board.each do |row|
    row.each do |position|
      print position[:symbol]
    end
    puts
  end
end
board = []
3.times do
  board[board.length] = []
  3.times do
    board[board.length-1].push({symbol: "*", owned: false})
  end
end

draw(board)
players = []
print "Please enter player #1: "
players[0] = gets.strip
print "Please enter player #2: "
players[1] = gets.strip
puts "Congrats, #{players.sample}. You have been chosen to play first."
#randomly assign first player X or O
#ask user for first move
#check if it was a winning move
#redraw board with new move
#

