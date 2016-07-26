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

  def turn(board)
    puts "Please take you turn by any #{@color} figure."
    loop do
      puts "Chose your #{@color} figure"
      selection = gets.upcase.chomp
      if check_select(selection)
        check_figure(selection, board)
      end
    end
  end

#private

  def check_select(selection)

    if selection.size > 2
      puts "So many letters. Please put letter between A..G or a..g and number between 1..8 for example \"D2\" "
      return false
    else

      if selection.size == 0
        puts "You put nothing. Please put letter between A..G or a..g and number between 1..8 for example \"D2\" "
        return false
      else

        if !selection[0].between?("A", "G")
          puts "You put the \"#{selection[0]}\". It is not in the board. Please put letter between A..G or a..g"
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



end
