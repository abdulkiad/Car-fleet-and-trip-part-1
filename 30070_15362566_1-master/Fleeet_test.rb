    require 'test/unit'
    require_relative'car'
    require_relative'Fleet'

    class UnitTest < Test::Unit::TestCase
      def setup
        @fleet= Fleet.new
        @fleet.add_car(Car.new(1,200, 400)) #adding
        @fleet.add_car(Car.new(2,300, 400)) #adding
        @fleet.add_car(Car.new(3,200, 500)) #adding
      end

      def test_to_s
        assert_equal("1 200 400\n2 300 400\n3 200 500", @fleet.to_s,'to_s returns incorrect string')
      end

      def test_To_range_sort
      @fleet.sort!
      assert_equal("1 200 400\n3 200 500\n2 300 400", @fleet.to_s,'to_s returns incorrect string')
      end


    end