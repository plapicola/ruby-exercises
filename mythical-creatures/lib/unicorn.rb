class Unicorn

  attr_accessor :name, :color

  def initialize(name, color = "white")
      @name = name
      @color = color
  end

  def white?
      return @color == "white"
  end

  def say(phrase)
    return "**;* #{phrase} **;*"
  end
end
