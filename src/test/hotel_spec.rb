require 'minitest/spec'
require 'minitest/autorun'

require_relative '../main/hotel'
require_relative '../main/reservation'

describe '#output_test' do
  it '#should output Bridgewood while input is Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)' do
    input = 'Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)'
    reservation = Reservation.new(input)
    assert_equal 'Bridgewood', reservation.cheapest_hotel
  end

  it '#should output Bridgewood while input is Rewards: 26Mar2009(thur), 27Mar2009(fri), 28Mar2009(sat)' do
    input = 'Rewards: 26Mar2009(thur), 27Mar2009(fri), 28Mar2009(sat)'
    reservation = Reservation.new(input)
    assert_equal 'Ridgewood', reservation.cheapest_hotel
  end

  it '#should output Lakewood while input is Regular: 16Mar2009(mon), 17Mar2009(tues), 18Mar2009(wed)' do
    input = 'Regular: 16Mar2009(mon), 17Mar2009(tues), 18Mar2009(wed)'
    reservation = Reservation.new(input)
    assert_equal 'Lakewood', reservation.cheapest_hotel
  end

end




