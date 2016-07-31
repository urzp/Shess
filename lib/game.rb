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

  def transform_pawn(selection = nil, pawn, board)
    while selection != "Q" && selection != "R" && selection != "B" && selection != "K" do
    puts "Puts the new figure. Where \"Q\" - Queen, \"R\" - Rook, \"B\" - Bishop, \"K\" - Knight"
    selection = gets.upcase.chomp
    end
    case  selection
      when "Q"
         figure = Queen.new(pawn.color)
      when "R"
        figure = Rook.new(pawn.color)
      when "B"
        figure = Bishop.new(pawn.color)
      when "K"
        figure = Kight.new(pawn.color)
    end
    figure.position = pawn.position
    board.add_figure(figure)
    puts figure.position
    pawn.position = :basket
  end
end
