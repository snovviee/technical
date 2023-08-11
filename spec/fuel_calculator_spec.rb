require_relative '../app/fuel_calculator'

RSpec.describe FuelCalculator do
  describe '.calculate' do
    it 'calculates fuel for launch and landing on Earth' do
      expect(FuelCalculator.calculate(mass: 5555, planet: 'Earth')).to eq(4010)
    end

    it 'calculates fuel for launch and landing on Moon' do
      expect(FuelCalculator.calculate(mass: 6666, planet: 'Moon')).to eq(734)
    end

    it 'calculates fuel for launch and landing on Mars' do
      expect(FuelCalculator.calculate(mass: 7777, planet: 'Mars')).to eq(2089)
    end

    it 'calculates fuel for launch and landing on Earth with low mass' do
      # Is formula correct ?
      expect(FuelCalculator.calculate(mass: 100, planet: 'Earth')).to eq(-2)
    end
  end
end
