class Tire

  def initialize
    @blown_out = false
  end

  def blow_out
    @blown_out = true
  end

  def flat?
    return @blown_out
  end
end
