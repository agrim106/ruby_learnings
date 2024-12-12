# Problem Statement 8: Shape Area Calculation Using Polymorphism
# Given the following classes:
# A base class Shape with an abstract method area.
# Two subclasses: Square (with side length) and Triangle (with base and height).
# Both subclasses implement the area method to calculate the respective areas.
# Create an array of different shapes (e.g., squares and triangles) and 
#use polymorphism to calculate and display the area of each shape without knowing its exact type.

class Shape
  def area
    raise NotImplementedError, "Area is abstract not calculable."
  end
  def display_details
    puts "Area of #{self.class},  is : #{area}"
  end
end
class Square < Shape
  def initialize(side_length)
  @side_length = side_length
  end 
  def area
    area_ofSquare = @side_length * @side_length
    return area_ofSquare
  end
end

class Triangle < Shape
  def initialize(base,length)
    @base = base
    @length = length
  end
  def area
    areastri = (@base*@length)/2
    return areastri
end
end
square = Square.new(5)
triangle = Triangle.new(2,4)
Shapes = [square,triangle]
Shapes.each{|shpe| shpe.display_details }




  