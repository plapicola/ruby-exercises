class Werewolf
  attr_reader :name, :location
  def initialize(name, location = "Unknown")
    @name = name
    @form = "human"
    @hungry = false
    @location = location
  end

  def human?
    return @form == "human"
  end

  def wolf?
    return @form == "wolf"
  end

  def change!
    if @form == "human"
      @form = "wolf"
      @hungry = true
    else
      @form = "human"
    end
  end

  def hungry?
    return @hungry
  end

  def consume(victim)
    if @form == "wolf"
      @hungry = false
      victim.status = :dead
    end
  end
end
