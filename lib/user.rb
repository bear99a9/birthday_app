require 'date'
require 'time'

class User
    attr_reader :name, :day, :month

    def initialize(name, day, month)
      @name = name
      @day = day
      @month = month
    end

    def birthday?
      time = Time.now
      time.strftime("%d/%m") == "#{@day}/#{@month}" ? true : false
    end
end
