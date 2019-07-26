require_relative 'car'

module Randomizer


  def self.random_car
    car = Car.new
    car.make = self.random_make
    car.model = self.random_model
    car.year = self.random_year
    car.color = self.random_color
    car
  end

  def self.random_make
    ['Ford', 'Chevrolet', 'Toyota', 'Tesla', 'Dodge', 'Honda'].sample
  end

  def self.random_model
    ['Mustang', 'Cruze', 'Corolla', 'Roadster', 'Ram', 'Odyssey'].sample
  end

  def self.random_year
    rand(1989..2019).to_s
  end

  def self.random_color
    ['Red', 'Blue', 'Yellow', 'White', 'Black', 'Gray'].sample
  end
end

Randomizer.random_car
