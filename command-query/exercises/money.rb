class Money

  attr_reader :amount

  def initialize
    @amount = 0
  end

  def earn (amount)
    @amount += amount
  end

  def spend (amount)
    if amount > @amount
      return "You can't spend what you don't have"
    else
      @amount -= amount
    end
  end
end
