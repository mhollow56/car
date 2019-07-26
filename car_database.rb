class Car_Database
  attr_accessor :cars

  def initialize
    @cars = []
  end

  def add_car(car)
    @cars.push(car)
    puts @cars
  end
end

# add a class to manage the grouping and storing of your data. 
