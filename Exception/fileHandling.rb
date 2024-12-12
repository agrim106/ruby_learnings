begin
  file = File.open("Exception/test.txt","w")
  file.puts("My name is Agrim")
  content = file.read
rescue StandardError => e
  puts "Some error occured!#{e.message}"
ensure
  file.close if file
  puts "File closed successfully"
end