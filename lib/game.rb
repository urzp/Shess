class Game

  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def turn(player, turn, board)
    start = turn[0]
    target = turn[1]
    figure = board.figure(start)
    figure_t = board.figure(target)
    figure.turn(target)
    figure_t.bit if figure_t && figure_t.class != King
    board.draw
  end

end
