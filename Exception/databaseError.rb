class ConnectionError < StandardError
  def initialize(msg = "Database connection failure!")
    super(msg)
  end
end

class DataBaseError < StandardError
  def initialize(msg = "Database query failure!")
    super(msg)
  end
end

def databaseConnectionStatus(status)
  begin
    if status == 0
      raise ConnectionError
    else
      puts "Connected to database successfully!"
    end
    print "Enter your database query :-"
    query = gets.chomp
    if query.downcase != "select" && query.downcase != "insert" && query.downcase != "delete"
      raise DataBaseError
    else
      puts "Database query executed successfully"
    end
  rescue ConnectionError => e
    puts "Connection error occured!"
    raise DataBaseError, "Database query failure after connection error", e
  end
end

begin
  rng = Random.new
  status = rng.rand(0..1)
  databaseConnectionStatus(status)
rescue => e
  puts "Error :- #{e.message}"
  if e.cause
    puts "Caused by :- #{e.cause.class} : #{e.cause.message}"
  end
end