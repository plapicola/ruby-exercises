class Hobbit
  attr_reader :name, :disposition, :age
  def initialize(name, disposition = "homebody")
    @name = name
    @age = 0
    @disposition = disposition
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
