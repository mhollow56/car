require_relative 'Randomizer'
require_relative 'car'

class Car_Database
  attr_accessor :cars

  def initialize
    @cars = Array.new
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
end

# add a class to manage the grouping and storing of your data.
