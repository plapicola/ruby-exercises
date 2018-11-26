class Kid

  attr_reader :grams_of_sugar_eaten

  def initialize
    @grams_of_sugar_eaten = 0
  end

  def eat_candy
    @grams_of_sugar_eaten += 5
  end

  def hyperactive?
    return @grams_of_sugar_eaten > 55
  end
end
