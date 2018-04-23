  require 'test/unit'
  require_relative 'trip_roster'
  require_relative 'trip_collection.rb'
  require_relative 'fleet.rb'
  require_relative 'car'
  require_relative 'trip'
  class UnitTest < Test::Unit::TestCase


    def setup
      @roaster=TripRoster.new
      @cars= Fleet.new
      @trips= TripCollection.new
      @trips.add_trip(Trip.new(1,430))
      @cars.add_car(Car.new(2,200, 400))
      @trips.add_trip(Trip.new(3,530))
      @cars.add_car(Car.new(4,20, 40))
      @roaster.add_pairs( @cars ,@trips)
      @roaster.journey
    end

    def test_to_s
      assert_equal( "Trip 1 is undertaken by Car 4\nTrip 3 is undertaken by Car 2\n",@roaster.to_s,'to_s returns incorrect string')
    end
    #testing whether it pairs correctly
    def test_pairs
      assert_equal("Trip 1 is undertaken by Car 4\nTrip 3 is undertaken by Car 2\n", @roaster.to_s,' returns wrong pair of trips')
    end

  end
