class Bag

  attr_reader :candies

  def initialize
    @candies = []
  end

  def << (candy)
    @candies << candy
  end

  def grab (type)
    grabbed_candy = nil
    if contains?(type)
      # Find and remove candy object
      i = 0
      while (i < candies.length && @candies[i].type != type)
        i += 1
      end

      grabbed_candy = @candies[i]
      @candies.delete_at(i)
    end
    return grabbed_candy
  end

  def take (number)
    return @candies.slice!(0, number)
  end

  def empty?
    return @candies.count == 0
  end

  def count
    return @candies.count
  end

  def contains? (search)
    @candies.each {|candy|
      if candy.type == search
        return true
      end
    }

    return false
  end

end
