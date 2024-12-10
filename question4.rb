print "Enter the dividend :- "
dividend = gets.to_i
begin
  print "Enter the divisor :- "
  divisor = gets.to_i
  result = dividend/divisor
rescue ZeroDivisionError => e
  puts "Divisor cannot be zero! Try Again."
  retry
else
  puts "The result is :- #{result}"
end