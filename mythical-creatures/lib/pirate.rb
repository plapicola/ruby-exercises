class Pirate
  attr_reader :name, :job, :booty

  def initialize(*args)
    @name = args[0]
    @cursed = false
    @heinous_act_count = 0
    @booty = 0
    if args.length > 1
      @job = args[1]
    else
      @job = "Scallywag"
    end
  end

  def cursed?
    return @cursed
  end

  def commit_heinous_act
    @heinous_act_count += 1

    if @heinous_act_count == 3
      @cursed = true
    end
  end

  def rob_ship
    @booty += 100
  end

end
