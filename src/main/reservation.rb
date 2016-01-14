require_relative 'data_helper'

class Reservation

  def initialize (input)
    @reservation_data_helper = DataHelper::ReservationDataHelper.new(input)
    @hotels_with_price_and_rating = []
    @customer_type = @reservation_data_helper.customer_type
    @days_count = @reservation_data_helper.days_count
  end

  def cheapest_hotel
     hotels = @reservation_data_helper.all_hotels(@customer_type)
     hotels.each do |hotel|
       @hotels_with_price_and_rating << {'name' => hotel.name, 'price' => hotel_price(hotel), 'rating' => hotel.rating}
     end
     sort_by_price_and_rating[0]['name']
  end

  private

  def hotel_price (hotel)
    @days_count[:weekday_count].to_i * hotel.weekday_rate + @days_count[:weekend_count].to_i * hotel.weekend_rate
  end

  def sort_by_price_and_rating
    @hotels_with_price_and_rating.sort! { |a, b| [a['price'], b['rating']] <=> [b['price'], a['rating']] }
  end

end