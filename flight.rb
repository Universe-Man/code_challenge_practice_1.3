class Flight

  ALL = []

  attr_reader :number, :airline, :destination

  def initialize(number, airline, destination)
    @number = number
    @airline = airline
    @destination = destination
    ALL << self
  end

  def self.all
    ALL
  end

end
