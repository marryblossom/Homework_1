require_relative 'UI_helper'
require_relative 'reservation'

class MainHelper

  def main_process
    ui_helper =  UIHelper::InputHelper.new
    input = ui_helper.input_object
    reservation = Reservation.new(input)
    ui_helper.output_object(reservation.cheapest_hotel)
  end
end

MainHelper.new.main_process