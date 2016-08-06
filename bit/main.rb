

require '../lib/player'
require '../lib/board'
require '../lib/figure'
require '../lib/game'

def main_meny()
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
  puts "                                     2. Start new game    "
  puts "                                     3. Continue  "
  puts "                                     4. Save game "
  puts "                                     5. Load game "
  puts "                                     6. Exit game "
  puts
  puts
  puts
  puts "============================================================================================================"
end

def help_meny
  puts
  puts "============================ H E L P   A N D   K E Y S ========================"
  puts
  puts
  p = %! 1.  For make a turn you can print cell namber
     for a fiure which you will use and then print target cell.

     Exsample  "A2" - for take figure in A1 position
                "A3" - New target position

    Exsample "A2-A3"  - igure in A1 position  will put in the target position   !
  puts p
  puts
  p = %! 2. -r for take new figure!
  puts p
  puts
  p = %! 3. -q for move  upper meny!
  puts p

  selection = ""
  until  selection  == "Q" do #selection.class == Fixnum &&
    selection = gets.upcase.chomp
  end
  main_meny
end

def game
  board = Board.new
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
end



main_meny

while true do
  selection = "0"
  until  selection  > "0" && selection < "7" do #selection.class == Fixnum &&
    selection = gets.upcase.chomp
  end

  help_meny if selection == "1"
  game if selection == "2"


end
