# Write a method linear_search to find the first occurrence of a target number in a list of numbers.
# If the target is found, return its index. If it is not found, return -1.
arrays = [5,10,15,20,25,30,35,40]
def linear_search(arr , target) 
  arr.each_with_index do |element , index| 
    return index if element == target
  end 
  -1 #if target not found 
end 
puts linear_search(arrays , 40)