class Board
  attr :board

  def initialize
    @board = {}
    @figures =            [King.new(:white), Queen.new(:white), Rook.new(:white), Rook.new(:white), Bishop.new(:white), Bishop.new(:white), Knight.new(:white), Knight.new(:white)]
    @figures = @figures + [Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white)]
    @figures = @figures + [King.new(:black), Queen.new(:black), Rook.new(:black), Rook.new(:black), Bishop.new(:black), Bishop.new(:black), Knight.new(:black), Knight.new(:black)]
    @figures = @figures + [Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black)]
    refull_board(@figures)
  end

  def draw
    refull_board(@figures)
    1.upto(8) do |y|
      x = 0
      line = ""
      "A".upto("H") do |char|
        x = x + 1
        cell = "#{char}#{y}"
        figure = @board[cell]
        symbol = figure.symbol if figure != nil
        symbol = "   " if figure == nil
        line = line + "\u2502" + symbol
      end
      if y == 1
        puts "  \u250C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u2510"
      else
        puts "  \u251C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u2524"
      end
      puts "#{y} #{line}\u2502"
      if y == 8
        puts "  \u2514\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2518"
        puts "    A   B   C   D   E   F   G   H "
      end
    end
  end

  def figure(position)
    self.refull_board
    return @board[position]
  end

  def tool_move(position_figure, new_position)
    figure = self.figure(position_figure)
    figure.position = new_position
    self.draw
  end

  def refull_board(figures = @figures)
    1.upto(8) do |y|
      x = 0
      "A".upto("H") do |char|
         x = x + 1
        name = "#{char}#{y}"
        position = name
        figure = figures.find{|fig| fig.position == position }
        @board[name] = figure
      end
    end
  end
end



class Node
  attr_reader :name, :position, :figure

  def initialize(name, position, figure = nil)
    @name = name
    @position = position
    @figure = figure
  end
end
