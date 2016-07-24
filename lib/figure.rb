class Figure

  attr_reader :color, :position, :symbol


  def initialize
  end

end

class Queen < Figure

  def initialize(color)
    @color = color

    if @color == :white
      @symbol = "\u2654"
      @position = [4,8]
    else
      @symbol = "\u265A"
      @position = [5,1]
    end
  end

end

class King < Figure

  def initialize(color)
    @color = color

    if @color == :white
      @symbol = "\u2655"
      @position = [5,8]
    else
      @symbol = "\u265B"
      @position = [4,1]
    end
  end

end

class Rook < Figure

  def initialize(color)
    @color = color
  end

end

class Bishop < Figure

  def initialize(color)
    @color = color
  end

end

class Knight < Figure

  def initialize(color)
    @color = color
  end

end

class Pawn < Figure

  def initialize(color)
    @color = color
  end

end
