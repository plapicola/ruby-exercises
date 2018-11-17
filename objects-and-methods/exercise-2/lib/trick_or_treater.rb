class TrickOrTreater

  attr_reader :dressed_up_as, :sugar_level, :bag

  def initialize(costume)
    @dressed_up_as = costume.style
    @bag = Bag.new
    @sugar_level = 0
  end

  def has_candy?
    return !@bag.empty?
  end

  def candy_count
    return @bag.count
  end

  def eat
    candy = @bag.take(1)
    @sugar_level += candy[0].sugar
  end
end
