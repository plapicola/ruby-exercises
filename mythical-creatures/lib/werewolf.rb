class Werewolf
  attr_reader :name, :location
  def initialize(name, location = "Unknown")
    @name = name
    @human = true
    @hungry = false
    @location = location
  end

  def human?
    return @human
  end

  def wolf?
    return !@human
  end

  def change!
    @human = !@human
    @hungry = (!@human || @hungry)
  end

  def hungry?
    return @hungry
  end

  def consume(victim)
    @hungry = @human && @hungry
    victim.status = :dead unless @human
  end
end
