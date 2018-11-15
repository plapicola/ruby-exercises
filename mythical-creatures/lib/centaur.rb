class Centaur
  attr_reader :name, :breed
  def initialize(*args)
    @name = args[0]
    @breed = args[1]
    @cranky = false
    @rested = false
    @standing = true
    @sick = false
    @action_count = 0
  end

  def shoot
    @action_count += 1
    if @action_count >= 3
      @cranky = true
    end

    if @cranky || !@standing
      return "NO!"
    else
      return "Twang!!!"
    end
  end

  def run
    @action_count += 1
    if @action_count >= 3
      @cranky = true
    end

    if @cranky || !@standing
      return "NO!"
    else
      return "Clop clop clop clop!!!"
    end
  end

  def sleep
    if @standing
      return "NO!"
    else
      @cranky = false
      @action_count = 0
    end
  end

  def drink_potion
    if @standing
      if @rested
        @sick = true
      else
        @rested = true
      end
    else
      return "NO!"
    end
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def cranky?
    return @cranky
  end

  def standing?
    return @standing
  end

  def laying?
    return !@standing
  end

  def rested?
    return @rested
  end

  def sick?
    return @sick
  end
end
