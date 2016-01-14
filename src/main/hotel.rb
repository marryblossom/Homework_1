class Hotel

  attr_reader :name, :rating, :weekday_rate, :weekend_rate

  def initialize (name, rating, weekday_rate, weekend_rate)
    @name = name
    @rating = rating
    @weekday_rate = weekday_rate
    @weekend_rate = weekend_rate
  end

end


