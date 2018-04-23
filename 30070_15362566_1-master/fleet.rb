      require_relative 'Car.rb'
      class Fleet

        attr_reader :num_cars

       def initialize
        @num_cars=[] #array of cars
       end

       def add_car(car)
         @num_cars.push(car)
       end
          #sorting the cars in accordence to the range of each car
        def sort!
          @num_cars.sort!{|p1, p2| p1.to_range <=> p2.to_range}
        end
        def to_s
          str = ''
          @num_cars.each_with_index do |product, i|
            str += product.to_s
            if i < @num_cars.length-1 #      add newline between items
              str += "\n"
            end
          end
          return str
        end

      end