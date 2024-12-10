#Write a Ruby program to process an array of names. 
#If a specific name (e.g., "exit") is found, 
#immediately stop the processing using throw and print a message indicating the name was found.
names = gets.split
inputName = gets.chomp

catch(:name_found) do
  names.each.with_index do |name ,index|
    if name == inputName
      puts "Name found at position #{index+1}"
      throw(:name_found)
    end
  end
end
