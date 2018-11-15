class Unicorn

  attr_accessor :name, :color

  def initialize(*args)
      @name = args[0]

      if args.length > 1
        @color = args[1]
      else
        @color = "white"
      end
  end

  def white?
      return @color == "white"
  end

  def say(phrase)
    return "**;* #{phrase} **;*"
  end
end
