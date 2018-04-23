require_relative'trip'
require_relative 'trip_collection'
class Testing
  @trips= TripCollection.new
  @trips.add_trip(Trip.new(1,430)) #adding
  @trips.add_trip(Trip.new(2,230)) #adding
  @trips.add_trip(Trip.new(3,130)) #adding
  @trips.sort!

  puts @trips.to_s
end