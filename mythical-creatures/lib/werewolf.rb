class Werewolf
  attr_reader :name, :location
  def initialize(*args)
    @name = args[0]
    @form = "human"
    @hungry = false

    if args.length > 1
      @location = args[1]
    else
      @location = "Unknown"
    end
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
