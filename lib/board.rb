class Board
  attr :board

  def initialize
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
