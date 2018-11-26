class Children

  def initialize
    @children = []
  end

  def eldest
    if @children.length == 0
      return nil
    else
      oldest = @children.first
      @children.each do |child|
        if child.age > oldest.age
          oldest = child
        end
      end
      return oldest
    end
  end

  def << (child)
    @children << child
  end
end
