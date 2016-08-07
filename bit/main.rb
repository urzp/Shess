

require '../lib/player'
require '../lib/board'
require '../lib/figure'
require '../lib/game'

require 'yaml'

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

def new_game
  puts "new game"
  board = Board.new
  player_1 = Human.new(:white)
  player_2 = Human.new(:black)
  game = Game.new(player_1, player_2, board)
  turns(game)
end

def continue (game)
  puts "continue"
  turns(game)
end

def turns(game)
  1.upto(300) do
    turn = false
    while turn == false do
       player = game.next_palayer?
       turn = player.turn(game.board)
     if turn == :main_meny
        game.status=:pause
        return game
     end
    end
    game.turn(player, turn)
  end
end

def save(game)
  yaml = YAML::dump(game)
  File.open("saved.yaml", "w") do |game_file|
    game_file.write(yaml)
  end
end

def load
  yaml = File.read("saved.yaml")
  YAML::load(yaml)
end

main_meny

while true do
  selection = "0"
  until  selection  > "0" && selection < "7" do #selection.class == Fixnum &&
    selection = gets.upcase.chomp
  end

  if selection == "1"
    help_meny
  end

  if selection == "2"
    game = new_game
    status = game.status
  end

  if selection == "3"
    game = continue(game)
    status = game.status
  end

  if selection == "4"
    save(game)
    puts "game is saved"
  end

  if selection == "5"
    game = load()
    game = continue(game)
    status = game.status
  end

  if status == :pause
    status = false
    game.status= false
    main_meny
  end
end
