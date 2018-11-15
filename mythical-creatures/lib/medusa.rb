class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = Array.new()
  end

  def stare(victim)
    if @statues.count == 3
      @statues.delete_at(0)
    end
    @statues << victim
    victim.stoned = true
  end
end

class Person
  attr_reader :name
  attr_writer :stoned

  def initialize(*args)
    @name = args[0]
    @stoned = false
  end

  def stoned?
    return @stoned
  end

end
