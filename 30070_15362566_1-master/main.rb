          require_relative 'Car'
          require_relative 'trip'
          require_relative 'trip_collection'
          require_relative 'trip_roster'
          class Main
          #objecrs
          fleet=Fleet.new
          trip= TripCollection.new

            #reading in the files
            IO.foreach('cars.txt') do |line|
              data =  line.split # so data is an array of strings
              car_id = data[0]
              litres_in_tank= data[1]
              km_per_litre = data[2]
             fleet.add_car(Car.new(car_id.to_i,litres_in_tank.to_i, km_per_litre.to_i)) #adding cars

            end
              IO.foreach('trips.txt') do |line|
                data2 =  line.split # so data is an array of strings
                trip_id = data2[0]
                trip_distance= data2[1]
                trip.add_trip(Trip.new(trip_id.to_i,trip_distance.to_i))  #adding trips

              end

            final_trip =TripRoster.new
            final_trip.add_pairs(fleet,trip)
            final_trip.journey    #pariinng the two and sorting them out
            puts final_trip.to_s    #printing them in order of ascending

          end
