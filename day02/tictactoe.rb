def check_for_winner(board)
  check_for_horizontal_winner(board)
  check_for_vertical_winner(board)
  check_for_diagonal_winner(board)
end

def check_for_horizontal_winner(board)
  board.any? do |row|
    row.all? { |position| position == "X" } || row.all? { |position| position == "O" }
  end
end

def check_for_vertical_winner(board)
  board.transpose.any? do |row|
    row.all? { |position| position == "X" } || row.all? { |position| position == "O" }
  end
end

def check_for_diagonal_winner(board)
  back_slash = []
  forward_slash = []
  count = 3

  0.upto(2).each do |position|
    back_slash << board[position][position]
    count = count - 1
    forward_slash << board[position][count]
  end

  back_slash.uniq == ["X"] || forward_slash.uniq == ["O"] || back_slash.uniq == ["O"] || forward_slash.uniq == ["X"]
end

def draw(board)
  board.each do |row|
    row.each do |position|
      print position
    end
    puts
  end
end

board = [
          ["-","-","-"],
          ["-","-","-"],
          ["-","-","-"]
]
players = []
draw(board)
puts
print "Please enter the name for player #1: "
players << gets.strip
print "Please enter the name for player #2: "
players << gets.strip

winner = nil

until winner do
  players.each_with_index do |player, index|
    valid_move = nil
    until valid_move do
      print "#{player}, please put in your X position: "
      moveX = gets.strip.to_i
      print "#{player}, please put in your Y position: "
      moveY = gets.strip.to_i
      if board[moveX][moveY] == "-"
        if (index + 1) % 2 == 0
          board[moveX][moveY] = "X"
          draw(board)
        else
          board[moveX][moveY] = "O"
          draw(board)
        end
        valid_move = "Yes"
      else
        puts "Sorry, #{player}, that position is already taken."
        valid_move = nil
      end

      if check_for_winner(board)
        winner = player
        puts "Congratulations, #{winner}! You win!"
        break
      end
    end
  end
end
