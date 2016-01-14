require_relative 'hotel'

module DataHelper
  class ReservationDataHelper

    def initialize (input)
      @input = input
      @days = @input.split(': ')[1].split(',')
      @customer_type = input.split(': ')[0]
    end

    def all_hotels
      lakewood_hotel = Hotel.new('Lakewood', 3, @customer_type == 'Regular' ? 110 : 80, @customer_type == 'Regular' ? 90 : 80)
      bridgewood_hotel = Hotel.new('Bridgewood', 4, @customer_type == 'Regular' ? 160 : 110, @customer_type == 'Regular' ? 60 : 50)
      ridgewood_hotel = Hotel.new('Ridgewood', 5, @customer_type == 'Regular' ? 220 : 100, @customer_type == 'Regular' ? 150 : 40)
      hotels = [lakewood_hotel, bridgewood_hotel, ridgewood_hotel]
      hotels
    end

    def days_count
      weekday_count = 0
      weekend_count = 0
      @days.each do |day|
        is_weekend(day)? weekend_count += 1 : weekday_count += 1
      end
      {weekday_count: weekday_count, weekend_count: weekend_count}
    end

    private

    def is_weekend (day)
      (day.include? 'sat') || (day.include? 'sun')
    end

  end

end