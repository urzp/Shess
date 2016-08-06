class Game

  attr :player_1, :player_2, :board, :status

  def initialize(player_1,player_2, board)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    @status = :new
  end

  def status=(status)
    @status = status
  end

  def enimy_player(player)
    return @player_2 if @player_1 == player
    return @player_1 if @player_2 == player
  end

  def turn(player, turn)
    board = @board
    start = turn[0]
    target = turn[1]
    figure = board.figure(start)
    figure_t = board.figure(target)
    figure.turn(target, board)
    transform_pawn( figure, board) if figure.class == Pawn && ( figure.position[1] == "1" || figure.position[1] == "8" )
    figure_t.bit if figure_t
    board.draw
    puts "The #{enimy_player(player).color} King is under Shah ! " if board.check_sash( enimy_player(player).color )
    puts "For the #{enimy_player(player).color} player is Mat !!!" if board.check_mat( enimy_player(player).color )
  end


  def transform_pawn(selection = nil, pawn, board)
    board = @board
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


end
