# 7. Problem Statement: Write a Ruby program that attempts to connect to a server by simulating a method connect_to_server.
# If the connection fails (simulate failure with a RuntimeError), 
# the program should retry the connection up to 3 times before giving up.
$counter = 0

class DatabaseConnectionError < StandardError
  def initialize(msg = "Connection failed to database. Please try again")
    super(msg)
  end
end

def connect_to_server
  begin
    rand = Random.new
    number = rand(0..1)
    if number == 1
      puts "Successfully connected to server."
    else
      $counter += 1
      raise DatabaseConnectionError
    end
  rescue DatabaseConnectionError => e
    if $counter <= 3
      puts "#{e.message} (Attempt #{$counter})"
      retry
    else
      puts "Failed to connect after three attempts. Exiting"
    end
  end
end

connect_to_server