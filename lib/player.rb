class Player

  attr_reader  :color

  def initialize(color)
    @color = color
  end
end


class Human < Player

  def initialize(color)
    super
  end

  def turn(board, turn = nil)
    puts "Please take you turn by any #{@color} figure."
    counter = 0
    while true do
      puts "Chose your #{@color} figure"
      selection = turn[0] if turn != nil
      selection = gets.upcase.chomp if turn == nil
      selection_target = selection[3] + selection[4] if selection[3] != nil && selection[4] != nil
      selection = selection[0] + selection[1]
      if check_select(selection)
         break if check_figure(selection, board)
      end
      counter += 1
      return false if counter > 5
    end

    puts "Please put target for your figure." if selection_target == nil
    counter = 0
    while true do
      puts "Chose your target cell" if selection_target == nil
      selection_target = turn[1] if turn != nil
      selection_target = gets.upcase.chomp if selection_target == nil
      if check_select(selection_target)
        figure = board.figure(selection )
        if figure.allowed_turn(selection_target, board)
          if board.escape_sash?(figure, selection_target)
            return [selection, selection_target]
          else
            puts "Is not allowed go to \"#{selection_target}\". There is still Shah  "
          end
        else
          puts "Is not allowed the turn #{selection_target}"
        end
      end
      counter += 1
      selection_target = nil
      return false if counter > 5
    end

  end

#private

  def check_select(selection)

    if selection.size > 5
      puts "Too many letters. Please put letter between A..G or a..g and number between 1..8 for example \"D2\" "
      return false
    else

      if selection.size == 0
        puts "You put nothing. Please put letter between A..G or a..g and number between 1..8 for example \"D2\" "
        return false
      else

        if !selection[0].between?("A", "H")
          puts "You put the \"#{selection[0]}\". It is not in the board or char. Please put letter between A..H or a..h"
          return false
        end

        if !selection[1].to_i.between?(1, 8)
          puts "You put the \"#{selection[1]}\". It is not in the board or number. Please put number between 1..8"
          return false
        end
      end
    end
    return true
  end

  def check_figure(selection, board)
    figure = board.figure(selection[0] + selection[1])


    if !figure
      puts "The position \"#{selection[0] + selection[1]}\" is empty"
      return false
    else
      if figure.color != self.color
        puts "The figure in the \"#{selection[0] + selection[1]}\" is not your color"
        return false
      else
        puts "your chose is \"#{selection[0] + selection[1]}\" \"#{figure.color} #{figure.class}\" "
        return true
      end
    end

  end


end
