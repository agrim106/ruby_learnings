# Problem Statement: Write a Ruby program with two methods: fetch_data and process_data. 
# Simulate an exception in fetch_data and let the exception propagate to process_data.
# Handle the exception in process_data and display a meaningful error message.


def fetch_data(status)
  if status == 0
    raise "Data fetch failed!"
  else
    puts "Data fetch successful!"
  end
end

def process_data
  begin
    rng = Random.new
    status = rng.rand(0..1) 
    fetch_data(status)
  rescue => e
    puts "Error :- #{e.message}. Please try again."
  end
end

process_data