class Item

  attr_reader :name, :price, :discount

  def initialize(name, pricing)
    @name = name
    @price = pricing[:price]
    @discount = pricing[:discount]
  end

  def discount_percentage
    return @discount.to_f / @price
  end
end
