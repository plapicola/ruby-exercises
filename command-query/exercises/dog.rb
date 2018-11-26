class Dog

  def initialize
    @hungry = true
  end

  def eat
    @hungry = false
  end

  def hungry?
    return @hungry
  end
end
