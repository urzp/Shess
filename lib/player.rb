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
end
