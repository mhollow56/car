require_relative 'car'
require_relative 'Car_Database'

# adding data from user input

# get a reference to your data storage
database = Car_Database.new

3.times do


  # making a reference to what your data looks like
  car = Car.new


  # putting your data directly onto the data class
  puts 'What is your car make?'
  car.make = gets.chomp

  puts 'What is your car model?'
  car.model = gets.chomp

  puts 'What is your car year?'
  car.year = gets.chomp

  puts 'What is your car color?'
  car.color = gets.chomp

  #give your data storage the data you have collected
  database.add_car(car)

end
