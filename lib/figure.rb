class Figure

  attr_reader :color, :position, :symbol
  attr_writer :position

  def sum_der_coord(position, der)
    char = position[0].ord + der[0]
    numb = position[1].to_i  + der[1]
    return char.chr + numb.to_s
  end

  def enimy_color
    return :white if self.color == :black
    return :black if self.color == :white
  end

end

class Queen < Figure

  def initialize(color)
    @color = color

    if @color == :white
      @symbol = "\u265A"
      @position = "D8"
    else
      @symbol = "\u2654"
      @position = "E1"
    end
  end

end

class King < Figure

  def initialize(color)
    @color = color

    if @color == :white
      @symbol = "\u265B"
      @position = "E8"
    else
      @symbol = "\u2655"
      @position = "D1"
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
      @position = "A8" if @@count_white == 1
      @position = "H8" if @@count_white == 2
    else
      @symbol = "\u2656"
      @@count_black += 1
      @position = "A1" if @@count_black == 1
      @position = "H1" if @@count_black == 2
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
        @position = "C8" if @@count_white == 1
        @position = "F8" if @@count_white == 2
      else
        @symbol = "\u2657"
        @@count_black += 1
        @position = "C1" if @@count_black == 1
        @position = "F1" if @@count_black == 2
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
        @position = "B8" if @@count_white == 1
        @position = "G8" if @@count_white == 2
      else
        @symbol = "\u2658"
        @@count_black += 1
        @position = "B1" if @@count_black == 1
        @position = "G1" if @@count_black == 2
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
      @count_turns = 0
      @color = color
      @@count_black = 0 if @@count_black == 8
      @@count_white = 0 if @@count_white == 8
      if @color == :white
        @@count_white += 1
        @symbol = "\u265F" #"\u265F"
        @position = (64+@@count_white).chr+"7"
        @derctions = [[0,-1],[0,-2],[-1,-1],[1,-1]]
      else
        @symbol = "\u2659" #"\u2659"
        @@count_black += 1
        @position = (64+@@count_black).chr+"2"
        @derctions = [[0,1],[0,2],[1,1],[-1,1]]
      end
    end

    def count_w
      @@count_white
    end

    def count_b
      @@count_black
    end


    def allowed_turn(target, board)
      if board.figure(target)
        return false if board.figure(target).class == King  #if node is busy of same color
      end
      if board.figure(target)
        return false if board.figure(target).color == @color  #if node is busy of same color
      end
      targ_der = @derctions.find{ |der| sum_der_coord(@position, der) == target}
      return false if targ_der == nil
      if targ_der == [0,1] || targ_der == [0,-1]
        return false if board.figure(target) # && board.figure(target).color == self.enimy_color #if node is busy of enimy color
      else
        false
      end
      if targ_der == [1,1] || targ_der == [-1,-1] || targ_der == [1,-1] || targ_der == [-1,1]
          if board.figure(target) && board.figure(target).color == self.enimy_color
            return true
          else
            return false
          end
      end
      return false if targ_der == [0,2] && board.figure(sum_der_coord(target, [0,-1])) # any figure befor Pawn
      return false if targ_der == [0,-2] && board.figure(sum_der_coord(target, [0,1])) # any figure befor Pawn
      return true
  end




end
