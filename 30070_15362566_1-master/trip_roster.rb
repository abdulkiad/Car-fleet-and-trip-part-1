    require_relative 'trip_collection.rb'
    require_relative 'fleet.rb'

    class TripRoster

      def initialize
        @pair={}
        # @fleet=fleet
        # @trip_collection=trip_collection
      end

      def add_pairs (fleet,trip_collection)
        @fleet=fleet
        @trip_collection=trip_collection
      end

      def journey
        @fleet.sort! #sorting the cars in order of range
        @trip_collection.sort! #going through the trips in order of distance
        @fleet.num_cars.zip(@trip_collection.number_of_trips).each do |car, trip|  # simultaneusly going through cars and trips
            if car.to_range>trip.trip_distance
          @pair[car]=trip #pairing the two
              end
         end
      end
  #to_string function
      def to_s
        str=''
        @pair.each do |pair,i|
          str+="Trip #{i.trip_id} is undertaken by Car #{pair.car_id}"
          str += "\n"
        end
        return str
      end

    end