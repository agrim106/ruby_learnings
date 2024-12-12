# 2. Abstraction
# Problem Statement 3: Shape Hierarchy
# Create an abstract base class Shape with the following characteristics:
# A method area (abstract) that must be implemented by any subclass.
# Define two subclasses Circle and Rectangle. The Circle class should calculate its area using the formula πr^2, and the Rectangle class should calculate its area using width * height.
# Create an instance of each subclass and calculate and display their areas.

class Shape
  def area 
    raise NotImplementedError, "Subclasses must Implement the area method."
  end
end

class Circle < Shape
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius**2
  end
end

class Rectangle < Shape
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    @width * @height
  end
end
# Create a Circle instance with a radius of 5
circle = Circle.new(5)
puts "Area of the circle: #{circle.area}"

# Create a Rectangle instance with width 4 and height 6
rectangle = Rectangle.new(4, 6)
puts "Area of the rectangle: #{rectangle.area}"
