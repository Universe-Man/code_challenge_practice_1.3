require 'pry'
require_relative './airline.rb'
require_relative './flight.rb'
require_relative './destination.rb'

delta = Airline.new("Delta", "New York")
aa = Airline.new("American Airlines", "Chicago")
ua = Airline.new("United Airlines", "Atlanta")
jb = Airline.new("Jet Blue", "New York")
virgin = Airline.new("Virgin Atlantic", "London")

nyc = Destination.new("New York")
chi = Destination.new("Chicago")
atl = Destination.new("Atlanta")
lon = Destination.new("London")
rm = Destination.new("Rome")
tko = Destination.new("Tokyo")
prs = Destination.new("Paris")
la = Destination.new("Los Angeles")
sol = Destination.new("Seoul")
bln = Destination.new("Berlin")

f1 = Flight.new("A228" , delta, bln)
f2 = Flight.new("2356", delta, la)
f3 = Flight.new("9677", aa, prs)
f4 = Flight.new("EF448", aa, tko)
f5 = Flight.new("A332", aa, rm)
f6 = Flight.new("NP909", ua, lon)
f7 = Flight.new("6675", ua, atl)
f8 = Flight.new("7834", jb, chi)
f9 = Flight.new("A549", jb, nyc)
f10 = Flight.new("A511", virgin, lon)

binding.pry

hi = "hello"
