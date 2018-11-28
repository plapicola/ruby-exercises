require_relative 'product'

class Catalogue
  def initialize
    @products = []
  end

  def << (product)
    @products << product
  end

  def cheapest
    if @products.length == 0
      return nil
    end

    cheapest = @products.first
    @products.each do |product|
      if product.price < cheapest.price
        cheapest = product
      end
    end
    return cheapest.name
  end
end
