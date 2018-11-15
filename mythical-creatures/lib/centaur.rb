class Centaur
  attr_reader :name, :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @rested = false
    @standing = true
    @sick = false
    @action_count = 0
  end

  def shoot
    @action_count += 1
    @cranky = @action_count >= 3

    if @cranky || !@standing
      return "NO!"
    else
      return "Twang!!!"
    end
  end

  def run
    @action_count += 1
    @cranky = @action_count >= 3

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
    @sick = @standing && @rested
    @rested = @standing || @rested

    if !@standing
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
