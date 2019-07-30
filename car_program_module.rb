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

    # pass the car back to the place the method got called from
    car
  end



  def self.input(database)
    input = gets.chomp
    puts '************************************'
    if input == '1'
      input_one(database)
    elsif input == '2'
      input_two(database)
    elsif input == '3'
      input_three(database)
    elsif input == '9'
      reset_input(database)
    elsif input == '0'
      puts 'Goodbye'
      puts '************************************'
    else
      unknown_command
      self.input(database)
    end
  end

  def self.menu_help
    puts '************************************'
    puts 'What do you want to do?'
    puts 'Press 1 to see all the cars'
    puts 'Press 2 to add a car'
    puts 'Press 3 to search for a car'
    puts 'Press 0 to exit'
    puts 'Press 9 for help'
    puts '************************************'
  end

  private

  def self.input_one(database)
    database.cars.each do |car|
      puts car
    end

    reset_input(database)
  end

  def self.input_two(database)
    database.add_car(Car_Program.add_inventory)
    puts '************************************'
    puts 'Thanks for your new car information'
    reset_input(database)
  end

  def self.input_three(database)
    puts 'Searching by year.....'
    puts 'What is the earliest year vehicle you want to search for?'
    min_year = gets.chomp.to_i
    puts 'What is the newest year vehicle you want to search for?'
    max_year = gets.chomp.to_i
    puts 'Here are your results.......'
    cars_by_year = database.search_by_year(min_year, max_year)
    cars_by_year.each { |car| puts car}
    reset_input(database)
  end

  def self.unknown_command
    puts '************************************'
    puts "I'm sorry, I don't know that command, type 9 for help"
    puts '************************************'
  end

  def self.reset_input(database)
    menu_help

    input(database)
  end
end
