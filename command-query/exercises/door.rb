class Door

  def initialize
    @locked = true
  end

  def unlock
    @locked = false
  end

  def locked?
    return @locked
  end
end
