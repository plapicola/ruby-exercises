class Wizard
  attr_reader :name
  def initialize(name, bearded: true)
    @name = name
    @spell_count = 0
    @bearded = bearded
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
