class Light

  def initialize
    @on = false
  end

  def turn_on
    @on = true
  end

  def on?
    return @on
  end
end
