module Car_Program
  def self.add_inventory
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

    #pass the car back to the place the method got called from
    car
  end

  def self.input(database)

    input = gets.chomp
    puts '************************************'

    if input == '1'

      database.cars.each do |car|
        puts car
      end

      puts '************************************'
      self.menu_help
      self.input(database)

    elsif input == '2'

      database.add_car(Car_Program.add_inventory)

      puts '************************************'
      puts 'Thanks for your new car information'
      puts '************************************'

      self.menu_help
      puts '************************************'
      self.input(database)

    elsif input == '9'

      self.menu_help
      puts '************************************'
      self.input(database)

    elsif input == '0'

      puts 'Goodbye'
      puts '************************************'

    else
      puts '************************************'
      puts "I'm sorry, I don't know that command, type 9 for help"
      puts '************************************'
      
      self.input(database)
    end
  end

  def self.menu_help
    puts 'What do you want to do?'
    puts 'Press 1 to see all the cars'
    puts 'Press 2 to add a car'
    puts 'Press 0 to exit'
    puts 'Press 9 for help'
  end
end
