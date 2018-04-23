  require 'test/unit'
  require_relative 'trip'
  class UnitTest < Test::Unit::TestCase


    def setup
      @trip=Trip.new(1,4)
    end

    def test_to_s
      assert_equal("1 4",@trip.to_s,'to_s returns incorrect string')
    end

  end
