class Game

  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def turn(player, turn, board)
    start = turn[0]
    target = turn[1]
    figure = board.figure(start)
    figure.turn(target)
    figure = board.figure(end)
    figure.bit if figure && figure.class == King
  end

end
