class Santa

  def initialize
    @cookies = 0
  end

  def eats_cookies
    @cookies += 1
  end

  def fits?
    return @cookies < 3
  end
end
