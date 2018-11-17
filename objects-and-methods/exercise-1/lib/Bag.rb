class Bag

  attr_reader :count, :candies
  def initialize()
    @count = 0
    @candies = Array.new
  end

  def empty?
    return @count == 0
  end

  def << (candy)
    @candies << candy
    @count += 1
  end

  def contains? (candy_type)
    @candies.each {|candy|
      if candy.type == candy_type
        return true
      end
    }
    return false
  end

end
