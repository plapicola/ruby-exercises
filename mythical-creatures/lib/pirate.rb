class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @cursed = false
    @heinous_act_count = 0
    @booty = 0
    @job = job
  end

  def cursed?
    return @cursed
  end

  def commit_heinous_act
    @heinous_act_count += 1
    @cursed = @heinous_act_count == 3
  end

  def rob_ship
    @booty += 100
  end

end
