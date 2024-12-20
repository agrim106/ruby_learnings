#Another question on linear search. 
array = [12,24,36,48,60,72,84,96,108,120]
def searching(arr , targett)
  arr.each_with_index  do |element , index|
    return index  if element == targett
  end 
   -1 #If the target is not found
end 
puts searching(array , 48) 