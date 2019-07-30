class Car
  attr_accessor :make, :model, :year, :color, :price

  def to_s
    "#{@year} #{@color} #{@make} #{@model} on sale for #{@price}"
  end
end

# Make a class to represent your data
