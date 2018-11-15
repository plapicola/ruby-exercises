class Wizard
  attr_reader :name
  def initialize(*args)
    @name = args[0]
    @spell_count = 0
    if args.length > 1
      @bearded = args[1][:bearded]
    else
      @bearded = true
    end
  end

  def bearded?
    return @bearded
  end

  def incantation(phrase)
    return "sudo #{phrase}"
  end

  def rested?
    return @spell_count < 3
  end

  def cast_spell
    @spell_count += 1
    return "MAGIC MISSILE!"
  end
end
