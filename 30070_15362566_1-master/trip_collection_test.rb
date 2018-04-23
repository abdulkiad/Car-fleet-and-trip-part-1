require 'test/unit'
require 'test/unit'
require_relative'trip'
require_relative 'trip_collection'


class UnitTest < Test::Unit::TestCase

    def setup
      @trips= TripCollection.new
      @trips.add_trip(Trip.new(1,430)) #adding
      @trips.add_trip(Trip.new(2,230)) #adding
      @trips.add_trip(Trip.new(3,130)) #adding
    end

    def test_to_s
      assert_equal("1 430\n2 230\n3 130", @trips.to_s,'to_s returns incorrect string')
    end

    def test_sort
      @trips.sort!
      assert_equal("3 130\n2 230\n1 430", @trips.to_s,'to_sort returns incorrect sorted list')

    end


  end
