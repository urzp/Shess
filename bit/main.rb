require '../lib/player'
require '../lib/board'
require '../lib/figure'
require '../lib/game'

board = Board.new

board.draw
player_1 = Human.new(:white)
player_2 = Human.new(:black)
game = Game.new(player_1, player_2)

1.upto(30) do
  turn = false
  while turn == false do
     turn = player_1.turn(board)
  end
  game.turn(player_1, turn, board)
  turn = false
  while turn == false do
     turn = player_2.turn(board)
  end
  game.turn(player_2, turn, board)
end
