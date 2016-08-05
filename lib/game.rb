class Game

  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def enimy_player(player)
    return @player_2 if @player_1 == player
    return @player_1 if @player_2 == player
  end

  def turn(player, turn, board)
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

  def main_meny
    puts "============================================================================================================"
    puts
    puts
    puts "             \u2592\u2592\u2592\u2592"
    puts "           \u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592"
    puts "         \u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592"
    puts "         \u2592\u2592\u2592\u2592    \u2592\u2592\u2592\u2592"
    puts "        \u2592\u2592\u2592\u2592\u2592      "
    puts "        \u2592\u2592\u2592\u2592\u2592\u2592              \u2592\u2592\u2592                 "
    puts "         \u2592\u2592\u2592\u2592\u2592\u2592             \u2592\u2592\u2592"
    puts "           \u2592\u2592\u2592\u2592\u2592\u2592           \u2592\u2592\u2592"
    puts "             \u2592\u2592\u2592\u2592\u2592\u2592         \u2592\u2592\u2592  "
    puts "              \u2592\u2592\u2592\u2592\u2592\u2592\u2592       \u2592\u2592\u2592     \u2592\u2592\u2592             \u2592\u2592\u2592              \u2592\u2592\u2592          \u2592\u2592\u2592"
    puts "               \u2592\u2592\u2592\u2592\u2592\u2592\u2592      \u2592\u2592\u2592  \u2592\u2592\u2592\u2592\u2592\u2592           \u2592\u2592\u2592\u2592\u2592\u2592\u2592          \u2592\u2592\u2592\u2592\u2592\u2592\u2592      \u2592\u2592\u2592\u2592\u2592\u2592\u2592     "
    puts "                \u2592\u2592\u2592\u2592\u2592\u2592      \u2592\u2592\u2592 \u2592\u2592\u2592  \u2592\u2592\u2592       \u2592\u2592\u2592\u2592\u2592   \u2592\u2592\u2592\u2592\u2592     \u2592\u2592\u2592\u2592  \u2592\u2592\u2592\u2592    \u2592\u2592\u2592\u2592  \u2592\u2592\u2592\u2592  "
    puts "                \u2592\u2592\u2592\u2592\u2592\u2592      \u2592\u2592\u2592\u2592\u2592\u2592    \u2592\u2592\u2592     \u2592\u2592\u2592\u2592     \u2592\u2592\u2592\u2592     \u2592\u2592\u2592\u2592          \u2592\u2592\u2592\u2592"
    puts "               \u2592\u2592\u2592\u2592\u2592\u2592       \u2592\u2592\u2592\u2592\u2592    \u2592\u2592\u2592      \u2592\u2592\u2592\u2592     \u2592\u2592\u2592\u2592     \u2592\u2592\u2592\u2592          \u2592\u2592\u2592\u2592"
    puts "              \u2592\u2592\u2592\u2592\u2592\u2592        \u2592\u2592\u2592\u2592    \u2592\u2592\u2592      \u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592          \u2592\u2592\u2592\u2592          \u2592\u2592\u2592\u2592 "
    puts "             \u2592\u2592\u2592\u2592\u2592\u2592         \u2592\u2592\u2592     \u2592\u2592\u2592      \u2592\u2592\u2592\u2592\u2592\u2592                  \u2592\u2592\u2592\u2592          \u2592\u2592\u2592\u2592 "
    puts "     \u2592\u2592\u2592\u2592    \u2592\u2592\u2592\u2592\u2592          \u2592\u2592\u2592     \u2592\u2592\u2592        \u2592\u2592\u2592\u2592\u2592                   \u2592\u2592\u2592\u2592         \u2592\u2592\u2592\u2592 "
    puts "       \u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592            \u2592\u2592\u2592      \u2592\u2592\u2592          \u2592\u2592\u2592\u2592\u2592                 \u2592\u2592\u2592\u2592         \u2592\u2592\u2592\u2592  "
    puts "         \u2592\u2592\u2592\u2592\u2592\u2592             \u2592\u2592\u2592       \u2592\u2592\u2592            \u2592\u2592\u2592\u2592\u2592       \u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592     \u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592   "
    puts
    puts
    puts
    puts "                                     1. Help      "
    puts "                                     2. Start     "
    puts "                                     3. Continue  "
    puts "                                     4. Save game "
    puts "                                     5. Load gqme "
    puts "                                     6. Exit game "
    puts
    puts
    puts
    puts "============================================================================================================"
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


end
