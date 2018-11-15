class Vampire

  attr_reader :name, :pet, :thirsty

  def initialize(name, pet = "bat")
      @name = name
      @thirsty = true
      @pet = pet
  end

  def drink
    @thirsty = false
  end

  def thirsty?
    return @thirsty
  end
end
