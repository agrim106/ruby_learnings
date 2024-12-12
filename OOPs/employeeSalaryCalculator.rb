# Problem Statement 6: Employee Salary Calculation
# Create a class Employee with the following:
# name and salary as instance variables.
# A method display_details to show the name and salary of the employee.
# Create two subclasses Manager and Developer that inherit from Employee. The Manager class should have an additional method to give a bonus, while Developer should include a method to increase the salary by a certain percentage.
# Create objects of both subclasses, set salaries, and calculate the final salary with bonuses and increases.

class Employee
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def display_details
    puts "Name: #{@name}, Salary: #{@salary}"
  end
end
class Manager < Employee
  def give_bonus(bonus_amount)
    @salary += bonus_amount
  end
end
class Developer < Employee
  def increase_salary(percentage)
    @salary += @salary * percentage / 100.0
  end
end
# Create a Manager instance
manager = Manager.new("Manoj", 50000)
manager.display_details
manager.give_bonus(5000)
manager.display_details  # Should show updated salary

# Create a Developer instance
developer = Developer.new("Ranjit", 40000)
developer.display_details
developer.increase_salary(10)  # Increase salary by 10%
developer.display_details  # Should show updated salary
