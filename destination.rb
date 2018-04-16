class Destination

  ALL = []

  attr_reader :location

  def initialize(location)
    @location = location
  end

  def self.all
    ALL
  end

  def flights
    the_flights = []
    Flight.all.each do |flight|
      if flight.destination == self
        the_flights << flight
      end
    end
    the_flights
  end

  def airlines
    flights.map do |flight|
      if flight.destination == self
        flight.airline.name
      end
    end.uniq
  end

end
