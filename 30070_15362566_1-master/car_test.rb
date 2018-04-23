  require 'test/unit'
  require_relative 'Car'

  class UnitTest < Test::Unit::TestCase




      def setup
        @my_car=Car.new(1,2,6)
      end

      def test_range
        assert_equal(12,@my_car.to_range,'to_range returns incorrect range')
      end

      def test_to_s
        assert_equal("1 2 6",@my_car.to_s,'to_s returns incorrect string')

      end


    end