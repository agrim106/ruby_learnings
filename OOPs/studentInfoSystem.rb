# Problem Statement 2: Student Information System
# Design a class Student that stores the name, age, and grades of a student. Implement the following:
# Use attr_accessor for name and age, and attr_reader for grades (making it read-only).
# The class should have a method add_grade(grade) that adds a grade to the student's grades array.
# Write a method calculate_average to return the average grade of the student.
# Ensure that the grades variable is encapsulated properly, and students can only add grades through the add_grade method.

class Student 
  attr_accessor :name, :age
  attr_reader :grades
  def initialize(names, age)
    @name = name
    @age = age
    @grades = []
  end
  #Method to add grades for a student.
  def add_grade(grade)
    @grades << grade
  end
  #Now calculate average grades.
  def calculate_average
    return 0 if grades.empty?
    @grades.sum.to_f / @grades.size
  end
end

#Now to use them
student = Student.new("Agrim", 21)
student.add_grade(85)
student.add_grade(90)
student.add_grade(70)
puts "The Students Average grade is : #{student.calculate_average}"