class Hobbit
  attr_reader :name, :disposition, :age
  def initialize(*args)
    @name = args[0]
    @age = 0

    if args.length > 1
      @disposition = args[1]
    else
      @disposition = "homebody"
    end
  end

  def celebrate_birthday()
    @age += 1
  end

  def adult?
    return age > 32
  end

  def old?
    return age > 100
  end

  def has_ring?
    return @name == "Frodo"
  end

  def is_short?
    return true
  end
end
