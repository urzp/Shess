class Board
  attr :board

  def initialize
    @board = []

    @figures =            [King.new(:white), Queen.new(:white), Rook.new(:white), Rook.new(:white), Bishop.new(:white), Bishop.new(:white), Knight.new(:white), Knight.new(:white)]
    @figures = @figures + [Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white), Pawn.new(:white)]
    @figures = @figures + [King.new(:white), Queen.new(:black), Rook.new(:black), Rook.new(:black), Bishop.new(:black), Bishop.new(:black), Knight.new(:black), Knight.new(:black)]
    @figures = @figures + [Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black), Pawn.new(:black)]

    x = 0
    "A".upto("H") do |char|
      x = x + 1
      1.upto(8) do |y|
        name = "#{char}#{y}"
        position = [x, y]
        figure = @figures.select{|fig| fig.position == position }
        figure = nil if figure == []
        node = Node.new(name, position, figure)
        @board << node
      end
    end
  end

  def position?(figure)
  end

  def move(figure, x, y)
  end

  def draw
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
