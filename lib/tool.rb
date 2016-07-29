require '../lib/player'
require '../lib/board'
require '../lib/figure'
require '../lib/game'

board = Board.new

board.draw
player_1 = Human.new(:white)
player_2 = Human.new(:black)
game = Game.new(player_1, player_2)
turn = player_1.turn(board)
game.turn(player_1, turn, board)
turn = player_2.turn(board)
game.turn(player_2, turn, board)
turn = player_1.turn(board)
game.turn(player_1, turn, board)
turn = player_2.turn(board)
game.turn(player_2, turn, board)
turn = player_1.turn(board)
game.turn(player_1, turn, board)
