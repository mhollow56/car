class Car
  attr_accessor :make, :model, :year, :color

  def initialize

  end

  def to_s
    "#{@year} #{@color} #{@make} #{@model}"
  end
end


# Make a class to represent your data
