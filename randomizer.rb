require_relative 'car'

module Randomizer


  def self.random_car
    car = Car.new
    car.make = random_make
    car.model = random_model
    car.year = random_year
    car.color = random_color
    car.price = random_price
    car
  end

  def self.random_make
    %w[Ford Chevrolet Toyota Tesla Dodge Honda].sample
  end

  def self.random_model
    %w[Mustang Cruze Corolla Roadster Ram Odyssey].sample
  end

  def self.random_year
    rand(1989..2019)
  end

  def self.random_color
    %w[Red Blue Yellow White Black Gray].sample
  end
  
  def self.random_price
    rand(5000..45000)
  end
end
