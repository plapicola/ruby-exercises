class Music

  def initialize
    @loud = false
  end

  def turn_up
    @loud = true
  end

  def loud?
    return @loud
  end
end
