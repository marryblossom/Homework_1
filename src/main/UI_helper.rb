module UIHelper
  class InputHelper

    def input_object
      puts 'input your the date and customer type like:  Regular: 16Mar2009(mon), 17Mar2009(sun), 18Mar2009(sat)'
      gets.chomp
    end

    def output_object (object)
      puts object
    end

  end
end