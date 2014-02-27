def check_for_winner(board)
  board.any? do |row|
    row.all? { |position| position == "X" } || row.all? { |position| position == "O" }
  end
end
def draw(board)
  board.each do |row|
    row.each do |position|
      print position
    end
    puts
  end
end
board = []
row = ["-"] * 3
board = [row] * 3

players = []
draw(board)
print "Please enter the name for player #1: "
players << gets.strip
print "Please enter the name for player #2: "
players << gets.strip

winner = nil

until winner do
  players.each_with_index do |player, index|
    print "#{player}, please put in your X position: "
    moveX = gets.strip.to_i
    print "#{player}, please put in your Y position: "
    moveY = gets.strip.to_i
    if board[moveY][moveX] == "-"
      if (index + 1) % 2 == 0
        board[moveY][moveX] = "X"
        draw(board)
      else
        board[moveY][moveX] = "O"
        draw(board)
      end
    else
      puts "Sorry, #{player}, that position is already taken."
    end

    if check_for_winner(board)
      winner = player
      puts "Congratulations, #{winner}! You win!"
      break
    end
  end
end
