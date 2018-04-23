  require_relative 'Trip.rb'

  class TripCollection

    attr_reader :number_of_trips

    def initialize
      @number_of_trips=[]
    end

    def add_trip (trips)
    @number_of_trips.push(trips)
    end
  #sorting in order of trip distance
    def sort!
      @number_of_trips.sort!{|p1, p2| p1.trip_distance <=> p2.trip_distance}
    end
    def to_s
      str = ''
      @number_of_trips.each_with_index do |product, i|
        str += product.to_s
        if i < @number_of_trips.length-1 #      add newline between items
          str += "\n"
        end
      end
      return str
    end


  end