class FuelCalculator
  def self.calculate(mass:, planet:)
    new(mass, planet).calculate
  end

  def calculate
    launch_fuel + landing_fuel
  end

  private

  PLANET_GRAVITIES = {
    'Earth' => 9.807,
    'Moon' =>  1.62,
    'Mars' =>  3.711
  }

  attr_reader :mass, :planet

  def initialize(mass, planet)
    @mass = mass
    @planet = planet
  end

  def launch_fuel
    (mass * gravity * 0.042 - 33).floor
  end

  def landing_fuel
    (mass * gravity * 0.033 - 42).floor
  end

  def gravity
    PLANET_GRAVITIES[planet]
  end
end
