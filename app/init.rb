require_relative 'fuel_calculator'

puts FuelCalculator.calculate(planet: 'Earth', mass: 10000)
puts FuelCalculator.calculate(planet: 'Moon', mass: 10000)
puts FuelCalculator.calculate(planet: 'Mars', mass: 10000)
