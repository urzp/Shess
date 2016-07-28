require '../lib/player'
require '../lib/board'
require '../lib/figure'

board = Board.new
board.draw
player = Human.new(:white)
print player.turn(board)
puts
