class Teenager

  def initialize
    @drunk = false
  end

  def consume_an_alcoholic_beverage
    @drunk = true
  end

  def drunk?
    return @drunk
  end
end
