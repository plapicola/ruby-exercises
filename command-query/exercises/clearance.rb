class Clearance

  def initialize
    @items = []
  end

  def << (item)
    @items << item
  end

  def best_deal
    if @items.length == 0
      return nil
    end

    highest_discount = @items.first
    @items.each do |item|
      if item.discount_percentage > highest_discount.discount_percentage
        highest_discount = item
      end
    end
    return highest_discount.name
  end
end
