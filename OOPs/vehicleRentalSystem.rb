# Problem Statement 4: Vehicle Rental System
# Design an abstract class Vehicle with the following:
# An abstract method calculate_rent to compute the rental cost.
# Two subclasses Car and Bike that implement the calculate_rent method. For example, Car charges $20/day, and Bike charges $10/day.
# Create instances of both subclasses and calculate their rental charges based on the number of days.

class Vehicle
  def calculate_rent(days)
    raise NotImplementedError, "Subclasses must implement the calculate_rent method"
  end
end
class Car < Vehicle
  def calculate_rent(days)
    days * 20
  end
end
class Bike < Vehicle
  def calculate_rent(days)
    days * 10
  end
end
# Create a Car instance and calculate rental charges for 5 days
car = Car.new
puts "Car rental for 5 days: $#{car.calculate_rent(5)}"

# Create a Car instance and calculate rental charges for 5 days
car = Car.new
puts "Car rental for 5 days: $#{car.calculate_rent(5)}"

# Create a Bike instance and calculate rental charges for 3 days
bike = Bike.new
puts "Bike rental for 3 days: $#{bike.calculate_rent(3)}"
