# Problem 10: Online Store Using OOP Principles
# Base class: Product (Encapsulation)
class Product
  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  # Accessors (getter methods)
  def name
    @name
  end

  def price
    @price
  end

  def quantity
    @quantity
  end

  # Method to calculate total price based on quantity
  def total_price
    @price * @quantity
  end

  # Placeholder for discount method (to be overridden by subclasses)
  def discount
    0
  end
end

# Subclass: ElectronicProduct (Inheritance)
class ElectronicProduct < Product
  def initialize(name, price, quantity, warranty_period)
    super(name, price, quantity) # Call the parent class's constructor
    @warranty_period = warranty_period
  end

  # Override discount method (Polymorphism)
  def discount
    total_price * 0.10
  end
end

# Subclass: ClothingProduct (Inheritance)
class ClothingProduct < Product
  def initialize(name, price, quantity, size)
    super(name, price, quantity)
    @size = size
  end

  # Override discount method (Polymorphism)
  def discount
    total_price * 0.05
  end
end

# Create an array of mixed products
store = [
  ElectronicProduct.new("Laptop", 50000, 1, "2 years"),
  ClothingProduct.new("T-Shirt", 500, 3, "M"),
  ElectronicProduct.new("Smartphone", 30000, 2, "1 year"),
  ClothingProduct.new("Jeans", 1500, 2, "L")
]

# Display details and apply discounts
store.each do |product|
  puts "Product: #{product.name}, Total Price: #{product.total_price}, Discount: #{product.discount}, Price After Discount: #{product.total_price - product.discount}"
  
end
