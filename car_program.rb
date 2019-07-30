require_relative 'car'
require_relative 'Car_Program_module'
require_relative 'Car_Database'



# get a reference to your data storage
database = CarDatabase.new
database.seed

puts 'Welcome to the Cars App of Greatness'

Car_Program.reset_input(database)
