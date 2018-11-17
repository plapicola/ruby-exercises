class RollCall
  def initialize
    @names = []
  end

  def << (name)
    @names << name
  end

  def longest_name
    if @names.empty?
      return nil
    end

    longest = ""

    @names.each {|name|
      if name.length > longest.length
        longest = name
      end
    }

    return longest
  end
end
