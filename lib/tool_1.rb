require '../lib/player'
require '../lib/board'
require '../lib/figure'
require '../lib/game'

board = Board.new


player_1 = Human.new(:white)
player_2 = Human.new(:black)
game = Game.new(player_1, player_2)
game.transform_pawn("Q")
