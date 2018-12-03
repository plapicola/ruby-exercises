class Yak

  def initialize
    @hairy = true
  end

  def shave
    @hairy = false
  end

  def hairy?
    return @hairy
  end
end
