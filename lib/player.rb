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

  def turn(board,turn = nil)
    puts "Please take you turn by any #{@color} figure."
    while true do
      puts "Chose your #{@color} figure"
      selection = turn[0] if turn != nil
      selection = gets.upcase.chomp if turn == nil
      if check_select(selection)
         break if check_figure(selection, board)
      end
    end
    puts "Please put target for your figure."
    while true do
      puts "Chose your target cell"
      selection_target = turn[1] if turn != nil
      selection_target = gets.upcase.chomp if turn == nil
      if check_select(selection_target)
        figure = board.figure(selection)
        if figure.allowed_turn(selection_target, board)
          return [selection, selection_target]
        else
          puts "Is not allowed the turn"
        end
      end
    end

  end

#private

  def check_select(selection)

    if selection.size > 2
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
    figure = board.figure(selection)


    if !figure
      puts "The position \"#{selection}\" is empty"
      return false
    else
      if figure.color != self.color
        puts "The figure in the \"#{selection}\" is not your color"
        return false
      else
        puts "your chose is \"#{selection}\" \"#{figure.color} #{figure.class}\" "
        return true
      end
    end

  end


end
