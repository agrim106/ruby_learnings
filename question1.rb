
array = [ 10,12,15,13,49,5,6,7,8,9,10]
array.each do |numbers| 
  if numbers % 7 == 0 then
    break 
  end
  puts numbers
end
