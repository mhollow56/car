require_relative 'car'
require_relative 'Car_Program_module'
require_relative 'Car_Database'

# adding data from user input

# get a reference to your data storage

database = Car_Database.new
database.seed

puts 'Welcome to the Cars App of Greatness'
puts '************************************'


Car_Program.menu_help
Car_Program.input(database)
