require_relative 'randomizer'
require_relative 'car'

class CarDatabase
  attr_accessor :cars

  def initialize
    @cars = []
  end

  def add_car(car)
    puts car
    @cars.push(car)
  end

  def seed
    10.times do
      @cars.push(Randomizer.random_car)
    end
  end

  def search_by_year(min_year, max_year)
    @cars.select { |car| car.year >= min_year && car.year <= max_year }
  end
end
