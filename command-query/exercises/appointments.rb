require_relative 'time'
class Appointments
  def initialize
    @times = []
  end

  def earliest
    # Case for no times present
    if @times.length == 0
      return nil
    end
    earliest = @times[0]
    @times.each do |time|
      if time < earliest
        earliest = time
      end
    end
    return earliest
  end

  def at(time)
    @times << time
  end

end
