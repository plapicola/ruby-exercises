class Floor
  def initialize
    @clean = false
  end

  def wash
    @clean = true
  end

  def dirty?
    return !@clean
  end
end
