_blankchar = "\u1cc1".encode('utf-8')
def draw(board)
  #  board.each do |row|
  #    row.each do |position|
  #      print position[:symbol]
  #    end
  #    puts
  #  end
  board = [
            ["\u250f".encode('utf-8'), "\u2501".encode('utf-8')*4, "\u2501".encode('utf-8')*4, "\u2501".encode('utf-8')*4, "\u2513".encode('utf-8')],
            ["\u2503".encode('utf-8'), "-"*4,"-"*4,"-"*4, "\u2503".encode('utf-8')],
            ["\u2503".encode('utf-8'), "-","-","-", "\u2503".encode('utf-8')],
            ["\u2503".encode('utf-8'), "-","-","-", "\u2503".encode('utf-8')],
            ["\u2517".encode('utf-8'), "\u2501".encode('utf-8')*4, "\u2501".encode('utf-8')*4, "\u2501".encode('utf-8')*4, "\u251b".encode('utf-8')]
  ]
  board.each do |row|
    row.each do |position|
      print position
    end
    puts
  end

end

board = []
players = []
draw(board)
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

