class Airline

  ALL = []

  attr_reader :name, :hq

  def initialize(name, hq)
    @name = name
    @hq = hq
    ALL << self
  end

  def self.all
    ALL
  end

  def flights
    Flight.all.select do |flight|
      flight.airline == self
    end
  end

  def destinations
    flights.map do |flight|
      flight.destination.location
    end
  end

  def clear_for_takeoff(number, destination)
    Flight.new(number, self, destination)
  end

  def self.all_aboard
    Airline.all.each do |airline|
      puts "Thank you for choosing #{airline.name}! Promising a safe flight from our Headquarters in #{airline.hq}."
    end
  end

end
