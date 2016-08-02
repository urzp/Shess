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
    transform_pawn( figure, board) if figure.class == Pawn && ( figure.position[1] == "1" || figure.position[1] == "8" )
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
        figure = Knight.new(pawn.color)
    end
    figure.position = pawn.position
    board.add_figure(figure)
    puts figure.position
    pawn.position = :basket
  end

  def broken?(target, board, color)
    figures =  board.figures.select{ |figure| figure.color == color && figure.position[0].between?("A", "H") }
    cover_figures = figures.select { |figure| figure.allowed_turn( target, board, true) }
    return cover_figures if cover_figures != []
    return false
  end
  
  def any_move_to?(target, board, color)
    figures =  board.figures.select{ |figure| figure.color == color && figure.position[0].between?("A", "H") }
    cover_figures = figures.select { |figure| figure.allowed_turn( target, board) }
    return cover_figures if cover_figures != []
    return false
  end

  def ability_block_figure?(figure, target, board)
    return false if figure.class == Pawn || figure.class == Knight || figure.class == King
    derection = figure.find_derection(target)
    return true if figure.scan_derect(derection, target){ |cell|   any_move_to?(cell, board, figure.enimy_color)  }
    return false
  end

end
