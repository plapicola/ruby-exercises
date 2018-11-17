class Baby

  def initialize
    @tired = true
  end

  def tired?
    return @tired
  end

  def nap
    @tired = false
  end

end
