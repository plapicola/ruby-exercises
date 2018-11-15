class Ogre

  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter_counter += 1
    if human.notices_ogre?
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
    human.recieve_swing
  end

  def apologize(human)
    human.recieve_apology
  end
end

class Human
  attr_accessor :name, :swing_counter, :encounter_counter
  def initialize(name = "Jane")
    @name = name
    @swing_counter = 0
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
    return encounter_counter % 3 == 0
  end

  def recieve_swing
    @swing_counter += 1
    @knocked_out = @swing_counter >= 2
  end

  def recieve_apology
    @swing_counter = 0
    @knocked_out = false
  end

  def knocked_out?
    return @knocked_out
  end
end
