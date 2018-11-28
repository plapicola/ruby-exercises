class Time

  attr_reader :year, :month, :day, :hour, :minute

  def initialize(year, month, day, hour, minute = 0)
    @year = year
    @month = month
    @day = day
    @hour = hour
    @minute = minute
  end

  def <=> (time)
    if @year != time.year
      return @year<=> time.year
    elsif @month != time.month
      return @month <=> time.month
    elsif @day != time.day
      return @day <=> time.day
    elsif @hour != time.hour
      return @hour <=> time.hour
    else
      return @minute <=> time.minute
    end
  end

end
