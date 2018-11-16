class Cat

  attr_reader :name, :sound

  def initialize(name, sound = "meow")
    @sound = sound
    @name = name
  end
end
