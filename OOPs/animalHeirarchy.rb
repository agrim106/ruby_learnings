# 3. Inheritance
# Problem Statement 5: Animal Hierarchy
# Create a base class Animal with a method make_sound. Then:
# Create two subclasses Dog and Cat, where Dog implements make_sound as "Woof" and Cat implements make_sound as "Meow".
# Write a method describe_animal in the base class that outputs a description of the animal (i.e., the animal's type and sound).
# Instantiate objects of Dog and Cat, and call their describe_animal method.

class Animal
  def make_sound
    raise NotImplementedError, "Subclasses must implement the make_sound method"
  end

  def describe_animal
    puts "I am a #{self.class} and I #{make_sound}"
  end
end
class Dog < Animal
  def make_sound
    "Woof"
  end
end
class Cat < Animal
  def make_sound
    "Meow"
  end
end
# Create a Dog instance and call describe_animal
dog = Dog.new
dog.describe_animal  # Output: I am a Dog and I Woof

# Create a Cat instance and call describe_animal
cat = Cat.new
cat.describe_animal  # Output: I am a Cat and I Meow
