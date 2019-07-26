class Car
  attr_accessor :make, :model, :year, :color

  def initialize

  end

  def to_s
    "#{@year} #{@make} #{@model} #{@color}"
  end
end


# Make a class to represent your data
