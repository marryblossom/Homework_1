require_relative 'hotel'

class BridgeWood < Hotel

  def parameters_set (customer_type)
    @weekday_rates = customer_type == 'Regular' ? 160 : 110
    @weekend_rates = customer_type == 'Regular' ? 60 : 50
    Array['BridgeWood', 4, "#{@weekday_rates}", "#{@weekend_rates}"]
  end
  
end