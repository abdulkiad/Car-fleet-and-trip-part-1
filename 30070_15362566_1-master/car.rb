    class Car

      attr_reader :car_id,:litres_in_tank, :km_per_litre

      def initialize(car_id,litres_in_tank,km_per_litre)
        @car_id= car_id
        @litres_in_tank= litres_in_tank
        @km_per_litre= km_per_litre

      end
      #getting the range
      def to_range
         @km_per_litre*@litres_in_tank

      end

      def to_s
        "#{@car_id} #{@litres_in_tank} #{@km_per_litre}"
      end

    end