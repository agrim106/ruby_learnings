# Problem 9: Library System Using Encapsulation, Inheritance, and Polymorphism

# Base class: Book (Encapsulation)
class Book
  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
  end

  # Accessors (getter methods) to access private attributes
  def title
    @title
  end

  def author
    @author
  end

  def genre
    @genre
  end

  # Method to display book details
  def display_details
    "Title: #{@title}, Author: #{@authort}, Genre: #{@genre}"
  end
end

# Subclass: EBook (Inheritance)
class EBook < Book
  # Method to simulate downloading an e-book
  def download
    "Downloading eBook: #{@title} by #{@author}..."
  end

  # Overriding display_details method (Polymorphism)
  def display_details
    "[EBook] Title: #{@title}, Author: #{@author}, Genre: #{@genre}"
  end
end

# Subclass: PhysicalBook (Inheritance)
class PhysicalBook < Book
  # Method to simulate checking out a physical book
  def checkout
    "Checking out Physical Book: #{@title}..."
  end

  # Overriding display_details method (Polymorphism)
  def display_details
    "[Physical Book] Title: #{@title}, Author: #{@author}, Genre: #{@genre}"
  end
end

# Create an array of mixed EBook and PhysicalBook objects
library = [
  EBook.new("Digital Fortress", "Dan Brown", "Thriller"),
  PhysicalBook.new("The Catcher in the Rye", "J.D. Salinger", "Fiction"),
  EBook.new("Sapiens", "Yuval Noah Harari", "Non-Fiction"),
  PhysicalBook.new("1984", "George Orwell", "Dystopian")
]

# Display details for each book with different behaviors
library.each do |book|
  puts book.display_details
  puts book.is_a?(EBook) ? book.download : book.checkout
  puts "---"
end



 
  
