# 3. Write a Ruby program that prompts the user to input a valid integer between 1 and 10. 
# If the user inputs an invalid number, use the redo statement to make them retry entering the value.
loop do
  print "Enter a number between 1 and 10 : "
  number = gets.to_i
  if number < 1 || number > 10
    puts "Invalid number!"
    redo
  else
    puts "Number is : #{number}"
    break
  end
end
