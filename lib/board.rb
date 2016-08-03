class Board
  attr :board, :figures

  def initialize
    @board = {}
    @figures =            [King.new(:white), Queen.new(:white), Rook.new(:white), Rook.new(:white), Bishop.new(:white), Bishop.new(:white), Knight.new(:white), Knight.new(:white)]
    @figures = @figures + [Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white)]
    @figures = @figures + [King.new(:black), Queen.new(:black), Rook.new(:black), Rook.new(:black), Bishop.new(:black), Bishop.new(:black), Knight.new(:black), Knight.new(:black)]
    @figures = @figures + [Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black)]
    refull_board(@figures)
  end

  def add_figure(figure)
    @figures << figure
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
      figure = @board["out" + y.to_s]
      symbol = figure.symbol if figure != nil
      symbol = "   " if figure == nil
      out1 = symbol
      figure = @board["out" + (8 + y).to_s]
      symbol = figure.symbol if figure != nil
      symbol = "   " if figure == nil
      out2 = symbol
      figure = @board["out" + (16 + y).to_s]
      symbol = figure.symbol if figure != nil
      symbol = "   " if figure == nil
      out3 = symbol

      if y == 1
        puts "  \u250C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u252C\u2500\u2500\u2500\u2510 --------------"
      else
        puts "  \u251C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u253C\u2500\u2500\u2500\u2524 --------------"
      end
      puts "#{y} #{line}\u2502  #{out1}  #{out2} #{out3} "
      if y == 8
        puts "  \u2514\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2534\u2500\u2500\u2500\u2518 --------------"
        puts "    A   B   C   D   E   F   G   H    "
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
    1.upto(32) do |y|
      name = "out#{y}"
      position = name
      figure = figures.find{ |fig| fig.position == position }
      @board[name] = figure
    end
  end

  def broken?(target, color)
    figures =  @figures.select{ |figure| figure.color == color && figure.position[0].between?("A", "H") }
    cover_figures = figures.select { |figure| figure.allowed_turn( target, self, true) }
    return cover_figures if cover_figures != []
    return false
  end

  def any_move_to?(target, color)
    figures =  @figures.select{ |figure| figure.color == color && figure.position[0].between?("A", "H") }
    cover_figures = figures.select { |figure| figure.allowed_turn( target, self) }
    return cover_figures if cover_figures != []
    return false
  end

  def ability_block_figure?(figure, target)
    return false if figure.class == Pawn || figure.class == Knight || figure.class == King
    derection = figure.find_derection(target)
    return true if figure.scan_derect(derection, target){ |cell|   any_move_to?(cell, figure.enimy_color)  }
    return false
  end

  def check_sash(color)
    figure =  @figures.select{ |figure| figure.color == color && figure.class == King }[0]
    position = figure.position
    return true if  broken?(position, figure.enimy_color) != false
    return false
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
