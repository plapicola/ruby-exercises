class Wallet

  def initialize
    @value_table = {penny: 1, nickel: 5, dime: 10, quarter: 25, dollar: 100}
    @pennies = 0
    @nickels = 0
    @dimes = 0
    @quarters = 0
    @dollars = 0
  end

  def << (*args)
    args.each {|currency| add_to_wallet(currency) }
  end

  def cents
    sum = 0

    sum += @pennies * @value_table[:penny]
    sum += @nickels * @value_table[:nickel]
    sum += @dimes * @value_table[:dime]
    sum += @quarters * @value_table[:quarter]
    sum += @dollars * @value_table[:dollar]

    return sum
  end

  def add_to_wallet(currency)
    if currency == :penny
      @pennies += 1
    elsif currency == :nickel
      @nickels += 1
    elsif currency == :dime
      @dimes += 1
    elsif currency == :quarter
      @quarters += 1
    else
      @dollars += 1
    end

  end

  def take(*args)
    args.each {|currency| remove_from_wallet(currency)}
  end

  def remove_from_wallet(currency)
    if currency == :penny && @pennies > 0
      @pennies -= 1
    elsif currency == :nickel && @nickels > 0
      @nickels -= 1
    elsif currency == :dime && @dimes > 0
      @dimes -= 1
    elsif currency == :quarter && @quarters > 0
      @quarters -= 1
    elsif currency == :dollar && @dollars > 0
      @dollars -= 1
    end
  end
end
