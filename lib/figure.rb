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

@@count_white = 0
@@count_black = 0

  def initialize(color)
    @color = color
    @@count_black = 0 if @@count_black == 2
    @@count_white = 0 if @@count_white == 2
    if @color == :white
      @@count_white += 1
      @symbol = "\u2656"
      @position = [1,8] if @@count_white == 1
      @position = [8,8] if @@count_white == 2
    else
      @symbol = "\u265C"
      @@count_black += 1
      @position = [1,1] if @@count_black == 1
      @position = [8,1] if @@count_black == 2
    end
  end

  def count_w
    @@count_white
  end

  def count_b
    @@count_black
  end

end

class Bishop < Figure

  @@count_white = 0
  @@count_black = 0

    def initialize(color)
      @color = color
      @@count_black = 0 if @@count_black == 2
      @@count_white = 0 if @@count_white == 2
      if @color == :white
        @@count_white += 1
        @symbol = "\u2657"
        @position = [3,8] if @@count_white == 1
        @position = [6,8] if @@count_white == 2
      else
        @symbol = "\u265D"
        @@count_black += 1
        @position = [3,1] if @@count_black == 1
        @position = [6,1] if @@count_black == 2
      end
    end

    def count_w
      @@count_white
    end

    def count_b
      @@count_black
    end

end

class Knight < Figure

  @@count_white = 0
  @@count_black = 0

    def initialize(color)
      @color = color
      @@count_black = 0 if @@count_black == 2
      @@count_white = 0 if @@count_white == 2
      if @color == :white
        @@count_white += 1
        @symbol = "\u2658"
        @position = [2,8] if @@count_white == 1
        @position = [7,8] if @@count_white == 2
      else
        @symbol = "\u265E"
        @@count_black += 1
        @position = [2,1] if @@count_black == 1
        @position = [7,1] if @@count_black == 2
      end
    end

    def count_w
      @@count_white
    end

    def count_b
      @@count_black
    end

end

class Pawn < Figure

  def initialize(color)
    @color = color
  end

end
