  class Trip

    attr_reader :trip_id,:trip_distance

    def initialize(id ,distance)
      @trip_id = id
      @trip_distance= distance
    end
    def to_s
      "#{@trip_id} #{@trip_distance}"
    end

  end