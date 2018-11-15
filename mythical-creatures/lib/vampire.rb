class Vampire

  attr_reader :name, :pet, :thirsty

  def initialize(*args)
      @name = args[0]
      @thirsty = true

      if args.length > 1
        @pet = args[1]
      else
        @pet = "bat"
      end
  end

  def drink
    @thirsty = false
  end

  def thirsty?
    return @thirsty
  end
end
