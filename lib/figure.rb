class Figure

  attr_reader :color, :position, :symbol


  def initialize
  end

end

class Queen < Figure

  def initialize(color)
    @color = color

    if @color == :white
      @symbol = "\u265A"
      @position = [4,8]
    else
      @symbol = "\u2654"
      @position = [5,1]
    end
  end

end

class King < Figure

  def initialize(color)
    @color = color

    if @color == :white
      @symbol = "\u265B"
      @position = [5,8]
    else
      @symbol = "\u2655"
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
      @symbol = "\u265C"
      @position = [1,8] if @@count_white == 1
      @position = [8,8] if @@count_white == 2
    else
      @symbol = "\u2656"
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
        @symbol = "\u265D"
        @position = [3,8] if @@count_white == 1
        @position = [6,8] if @@count_white == 2
      else
        @symbol = "\u2657"
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
        @symbol = "\u265E"
        @position = [2,8] if @@count_white == 1
        @position = [7,8] if @@count_white == 2
      else
        @symbol = "\u2658"
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

  @@count_white = 0
  @@count_black = 0

    def initialize(color)
      @color = color
      @@count_black = 0 if @@count_black == 8
      @@count_white = 0 if @@count_white == 8
      if @color == :white
        @@count_white += 1
        @symbol = "\u265F" #"\u265F"
        @position = [@@count_white,7]
      else
        @symbol = "\u2659" #"\u2659"
        @@count_black += 1
        @position = [@@count_black,2]
      end
    end

    def count_w
      @@count_white
    end

    def count_b
      @@count_black
    end

end
