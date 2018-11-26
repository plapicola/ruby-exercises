class Teeth

  def initialize
    @clean = false
  end

  def brush
    @clean = true
  end

  def clean?
    return @clean
  end
end
